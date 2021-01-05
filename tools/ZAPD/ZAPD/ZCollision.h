#pragma once

#include "ZResource.h"
#include "ZFile.h"
#include "ZRoom/ZRoom.h"

class PolygonEntry
{
public:
	int16_t type;
	int16_t vtxA, vtxB, vtxC;
	int16_t a, b, c, d;

	PolygonEntry(std::vector<uint8_t> rawData, int rawDataIndex);
};

class VertexEntry
{
public:
	int16_t x, y, z;

	VertexEntry(std::vector<uint8_t> rawData, int rawDataIndex);
};

class WaterBoxHeader
{
public:
	int16_t xMin;
	int16_t ySurface;
	int16_t zMin;
	int16_t xLength;
	int16_t zLength;
	int16_t pad;
	int32_t properties;

	WaterBoxHeader(std::vector<uint8_t> rawData, int rawDataIndex);
};

class CameraPositionData
{
public:
	int16_t x, y, z;

	CameraPositionData(std::vector<uint8_t> rawData, int rawDataIndex);
};

class CameraDataEntry
{
public:
	int16_t cameraSType;
	int16_t numData;
	int32_t cameraPosDataSeg;
};

class CameraDataList
{
public:
	std::vector<CameraDataEntry*> entries;
	std::vector<CameraPositionData*> cameraPositionData;

	CameraDataList(ZFile* parent, std::string prefix, std::vector<uint8_t> rawData, int rawDataIndex, int polyTypeDefSegmentOffset, int polygonTypesCnt);
};

class ZCollisionHeader : public ZResource
{
public:
	int16_t absMinX, absMinY, absMinZ;
	int16_t absMaxX, absMaxY, absMaxZ;
	int16_t numVerts;
	int32_t vtxSegmentOffset;
	int16_t numPolygons;
	int32_t polySegmentOffset;
	int32_t polyTypeDefSegmentOffset;
	int32_t camDataSegmentOffset;

	int32_t numWaterBoxes;
	int32_t waterBoxSegmentOffset;

	std::vector<VertexEntry*> vertices;
	std::vector<PolygonEntry*> polygons;
	std::vector<uint64_t> polygonTypes;
	std::vector<WaterBoxHeader*> waterBoxes;
	CameraDataList* camData;

	ZCollisionHeader();
	//ZCollisionHeader(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);
	ZCollisionHeader(ZFile* parent, std::string prefix, std::vector<uint8_t> rawData, int rawDataIndex);

	static ZCollisionHeader* ExtractFromXML(tinyxml2::XMLElement* reader, std::vector<uint8_t> nRawData, int rawDataIndex);
};