#pragma once

#include "../../Vec3s.h"
#include "../ZRoomCommand.h"

class PathwayEntry
{
public:
	int16_t x, y, z;

	PathwayEntry(std::vector<uint8_t> rawData, int rawDataIndex);

	int numPoints;
	int8_t unk1; // (MM Only)
	int16_t unk2; // (MM Only)
	uint32_t listSegmentOffset;
	std::vector<Vec3s> points;
};

struct PathwayList
{
public:
	PathwayList(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex, int length);
	~PathwayList();

	void GetSourceOutputCode(std::string prefix);
	int32_t GetRawDataSize();
	std::string GenerateExterns();

private:
	ZRoom* zRoom;
	std::vector<PathwayEntry*> pathways;
	std::vector<uint8_t> _rawData;
	int _rawDataIndex;
};

class SetPathways : public ZRoomCommand
{
public:
	SetPathways(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex, bool isFromHeader);
	~SetPathways();

	std::string GetSourceOutputCode(std::string prefix);
	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	virtual std::string GenerateSourceCodePass2(std::string roomName, int baseAddress);
	virtual RoomCommand GetRoomCommand();
	virtual int32_t GetRawDataSize();
	virtual std::string GetCommandCName();
	virtual std::string GenerateExterns();

private:
	uint32_t segmentOffset;
	PathwayList* pathwayList;
	std::vector<uint8_t> _rawData;
	int _rawDataIndex;
};