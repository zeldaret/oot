#include "Globals.h"

#include <algorithm>
#include <string_view>

#include "Utils/File.h"
#include "Utils/Path.h"
#include "WarningHandler.h"
#include "tinyxml2.h"

Globals* Globals::Instance;

Globals::Globals()
{
	Instance = this;

	game = ZGame::OOT_RETAIL;
	genSourceFile = true;
	testMode = false;
	profile = false;
	useLegacyZDList = false;
	useExternalResources = true;
	verbosity = VerbosityLevel::VERBOSITY_SILENT;
	outputPath = Directory::GetCurrentDirectory();
}

Globals::~Globals()
{
	auto& exporters = GetExporterMap();

	for (auto& it : exporters)
	{
		delete it.second;
	}
}

void Globals::AddSegment(int32_t segment, ZFile* file)
{
	if (std::find(segments.begin(), segments.end(), segment) == segments.end())
		segments.push_back(segment);
	if (cfg.segmentRefFiles.find(segment) == cfg.segmentRefFiles.end())
		cfg.segmentRefFiles[segment] = std::vector<ZFile*>();

	cfg.segmentRefFiles[segment].push_back(file);
}

bool Globals::HasSegment(int32_t segment)
{
	return std::find(segments.begin(), segments.end(), segment) != segments.end();
}

std::map<std::string, ExporterSet*>& Globals::GetExporterMap()
{
	static std::map<std::string, ExporterSet*> exporters;
	return exporters;
}

void Globals::AddExporter(std::string exporterName, ExporterSet* exporterSet)
{
	auto& exporters = GetExporterMap();
	exporters[exporterName] = exporterSet;
}

ZResourceExporter* Globals::GetExporter(ZResourceType resType)
{
	auto& exporters = GetExporterMap();

	if (currentExporter != "" && exporters[currentExporter]->exporters.find(resType) !=
	                                 exporters[currentExporter]->exporters.end())
		return exporters[currentExporter]->exporters[resType];
	else
		return nullptr;
}

ExporterSet* Globals::GetExporterSet()
{
	auto& exporters = GetExporterMap();

	if (currentExporter != "")
		return exporters[currentExporter];
	else
		return nullptr;
}

bool Globals::GetSegmentedPtrName(segptr_t segAddress, ZFile* currentFile,
                                  const std::string& expectedType, std::string& declName,
                                  bool warnIfNotFound)
{
	if (segAddress == SEGMENTED_NULL)
	{
		declName = "NULL";
		return true;
	}

	uint8_t segment = GETSEGNUM(segAddress);
	uint32_t offset = Seg2Filespace(segAddress, currentFile->baseAddress);
	ZSymbol* sym;

	sym = currentFile->GetSymbolResource(offset);
	if (sym != nullptr)
	{
		if (expectedType == "" || expectedType == sym->GetSourceTypeName())
		{
			declName = sym->GetName();
			return true;
		}
	}
	sym = currentFile->GetSymbolResource(segAddress);
	if (sym != nullptr)
	{
		if (expectedType == "" || expectedType == sym->GetSourceTypeName())
		{
			declName = sym->GetName();
			return true;
		}
	}

	if (currentFile->IsSegmentedInFilespaceRange(segAddress))
	{
		if (currentFile->GetDeclarationPtrName(segAddress, expectedType, declName))
			return true;
	}
	else if (HasSegment(segment))
	{
		for (auto file : cfg.segmentRefFiles[segment])
		{
			offset = Seg2Filespace(segAddress, file->baseAddress);

			sym = file->GetSymbolResource(offset);
			if (sym != nullptr)
			{
				if (expectedType == "" || expectedType == sym->GetSourceTypeName())
				{
					declName = sym->GetName();
					return true;
				}
			}
			sym = file->GetSymbolResource(segAddress);
			if (sym != nullptr)
			{
				if (expectedType == "" || expectedType == sym->GetSourceTypeName())
				{
					declName = sym->GetName();
					return true;
				}
			}

			if (file->IsSegmentedInFilespaceRange(segAddress))
			{
				if (file->GetDeclarationPtrName(segAddress, expectedType, declName))
					return true;
			}
		}
	}

	const auto& symbolFromMap = Globals::Instance->cfg.symbolMap.find(segAddress);
	if (symbolFromMap != Globals::Instance->cfg.symbolMap.end())
	{
		declName = "&" + symbolFromMap->second;
		return true;
	}

	declName = StringHelper::Sprintf("0x%08X", segAddress);
	if (warnIfNotFound)
	{
		WarnHardcodedPointer(segAddress, currentFile, nullptr, -1);
	}
	return false;
}

bool Globals::GetSegmentedArrayIndexedName(segptr_t segAddress, size_t elementSize,
                                           ZFile* currentFile, const std::string& expectedType,
                                           std::string& declName, bool warnIfNotFound)
{
	if (segAddress == SEGMENTED_NULL)
	{
		declName = "NULL";
		return true;
	}

	uint8_t segment = GETSEGNUM(segAddress);

	if (currentFile->IsSegmentedInFilespaceRange(segAddress))
	{
		bool addressFound = currentFile->GetDeclarationArrayIndexedName(segAddress, elementSize,
		                                                                expectedType, declName);
		if (addressFound)
			return true;
	}
	else if (HasSegment(segment))
	{
		for (auto file : cfg.segmentRefFiles[segment])
		{
			if (file->IsSegmentedInFilespaceRange(segAddress))
			{
				bool addressFound = file->GetDeclarationArrayIndexedName(segAddress, elementSize,
				                                                         expectedType, declName);
				if (addressFound)
					return true;
			}
		}
	}

	declName = StringHelper::Sprintf("0x%08X", segAddress);
	if (warnIfNotFound)
	{
		WarnHardcodedPointer(segAddress, currentFile, nullptr, -1);
	}
	return false;
}

void Globals::WarnHardcodedPointer(segptr_t segAddress, ZFile* currentFile, ZResource* res,
                                   offset_t currentOffset)
{
	uint8_t segment = GETSEGNUM(segAddress);

	if ((segment >= 2 && segment <= 6) || segment == 0x80)
	{
		std::string errorHeader = "A hardcoded pointer was found";
		std::string errorBody = StringHelper::Sprintf("Pointer: 0x%08X", segAddress);

		HANDLE_WARNING_RESOURCE(WarningType::HardcodedPointer, currentFile, res, currentOffset,
		                        errorHeader, errorBody);
	}
	else
	{
		std::string errorHeader = "A general purpose hardcoded pointer was found";
		std::string errorBody = StringHelper::Sprintf("Pointer: 0x%08X", segAddress);

		HANDLE_WARNING_RESOURCE(WarningType::HardcodedGenericPointer, currentFile, res,
		                        currentOffset, errorHeader, errorBody);
	}
}

ExternalFile::ExternalFile(fs::path nXmlPath, fs::path nOutPath)
	: xmlPath{nXmlPath}, outPath{nOutPath}
{
}

ExporterSet::~ExporterSet()
{
	for (auto& it : exporters)
	{
		delete it.second;
	}
}
