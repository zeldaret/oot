#pragma once

#include "../ZRoomCommand.h"

class SetWind : public ZRoomCommand
{
public:
	SetWind(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex);

	virtual std::string GenerateSourceCodePass1(std::string roomName, uint32_t baseAddress) override;
	virtual std::string GetCommandCName() override;
	virtual RoomCommand GetRoomCommand() override;

private:
	uint8_t windWest;
	uint8_t windVertical;
	uint8_t windSouth;
	uint8_t clothFlappingStrength;
};