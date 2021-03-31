#include "ZCollision.h"
#include <stdint.h>
#include <string>
#include "BitConverter.h"
#include "Globals.h"
#include "StringHelper.h"

using namespace std;

ZCollisionHeader::ZCollisionHeader()
{
}

ZCollisionHeader::ZCollisionHeader(ZFile* parent, const std::string& prefix,
                                   const std::vector<uint8_t>& rawData, int rawDataIndex)
{
	const uint8_t* data = rawData.data();

	absMinX = BitConverter::ToInt16BE(data, rawDataIndex + 0);
	absMinY = BitConverter::ToInt16BE(data, rawDataIndex + 2);
	absMinZ = BitConverter::ToInt16BE(data, rawDataIndex + 4);

	absMaxX = BitConverter::ToInt16BE(data, rawDataIndex + 6);
	absMaxY = BitConverter::ToInt16BE(data, rawDataIndex + 8);
	absMaxZ = BitConverter::ToInt16BE(data, rawDataIndex + 10);

	numVerts = BitConverter::ToInt16BE(data, rawDataIndex + 12);
	vtxAddress = BitConverter::ToInt32BE(data, rawDataIndex + 16);

	numPolygons = BitConverter::ToInt16BE(data, rawDataIndex + 20);
	polyAddress = BitConverter::ToInt32BE(data, rawDataIndex + 24);
	polyTypeDefAddress = BitConverter::ToInt32BE(data, rawDataIndex + 28);
	camDataAddress = BitConverter::ToInt32BE(data, rawDataIndex + 32);

	numWaterBoxes = BitConverter::ToInt16BE(data, rawDataIndex + 36);
	waterBoxAddress = BitConverter::ToInt32BE(data, rawDataIndex + 40);

	uint32_t vtxSegmentOffset = Seg2Filespace(vtxAddress, parent->baseAddress);
	uint32_t polySegmentOffset = Seg2Filespace(polyAddress, parent->baseAddress);
	uint32_t polyTypeDefSegmentOffset = Seg2Filespace(polyTypeDefAddress, parent->baseAddress);
	uint32_t camDataSegmentOffset = Seg2Filespace(camDataAddress, parent->baseAddress);
	uint32_t waterBoxSegmentOffset = Seg2Filespace(waterBoxAddress, parent->baseAddress);

	// HOTSPOT
	for (uint16_t i = 0; i < numVerts; i++)
		vertices.push_back(new VertexEntry(rawData, vtxSegmentOffset + (i * 6)));

	// HOTSPOT
	for (uint16_t i = 0; i < numPolygons; i++)
		polygons.push_back(new PolygonEntry(rawData, polySegmentOffset + (i * 16)));

	uint16_t highestPolyType = 0;

	for (PolygonEntry* poly : polygons)
	{
		if (poly->type > highestPolyType)
			highestPolyType = poly->type;
	}

	// if (highestPolyType > 0)
	{
		for (uint16_t i = 0; i < highestPolyType + 1; i++)
			polygonTypes.push_back(
				BitConverter::ToUInt64BE(data, polyTypeDefSegmentOffset + (i * 8)));
	}
	// else
	//{
	// int polyTypesSize = abs(polyTypeDefSegmentOffset - camDataSegmentOffset) / 8;

	// for (int i = 0; i < polyTypesSize; i++)
	// polygonTypes.push_back(BitConverter::ToUInt64BE(data, polyTypeDefSegmentOffset + (i * 8)));
	//}

	if (camDataAddress != 0)
		camData = new CameraDataList(parent, prefix, rawData, camDataSegmentOffset,
		                             polyTypeDefSegmentOffset, polygonTypes.size());

	for (int i = 0; i < numWaterBoxes; i++)
		waterBoxes.push_back(new WaterBoxHeader(
			rawData,
			waterBoxSegmentOffset + (i * (Globals::Instance->game == ZGame::OOT_SW97 ? 12 : 16))));

	string declaration = "";
	char line[2048];

	if (waterBoxes.size() > 0)
	{
		for (size_t i = 0; i < waterBoxes.size(); i++)
		{
			sprintf(line, "   { %i, %i, %i, %i, %i, 0x%08X },\n", waterBoxes[i]->xMin,
			        waterBoxes[i]->ySurface, waterBoxes[i]->zMin, waterBoxes[i]->xLength,
			        waterBoxes[i]->zLength, waterBoxes[i]->properties);
			declaration += line;
		}
	}

	if (waterBoxAddress != 0)
		parent->AddDeclarationArray(
			waterBoxSegmentOffset, DeclarationAlignment::None, 16 * waterBoxes.size(), "WaterBox",
			StringHelper::Sprintf("%s_waterBoxes_%08X", prefix.c_str(), waterBoxSegmentOffset), 0,
			declaration);

	if (polygons.size() > 0)
	{
		declaration = "";

		for (size_t i = 0; i < polygons.size(); i++)
		{
			sprintf(
				line, "   { 0x%04X, 0x%04X, 0x%04X, 0x%04X, 0x%04X, 0x%04X, 0x%04X, 0x%04X },\n",
				(uint16_t)polygons[i]->type, (uint16_t)polygons[i]->vtxA,
				(uint16_t)polygons[i]->vtxB, (uint16_t)polygons[i]->vtxC, (uint16_t)polygons[i]->a,
				(uint16_t)polygons[i]->b, (uint16_t)polygons[i]->c, (uint16_t)polygons[i]->d);
			declaration += line;
		}

		if (polyAddress != 0)
		{
			parent->AddDeclarationArray(
				polySegmentOffset, DeclarationAlignment::None, polygons.size() * 16,
				"CollisionPoly",
				StringHelper::Sprintf("%s_polygons_%08X", prefix.c_str(), polySegmentOffset), 0,
				declaration);
		}
	}

	declaration = "";
	for (size_t i = 0; i < polygonTypes.size(); i++)
	{
		declaration += StringHelper::Sprintf("    { 0x%08lX, 0x%08lX },", polygonTypes[i] >> 32,
		                                     polygonTypes[i] & 0xFFFFFFFF);

		if (i < polygonTypes.size() - 1)
			declaration += "\n";
	}

	if (polyTypeDefAddress != 0)
		parent->AddDeclarationArray(
			polyTypeDefSegmentOffset, DeclarationAlignment::None, polygonTypes.size() * 8,
			"SurfaceType",
			StringHelper::Sprintf("%s_surfaceType_%08X", prefix.c_str(), polyTypeDefSegmentOffset),
			0, declaration);

	declaration = "";

	if (vertices.size() > 0)
	{
		declaration = "";

		for (size_t i = 0; i < vertices.size(); i++)
		{
			declaration += StringHelper::Sprintf("   { %i, %i, %i },", vertices[i]->x,
			                                     vertices[i]->y, vertices[i]->z);

			if (i < vertices.size() - 1)
				declaration += "\n";
		}

		if (vtxAddress != 0)
			parent->AddDeclarationArray(
				vtxSegmentOffset, DeclarationAlignment::None, vertices.size() * 6, "Vec3s",
				StringHelper::Sprintf("%s_vtx_%08X", prefix.c_str(), vtxSegmentOffset), 0,
				declaration);

		declaration = "";
	}

	declaration = "";
	char waterBoxStr[2048];

	if (waterBoxAddress != 0)
		sprintf(waterBoxStr, "%s_waterBoxes_%08X", prefix.c_str(), waterBoxSegmentOffset);
	else
		sprintf(waterBoxStr, "NULL");

	declaration += "\n";

	declaration += StringHelper::Sprintf("    { %i, %i, %i },\n    { %i, %i, %i },\n", absMinX,
	                                     absMinY, absMinZ, absMaxX, absMaxY, absMaxZ);

	declaration += StringHelper::Sprintf(
		"    %i,\n    %s_vtx_%08X,\n    %i,\n    %s_polygons_%08X,\n    %s_surfaceType_%08X,\n    "
	    "%s_camDataList_%08X,\n    %i,\n    %s\n",
		numVerts, prefix.c_str(), vtxSegmentOffset, numPolygons, prefix.c_str(), polySegmentOffset,
		prefix.c_str(), polyTypeDefSegmentOffset, prefix.c_str(), camDataSegmentOffset,
		numWaterBoxes, waterBoxStr);

	parent->AddDeclaration(rawDataIndex, DeclarationAlignment::None, DeclarationPadding::Pad16, 44,
	                       "CollisionHeader",
	                       StringHelper::Sprintf("%s", prefix.c_str(), rawDataIndex), declaration);
}

