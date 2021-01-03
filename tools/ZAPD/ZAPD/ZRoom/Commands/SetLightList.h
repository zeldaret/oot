#pragma once

#include <string>

#include "ZFile.h"
#include "../ZRoom.h"
#include "../ZRoomCommand.h"

class SetLightList : public ZRoomCommand
{
public:
	SetLightList(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);

	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	virtual std::string GetCommandCName();
	virtual RoomCommand GetRoomCommand();
	virtual std::string GenerateExterns();

private:
	uint8_t code;
	uint8_t numLights;
	uint32_t segment;

	ZRoom* ptrRoom;
};