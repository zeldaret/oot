#include "SetRoomBehavior.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"

using namespace std;

SetRoomBehavior::SetRoomBehavior(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	gameplayFlags = rawData[rawDataIndex + 0x01];
	gameplayFlags2 = BitConverter::ToInt32BE(rawData, rawDataIndex + 0x04);
}

string SetRoomBehavior::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	return StringHelper::Sprintf(
		"%s 0x%02X, 0x%08X", ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(),
		gameplayFlags, gameplayFlags2);
	;
}

string SetRoomBehavior::GetCommandCName()
{
	return "SCmdRoomBehavior";
}

RoomCommand SetRoomBehavior::GetRoomCommand()
{
	return RoomCommand::SetRoomBehavior;
}