#pragma once

#include "../ZRoomCommand.h"

class MinimapEntry
{
public:
	uint16_t unk0;
	uint16_t unk2;
	uint16_t unk4;
	uint16_t unk6;
	uint16_t unk8;

	MinimapEntry(std::vector<uint8_t> rawData, uint32_t rawDataIndex);
};

class SetMinimapList : public ZRoomCommand
{
public:
	SetMinimapList(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex);
	~SetMinimapList();

	std::string GenerateSourceCodePass1(std::string roomName, uint32_t baseAddress) override;
	std::string GenerateSourceCodePass2(std::string roomName, uint32_t baseAddress) override;
	std::string GetCommandCName() override;
	std::string GenerateExterns() override;
	RoomCommand GetRoomCommand() override;
	size_t GetRawDataSize() override;

private:
	std::vector<MinimapEntry*> minimaps;
	uint32_t segmentOffset;

	uint32_t listSegmentOffset;
	uint32_t unk4;
};