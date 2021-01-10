#pragma once

#include "../ZRoomCommand.h"

class EndMarker : public ZRoomCommand
{
public:
	EndMarker(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);

	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	virtual std::string GetCommandCName();
	virtual RoomCommand GetRoomCommand();

private:
};