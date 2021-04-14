#include "ZResource.h"

using namespace std;

ZResource::ZResource(ZFile* nParent)
{
	parent = nParent;
	name = "";
	outName = "";
	relativePath = "";
	sourceOutput = "";
	rawData = vector<uint8_t>();
	rawDataIndex = 0;
	outputDeclaration = true;
}

void ZResource::ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
                               const int nRawDataIndex, const std::string& nRelPath)
{
	rawData = nRawData;
	rawDataIndex = nRawDataIndex;
	relativePath = nRelPath;

	if (reader != nullptr)
		ParseXML(reader);

	ParseRawData();
}

void ZResource::ExtractFromFile()
{
}

void ZResource::ParseXML(tinyxml2::XMLElement* reader)
{
	if (reader != nullptr)
	{
		if (reader->Attribute("Name") != nullptr)
			name = reader->Attribute("Name");
		else
			name = "";

		if (reader->Attribute("OutName") != nullptr)
			outName = reader->Attribute("OutName");
		else
			outName = name;

		if (reader->Attribute("Custom") != nullptr)
			isCustomAsset = true;
		else
			isCustomAsset = false;
	}
}

void ZResource::Save(const std::string& outFolder)
{
}

void ZResource::PreGenSourceFiles()
{
}

string ZResource::GetName()
{
	return name;
}

std::string ZResource::GetOutName()
{
	return outName;
}

void ZResource::SetOutName(std::string nName)
{
	outName = nName;
}

void ZResource::SetName(string nName)
{
	name = std::move(nName);
}

bool ZResource::IsExternalResource()
{
	return false;
}

bool ZResource::DoesSupportArray()
{
	return false;
}

std::string ZResource::GetExternalExtension()
{
	return "";
}

string ZResource::GetRelativePath()
{
	return relativePath;
}

vector<uint8_t> ZResource::GetRawData()
{
	return rawData;
}

void ZResource::SetRawData(std::vector<uint8_t> nData)
{
	rawData = nData;
}

int ZResource::GetRawDataIndex()
{
	return rawDataIndex;
}

int ZResource::GetRawDataSize()
{
	return rawData.size();
}

void ZResource::SetRawDataIndex(int value)
{
	rawDataIndex = value;
}

string ZResource::GetSourceOutputCode(const std::string& prefix)
{
	return "";
}

string ZResource::GetSourceOutputHeader(const std::string& prefix)
{
	return "";
}

void ZResource::ParseRawData()
{
}

void ZResource::GenerateHLIntermediette(HLFileIntermediette& hlFile)
{
}

std::string ZResource::GetSourceTypeName()
{
	return "u8";
}

ZResourceType ZResource::GetResourceType()
{
	return ZResourceType::Error;
}

void ZResource::CalcHash()
{
	hash = 0;
}

uint32_t Seg2Filespace(segptr_t segmentedAddress, uint32_t parentBaseAddress)
{
	uint32_t currentPtr = GETSEGOFFSET(segmentedAddress);

	if (GETSEGNUM(segmentedAddress) == 0x80)  // Is defined in code?
		currentPtr -= GETSEGOFFSET(parentBaseAddress);

	return currentPtr;
}
