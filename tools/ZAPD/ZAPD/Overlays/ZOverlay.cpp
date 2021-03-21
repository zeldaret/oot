#include "ZOverlay.h"
#include "../Directory.h"
#include "../File.h"
#include "../Path.h"
#include "../StringHelper.h"

using namespace std;
using namespace ELFIO;

ZOverlay::ZOverlay()
{
	name = "";
	entries = vector<RelocationEntry*>();
}

ZOverlay::ZOverlay(string nName) : ZOverlay()
{
	name = nName;
}

ZOverlay::~ZOverlay()
{
	for (auto entry : entries)
		if (entry)
			delete entry;
	entries.clear();
}

ZOverlay* ZOverlay::FromBuild(string buildPath, string cfgFolderPath)
{
	string cfgText = File::ReadAllText(cfgFolderPath + "/overlay.cfg");
	vector<string> cfgLines = StringHelper::Split(cfgText, "\n");

	ZOverlay* ovl = new ZOverlay(StringHelper::Strip(cfgLines[0], "\r"));

	vector<string> relSections = {".rel.text", ".rel.data", ".rel.rodata"};
	vector<string> sections = {".text", ".data", ".rodata"};

	int sectionOffs[5] = {0};
	vector<RelocationEntry*> textRelocs;
	vector<RelocationEntry*> dataRelocs;
	vector<RelocationEntry*> rodataRelocs;

	// get the elf files
	vector<elfio*> readers;
	for (size_t i = 1; i < cfgLines.size(); i++)
	{
		string elfPath = buildPath + "/" + cfgLines[i].substr(0, cfgLines[i].size() - 2) + ".o";
		elfio* reader = new elfio();

		if (!reader->load(elfPath))
		{
			// not all files were compiled
			for (auto r : readers)
				delete r;
			readers.clear();

			delete ovl;
			return nullptr;
		}

		readers.push_back(reader);
	}

	for (auto curReader : readers)
	{
		Elf_Half sec_num = curReader->sections.size();
		for (int i = 0; i < sec_num; i++)
		{
			section* pSec = curReader->sections[i];

			if (pSec->get_type() == SHT_REL && std::find(relSections.begin(), relSections.end(),
			                                             pSec->get_name()) != relSections.end())
			{
				SectionType sectionType = GetSectionTypeFromStr(pSec->get_name());

				if (sectionType == SectionType::ERROR)
					printf("WARNING: One of the section types returned ERROR\n");

				relocation_section_accessor relocs(*curReader, pSec);
				for (Elf_Xword j = 0; j < relocs.get_entries_num(); j++)
				{
					Elf64_Addr offset;
					Elf_Word symbol;
					Elf_Word type;
					{
						Elf_Sxword addend;
						relocs.get_entry(j, offset, symbol, type, addend);
					}

					string curSymName;
					Elf_Half curSymShndx = SHN_UNDEF;
					{
						symbol_section_accessor symbols(
							*curReader, curReader->sections[(Elf_Half)pSec->get_link()]);
						Elf64_Addr value;
						Elf_Xword size;
						unsigned char bind;
						unsigned char type;
						unsigned char other;
						symbols.get_symbol(symbol, curSymName, value, size, bind, type, curSymShndx,
						                   other);
					}

					// check symbols outside the elf but within the overlay
					if (curSymShndx == SHN_UNDEF)
					{
						for (auto reader : readers)
						{
							if (curSymShndx != SHN_UNDEF)
								break;

							if (reader == curReader)
								continue;

							auto sectionData = reader->sections[(Elf_Half)pSec->get_link()];

							if (sectionData == nullptr)
								continue;

							symbol_section_accessor symbols(*reader, sectionData);

							for (Elf_Xword symIdx = 0; symIdx < symbols.get_symbols_num(); symIdx++)
							{
								Elf_Half shndx = SHN_UNDEF;
								Elf64_Addr value;
								string name;
								Elf_Xword size;
								unsigned char bind;
								unsigned char type;
								unsigned char other;

								symbols.get_symbol(symIdx, name, value, size, bind, type, shndx,
								                   other);

								if (name == curSymName)
								{
									curSymShndx = shndx;
									break;
								}
							}
						}
					}

					if (curSymShndx != SHN_UNDEF)
					{
						RelocationType typeConverted = (RelocationType)type;
						offset += sectionOffs[sectionType];

						RelocationEntry* reloc =
							new RelocationEntry(sectionType, typeConverted, offset);

						// this is to keep the correct reloc entry order
						if (sectionType == SectionType::Text)
							textRelocs.push_back(reloc);
						if (sectionType == SectionType::Data)
							dataRelocs.push_back(reloc);
						if (sectionType == SectionType::RoData)
							rodataRelocs.push_back(reloc);
					}
				}
			}
		}

		// increase section offsets
		for (int i = 0; i < sec_num; i++)
		{
			section* pSec = curReader->sections[i];
			if (pSec->get_type() == SHT_PROGBITS &&
			    std::find(sections.begin(), sections.end(), pSec->get_name()) != sections.end())
			{
				SectionType sectionType = GetSectionTypeFromStr(pSec->get_name());
				sectionOffs[sectionType] += pSec->get_size();
			}
		}
	}

	for (auto reloc : textRelocs)
		ovl->entries.push_back(reloc);
	for (auto reloc : dataRelocs)
		ovl->entries.push_back(reloc);
	for (auto reloc : rodataRelocs)
		ovl->entries.push_back(reloc);

	for (auto r : readers)
		delete r;
	readers.clear();

	return ovl;
}

string ZOverlay::GetSourceOutputCode(const std::string& prefix)
{
	string output = "";

	output += ".section .ovl\n";

	output += StringHelper::Sprintf(".word _%sSegmentTextSize\n", name.c_str());
	output += StringHelper::Sprintf(".word _%sSegmentDataSize\n", name.c_str());
	output += StringHelper::Sprintf(".word _%sSegmentRoDataSize\n", name.c_str());
	output += StringHelper::Sprintf(".word _%sSegmentBssSize\n", name.c_str());

	output += StringHelper::Sprintf(".word %i\n", entries.size());

	for (size_t i = 0; i < entries.size(); i++)
	{
		RelocationEntry* reloc = entries[i];
		output += StringHelper::Sprintf(".word 0x%08X\n", reloc->CalcRelocationWord());
	}

	int offset = ((int)entries.size() * 4) + 20;

	while (offset % 16 != 12)
	{
		output += ".word 0\n";
		offset += 4;
	}

	output += StringHelper::Sprintf(".word 0x%08X\n", offset + 4);
	return output;
}

ZResourceType ZOverlay::GetResourceType()
{
	return ZResourceType::Overlay;
}

SectionType ZOverlay::GetSectionTypeFromStr(string sectionName)
{
	if (sectionName == ".rel.text" || sectionName == ".text")
		return SectionType::Text;
	else if (sectionName == ".rel.data" || sectionName == ".data")
		return SectionType::Data;
	else if (sectionName == ".rel.rodata" || sectionName == ".rodata" ||
	         sectionName == ".rodata.str1.4" || sectionName == ".rodata.cst4")
		return SectionType::RoData;
	else if (sectionName == ".rel.bss" || sectionName == ".bss")
		return SectionType::Bss;

	return SectionType::ERROR;
}
