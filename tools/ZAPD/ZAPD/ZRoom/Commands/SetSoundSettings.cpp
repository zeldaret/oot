#include "SetSoundSettings.h"
#include "../../StringHelper.h"

using namespace std;

SetSoundSettings::SetSoundSettings(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	reverb = rawData[rawDataIndex + 0x01];
	nightTimeSFX = rawData[rawDataIndex + 0x06];
	musicSequence = rawData[rawDataIndex + 0x07];
}

string SetSoundSettings::GenerateSourceCodePass1(string roomName, uint32_t baseAddress)
{
	return StringHelper::Sprintf(
		"%s 0x%02X, 0x00, 0x00, 0x00, 0x00, 0x%02X, 0x%02X",
		ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), reverb, nightTimeSFX,
		musicSequence);
}

string SetSoundSettings::GetCommandCName()
{
	return "SCmdSoundSettings";
}

RoomCommand SetSoundSettings::GetRoomCommand()
{
	return RoomCommand::SetSoundSettings;
}