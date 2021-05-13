#pragma once

#include "../ZRoomCommand.h"

class SetTimeSettings : public ZRoomCommand
{
public:
	SetTimeSettings(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex);

	virtual std::string GenerateSourceCodePass1(std::string roomName, uint32_t baseAddress) override;
	virtual std::string GetCommandCName() override;
	virtual RoomCommand GetRoomCommand() override;

private:
	// uint16_t time;
	// int8_t speed;

	uint8_t hour;
	uint8_t min;
	uint8_t unk;
};