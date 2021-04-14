#pragma once

#include "../ZRoomCommand.h"

class MinimapChest
{
public:
	uint16_t unk0;
	uint16_t unk2;
	uint16_t unk4;
	uint16_t unk6;
	uint16_t unk8;

	MinimapChest(std::vector<uint8_t> rawData, int rawDataIndex);
};

class SetMinimapChests : public ZRoomCommand
{
public:
	SetMinimapChests(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);
	~SetMinimapChests();

	std::string GenerateSourceCodePass1(std::string roomName, int baseAddress) override;
	std::string GenerateSourceCodePass2(std::string roomName, int baseAddress) override;
	std::string GetCommandCName() override;
	std::string GenerateExterns() override;
	RoomCommand GetRoomCommand() override;
	int32_t GetRawDataSize() override;

private:
	std::vector<MinimapChest*> chests;
	uint32_t segmentOffset;
};