ZCollisionHeader::~ZCollisionHeader()
{
	for (VertexEntry* vtx : vertices)
		delete vtx;

	for (PolygonEntry* poly : polygons)
		delete poly;

	for (WaterBoxHeader* waterBox : waterBoxes)
		delete waterBox;
}

ZResourceType ZCollisionHeader::GetResourceType()
{
	return ZResourceType::CollisionHeader;
}

ZCollisionHeader* ZCollisionHeader::ExtractFromXML(tinyxml2::XMLElement* reader,
                                                   vector<uint8_t> nRawData, int rawDataIndex)
{
	ZCollisionHeader* col = new ZCollisionHeader();

	return col;
}

PolygonEntry::PolygonEntry(const std::vector<uint8_t>& rawData, int rawDataIndex)
{
	const uint8_t* data = rawData.data();

	type = BitConverter::ToInt16BE(data, rawDataIndex + 0);
	vtxA = BitConverter::ToInt16BE(data, rawDataIndex + 2);
	vtxB = BitConverter::ToInt16BE(data, rawDataIndex + 4);
	vtxC = BitConverter::ToInt16BE(data, rawDataIndex + 6);
	a = BitConverter::ToInt16BE(data, rawDataIndex + 8);
	b = BitConverter::ToInt16BE(data, rawDataIndex + 10);
	c = BitConverter::ToInt16BE(data, rawDataIndex + 12);
	d = BitConverter::ToInt16BE(data, rawDataIndex + 14);
}

