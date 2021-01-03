#include "SetWind.h"
#include "../../StringHelper.h"

using namespace std;

SetWind::SetWind(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex) : ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	windWest = rawData[rawDataIndex + 0x04];
	windVertical = rawData[rawDataIndex + 0x05];
	windSouth = rawData[rawDataIndex + 0x06];
	clothFlappingStrength = rawData[rawDataIndex + 0x07];
}

string SetWind::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	return StringHelper::Sprintf("%s 0x00, 0x00, 0x00, 0x%02X, 0x%02X, 0x%02X, 0x%02X", ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), windWest, windVertical, windSouth, clothFlappingStrength);
}

string SetWind::GetCommandCName()
{
	return "SCmdWindSettings";
}

RoomCommand SetWind::GetRoomCommand()
{
	return RoomCommand::SetWind;
}