#include "SetSkyboxSettings.h"
#include "../../StringHelper.h"

using namespace std;

SetSkyboxSettings::SetSkyboxSettings(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex) : ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	skyboxNumber = rawData[rawDataIndex + 0x04];
	cloudsType = rawData[rawDataIndex + 0x05];
	lightingSettingsControl = rawData[rawDataIndex + 0x06];
}

string SetSkyboxSettings::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	return StringHelper::Sprintf("%s 0x00, 0x00, 0x00, 0x%02X, 0x%02X, 0x%02X", 
		ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), skyboxNumber, cloudsType, lightingSettingsControl);
}

string SetSkyboxSettings::GetCommandCName()
{
	return "SCmdSkyboxSettings";
}

RoomCommand SetSkyboxSettings::GetRoomCommand()
{
	return RoomCommand::SetSkyboxSettings;
}