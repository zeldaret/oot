#pragma once

#include "ZCollisionPoly.h"
#include "ZFile.h"
#include "ZResource.h"
#include "ZRoom/ZRoom.h"
#include "ZSurfaceType.h"
#include "ZVector.h"
#include "ZWaterbox.h"

class CameraPositionData
{
public:
	int16_t x, y, z;

	CameraPositionData(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex);
};

class CameraDataEntry
{
public:
	int16_t cameraSType;
	int16_t numData;
	offset_t cameraPosDataSeg;
};

class CameraDataList
{
public:
	std::vector<CameraDataEntry> entries;
	std::vector<CameraPositionData> cameraPositionData;

	CameraDataList(ZFile* parent, const std::string& prefix, const std::vector<uint8_t>& rawData,
	               offset_t rawDataIndex, offset_t upperCameraBoundary);
	~CameraDataList();
};

class ZCollisionHeader : public ZResource
{
public:
	int16_t absMinX, absMinY, absMinZ;
	int16_t absMaxX, absMaxY, absMaxZ;
	uint16_t numVerts;
	segptr_t vtxAddress;
	uint16_t numPolygons;
	segptr_t polyAddress;
	segptr_t polyTypeDefAddress;
	segptr_t camDataAddress;

	int32_t numWaterBoxes;
	segptr_t waterBoxAddress;

	uint32_t vtxSegmentOffset, polySegmentOffset, polyTypeDefSegmentOffset, camDataSegmentOffset,
		waterBoxSegmentOffset;

	std::vector<ZVector> vertices;
	std::vector<ZCollisionPoly> polygons;
	std::vector<ZSurfaceType> polygonTypes;
	std::vector<ZWaterbox> waterBoxes;
	CameraDataList* camData = nullptr;

	ZCollisionHeader(ZFile* nParent);
	~ZCollisionHeader();

	void ParseRawData() override;
	void DeclareReferences(const std::string& prefix) override;

	std::string GetBodySourceCode() const override;
	std::string GetDefaultName(const std::string& prefix) const override;

	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;

	size_t GetRawDataSize() const override;
};