VertexEntry::VertexEntry(const std::vector<uint8_t>& rawData, int rawDataIndex)
{
	const uint8_t* data = rawData.data();

	x = BitConverter::ToInt16BE(data, rawDataIndex + 0);
	y = BitConverter::ToInt16BE(data, rawDataIndex + 2);
	z = BitConverter::ToInt16BE(data, rawDataIndex + 4);
}

WaterBoxHeader::WaterBoxHeader(const std::vector<uint8_t>& rawData, int rawDataIndex)
{
	const uint8_t* data = rawData.data();

	xMin = BitConverter::ToInt16BE(data, rawDataIndex + 0);
	ySurface = BitConverter::ToInt16BE(data, rawDataIndex + 2);
	zMin = BitConverter::ToInt16BE(data, rawDataIndex + 4);
	xLength = BitConverter::ToInt16BE(data, rawDataIndex + 6);
	zLength = BitConverter::ToInt16BE(data, rawDataIndex + 8);
	if (Globals::Instance->game == ZGame::OOT_SW97)
	{
		properties = BitConverter::ToInt16BE(data, rawDataIndex + 10);
	}
	else
	{
		properties = BitConverter::ToInt32BE(data, rawDataIndex + 12);
	}
}

CameraDataList::CameraDataList(ZFile* parent, const std::string& prefix,
                               const std::vector<uint8_t>& rawData, int rawDataIndex,
                               int polyTypeDefSegmentOffset, int polygonTypesCnt)
{
	string declaration = "";

	// Parse CameraDataEntries
	int numElements = abs(polyTypeDefSegmentOffset - (rawDataIndex)) / 8;
	// int numElements = polygonTypesCnt;
	uint32_t cameraPosDataSeg = rawDataIndex;
	for (int i = 0; i < numElements; i++)
	{
		CameraDataEntry* entry = new CameraDataEntry();

		entry->cameraSType =
			BitConverter::ToInt16BE(rawData, rawDataIndex + (entries.size() * 8) + 0);
		entry->numData = BitConverter::ToInt16BE(rawData, rawDataIndex + (entries.size() * 8) + 2);
		entry->cameraPosDataSeg =
			BitConverter::ToInt32BE(rawData, rawDataIndex + (entries.size() * 8) + 4);

		if (entry->cameraPosDataSeg != 0 && GETSEGNUM(entry->cameraPosDataSeg) != 2)
		{
			cameraPosDataSeg = rawDataIndex + (entries.size() * 8);
			break;
		}

		if (entry->cameraPosDataSeg != 0 && cameraPosDataSeg > (entry->cameraPosDataSeg & 0xFFFFFF))
			cameraPosDataSeg = (entry->cameraPosDataSeg & 0xFFFFFF);

		entries.push_back(entry);
	}

	// setting cameraPosDataAddr to rawDataIndex give a pos list length of 0
	uint32_t cameraPosDataOffset = cameraPosDataSeg & 0xFFFFFF;
	for (size_t i = 0; i < entries.size(); i++)
	{
		char camSegLine[2048];

		if (entries[i]->cameraPosDataSeg != 0)
		{
			int index = ((entries[i]->cameraPosDataSeg & 0x00FFFFFF) - cameraPosDataOffset) / 0x6;
			sprintf(camSegLine, "&%s_camPosData_%08X[%i]", prefix.c_str(), cameraPosDataOffset,
			        index);
		}
		else
			sprintf(camSegLine, "0x%08X", entries[i]->cameraPosDataSeg);

		declaration +=
			StringHelper::Sprintf("    { 0x%04X, %i, %s },", entries[i]->cameraSType,
		                          entries[i]->numData, camSegLine, rawDataIndex + (i * 8));

		if (i < entries.size() - 1)
			declaration += "\n";
	}

	parent->AddDeclarationArray(
		rawDataIndex, DeclarationAlignment::None, entries.size() * 8, "CamData",
		StringHelper::Sprintf("%s_camDataList_%08X", prefix.c_str(), rawDataIndex), entries.size(),
		declaration);

	int numDataTotal = abs(rawDataIndex - (int)cameraPosDataOffset) / 0x6;

	if (numDataTotal > 0)
	{
		declaration = "";
		for (int i = 0; i < numDataTotal; i++)
		{
			CameraPositionData* data =
				new CameraPositionData(rawData, cameraPosDataOffset + (i * 6));
			cameraPositionData.push_back(data);

			declaration +=
				StringHelper::Sprintf("    { %6i, %6i, %6i },\n", data->x, data->y, data->z);
		}

		int cameraPosDataIndex = cameraPosDataSeg & 0x00FFFFFF;
		int entrySize = numDataTotal * 0x6;
		parent->AddDeclarationArray(
			cameraPosDataIndex, DeclarationAlignment::None, entrySize, "Vec3s",
			StringHelper::Sprintf("%s_camPosData_%08X", prefix.c_str(), cameraPosDataIndex),
			numDataTotal, declaration);
	}
}

CameraPositionData::CameraPositionData(const std::vector<uint8_t>& rawData, int rawDataIndex)
{
	x = BitConverter::ToInt16BE(rawData, rawDataIndex + 0);
	y = BitConverter::ToInt16BE(rawData, rawDataIndex + 2);
	z = BitConverter::ToInt16BE(rawData, rawDataIndex + 4);
}
