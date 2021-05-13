#pragma once

#include "../../Vec3s.h"
#include "../ZRoomCommand.h"
#include "ZResource.h"

class PathwayEntry
{
public:
	int16_t x, y, z;

	PathwayEntry(std::vector<uint8_t> rawData, uint32_t rawDataIndex);

	int32_t numPoints;
	int8_t unk1;   // (MM Only)
	int16_t unk2;  // (MM Only)
	uint32_t listSegmentOffset;
	std::vector<Vec3s> points;
};

struct PathwayList
{
public:
	PathwayList(ZFile* nParent, std::vector<uint8_t> rawData, uint32_t rawDataIndex, int32_t length);
	~PathwayList();

	void GetSourceOutputCode(const std::string& prefix) ;
	size_t GetRawDataSize();
	std::string GenerateExterns(const std::string& prefix);

private:
	ZFile* parent;
	std::vector<PathwayEntry*> pathways;
	std::vector<uint8_t> _rawData;
	uint32_t _rawDataIndex;
};

class ZSetPathways : public ZResource, public ZRoomCommand
{
public:
	ZSetPathways(ZFile* nParent);
	ZSetPathways(ZRoom* nZRoom, const std::vector<uint8_t>& nRawData, uint32_t nRawDataIndex,
	             bool nIsFromHeader);
	~ZSetPathways();

	void ParseRawData() override;

	void DeclareVar(const std::string& prefix, const std::string& bodyStr);
	std::string GetSourceOutputCode(const std::string& prefix) override;

	std::string GenerateSourceCodePass1(std::string roomName, uint32_t baseAddress) override;
	std::string GenerateSourceCodePass2(std::string roomName, uint32_t baseAddress) override;
	RoomCommand GetRoomCommand() override;
	size_t GetRawDataSize() override;
	std::string GetCommandCName() override;
	std::string GenerateExterns() override;

private:
	uint32_t segmentOffset;
	PathwayList* pathwayList;
	bool isFromHeader = false;
};