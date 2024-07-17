#include "ZWaterbox.h"

#include "Globals.h"
#include "Utils/BitConverter.h"
#include "Utils/StringHelper.h"

REGISTER_ZFILENODE(Waterbox, ZWaterbox);

ZWaterbox::ZWaterbox(ZFile* nParent) : ZResource(nParent)
{
}

ZWaterbox::~ZWaterbox()
{
}

void ZWaterbox::ParseRawData()
{
	const auto& rawData = parent->GetRawData();

	xMin = BitConverter::ToInt16BE(rawData, rawDataIndex + 0);
	ySurface = BitConverter::ToInt16BE(rawData, rawDataIndex + 2);
	zMin = BitConverter::ToInt16BE(rawData, rawDataIndex + 4);
	xLength = BitConverter::ToInt16BE(rawData, rawDataIndex + 6);
	zLength = BitConverter::ToInt16BE(rawData, rawDataIndex + 8);

	if (Globals::Instance->game == ZGame::OOT_SW97)
		properties = BitConverter::ToInt16BE(rawData, rawDataIndex + 10);
	else
		properties = BitConverter::ToInt32BE(rawData, rawDataIndex + 12);
}

void ZWaterbox::DeclareReferences(const std::string& prefix)
{
	std::string declaration;
	std::string auxName = name;

	if (name == "")
		auxName = GetDefaultName(prefix);

	parent->AddDeclaration(rawDataIndex, DeclarationAlignment::Align4, GetRawDataSize(),
	                       GetSourceTypeName(), name.c_str(), GetBodySourceCode());
}

std::string ZWaterbox::GetBodySourceCode() const
{
	return StringHelper::Sprintf("%i, %i, %i, %i, %i, 0x%08X", xMin, ySurface, zMin, xLength,
	                             zLength, properties);
}

std::string ZWaterbox::GetDefaultName(const std::string& prefix) const
{
	return StringHelper::Sprintf("%sWaterBoxes_%06X", prefix.c_str(), rawDataIndex);
}

ZResourceType ZWaterbox::GetResourceType() const
{
	return ZResourceType::Waterbox;
}

size_t ZWaterbox::GetRawDataSize() const
{
	return 16;
}

std::string ZWaterbox::GetSourceTypeName() const
{
	return "WaterBox";
}

bool ZWaterbox::DoesSupportArray() const
{
	return true;
}
