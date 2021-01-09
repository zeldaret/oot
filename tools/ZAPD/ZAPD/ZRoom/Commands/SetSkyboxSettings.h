#pragma once

#include "../ZRoomCommand.h"

class SetSkyboxSettings : public ZRoomCommand
{
public:
	SetSkyboxSettings(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);

	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	virtual std::string GetCommandCName();
	virtual RoomCommand GetRoomCommand();

private:
	uint8_t skyboxNumber;
	uint8_t cloudsType;
	uint8_t lightingSettingsControl;
};