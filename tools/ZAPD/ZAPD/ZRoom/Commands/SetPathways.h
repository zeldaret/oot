#pragma once

#include "../ZRoomCommand.h"
#include "../../Vec3s.h"

class PathwayEntry
{
public:
	int16_t x, y, z;
};

class SetPathways : public ZRoomCommand
{
public:
	SetPathways(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);

	std::string GetSourceOutputCode(std::string prefix);
	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	virtual std::string GenerateSourceCodePass2(std::string roomName, int baseAddress);
	virtual RoomCommand GetRoomCommand();
	virtual int32_t GetRawDataSize();
	virtual std::string GetCommandCName();
	virtual std::string GenerateExterns();
	void InitList(uint32_t address);

private:
	uint32_t segmentOffset;
	uint32_t listSegmentOffset;
	int numPoints;
	std::vector<PathwayEntry*> pathways;
	std::vector<uint8_t> _rawData;
	int _rawDataIndex;
};