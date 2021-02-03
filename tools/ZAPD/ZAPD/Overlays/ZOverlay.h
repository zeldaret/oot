#pragma once

#include "../ZResource.h"
#include <tinyxml2.h>
#include <elfio/elfio.hpp>

enum SectionType
{
	Text = 1,
	Data = 2,
	RoData = 3,
	Bss = 4,
	ERROR = 255
};

enum RelocationType
{
	R_MIPS_32 = 2,
	R_MIPS_26 = 4,
	R_MIPS_HI16 = 5,
	R_MIPS_LO16 = 6,
};

class RelocationEntry
{
public:
	SectionType sectionType;
	RelocationType relocationType;
	int32_t offset;

	RelocationEntry(SectionType nSecType, RelocationType nRelType, int32_t nOffset)
	{
		sectionType = nSecType;
		relocationType = nRelType;
		offset = nOffset;
	}

	uint32_t CalcRelocationWord()
	{
		uint32_t relocationWord = 0;

		relocationWord |= sectionType << 30;
		relocationWord |= relocationType << 24;
		relocationWord |= offset;

		return relocationWord;
	}
};

class ZOverlay : public ZResource
{
public:
	std::string name;

	ZOverlay(std::string nName);
	~ZOverlay();
	static ZOverlay* FromBuild(std::string buildPath, std::string cfgFolderPath);
	std::string GetSourceOutputCode(const std::string& prefix) override;
	ZResourceType GetResourceType() override;

private:
	std::vector<RelocationEntry*> entries;

	ZOverlay();

	static SectionType GetSectionTypeFromStr(std::string sectionName);
	//static std::string GetOverlayNameFromElf(ELFIO::elfio& reader);
};
