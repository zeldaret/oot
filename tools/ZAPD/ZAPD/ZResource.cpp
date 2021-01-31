#include "ZResource.h"

using namespace std;

ZResource::ZResource()
{
	parent = nullptr;
	name = "";
	outName = "";
	relativePath = "";
	sourceOutput = "";
	rawData = vector<uint8_t>();
	rawDataIndex = 0;
	outputDeclaration = true;
}

void ZResource::ParseXML(tinyxml2::XMLElement* reader)
{
	if (reader->Attribute("Name") != nullptr)
		name = reader->Attribute("Name");
	else
		name = "";

	if (reader->Attribute("OutName") != nullptr)
		outName = reader->Attribute("OutName");
	else
		outName = name;
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
	return "";
}

ZResourceType ZResource::GetResourceType()
{
	return ZResourceType::Error;
}

void ZResource::CalcHash()
{
	hash = 0;
}
