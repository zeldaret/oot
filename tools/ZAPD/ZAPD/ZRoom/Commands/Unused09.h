#pragma once

#include "../ZRoomCommand.h"

class Unused09 : public ZRoomCommand
{
public:
	Unused09(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex);

	virtual std::string GenerateSourceCodePass1(std::string roomName, uint32_t baseAddress) override;
	virtual std::string GetCommandCName() override;
	virtual RoomCommand GetRoomCommand() override;

private:
};