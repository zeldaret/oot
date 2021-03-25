#include "ZVtx.h"
#include "BitConverter.h"
#include "StringHelper.h"
#include "ZFile.h"

ZVtx::ZVtx()
{
	x = 0;
	y = 0;
	z = 0;
	flag = 0;
	s = 0;
	t = 0;
	r = 0;
	g = 0;
	b = 0;
	a = 0;
}

void ZVtx::ParseXML(tinyxml2::XMLElement* reader)
{
}

std::string ZVtx::GetSourceTypeName()
{
	return "Vtx";
}

std::string ZVtx::GetSourceOutputCode(const std::string& prefix)
{
	std::string output =
		StringHelper::Sprintf("VTX(%i, %i, %i, %i, %i, %i, %i, %i, %i)", x, y, z, s, t, r, g, b, a);

	if (parent != nullptr)
		parent->AddDeclaration(rawDataIndex, DeclarationAlignment::Align16, GetRawDataSize(),
		                       GetSourceTypeName(), name, output);

	return "";
}

void ZVtx::ParseRawData()
{
	const uint8_t* data = rawData.data();

	x = BitConverter::ToInt16BE(data, rawDataIndex + 0);
	y = BitConverter::ToInt16BE(data, rawDataIndex + 2);
	z = BitConverter::ToInt16BE(data, rawDataIndex + 4);
	flag = BitConverter::ToInt16BE(data, rawDataIndex + 6);
	s = BitConverter::ToInt16BE(data, rawDataIndex + 8);
	t = BitConverter::ToInt16BE(data, rawDataIndex + 10);
	r = data[rawDataIndex + 12];
	g = data[rawDataIndex + 13];
	b = data[rawDataIndex + 14];
	a = data[rawDataIndex + 15];
}

int ZVtx::GetRawDataSize()
{
	return 16;
}

bool ZVtx::DoesSupportArray()
{
	return true;
}

ZResourceType ZVtx::GetResourceType()
{
	return ZResourceType::Vertex;
}

ZVtx* ZVtx::ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
                           const int rawDataIndex, const std::string& nRelPath)
{
	ZVtx* vtx = new ZVtx();
	vtx->rawData = nRawData;
	vtx->rawDataIndex = rawDataIndex;
	vtx->ParseRawData();

	return vtx;
}
