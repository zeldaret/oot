#pragma once

#include "../ZRoomCommand.h"

class EntranceEntry
{
public:
	uint8_t startPositionIndex;
	uint8_t roomToLoad;

	EntranceEntry(std::vector<uint8_t> rawData, int rawDataIndex);
};

class SetEntranceList : public ZRoomCommand
{
public:
	SetEntranceList(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);

	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	virtual std::string GenerateExterns();
	virtual std::string GetCommandCName();
	virtual RoomCommand GetRoomCommand();

private:
	std::vector<EntranceEntry*> entrances;
	uint32_t segmentOffset;
	std::vector<uint8_t> _rawData;
	int32_t _rawDataIndex;
};