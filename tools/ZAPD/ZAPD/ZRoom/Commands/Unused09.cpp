#include "Unused09.h"
#include "../../StringHelper.h"

using namespace std;

Unused09::Unused09(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
}

string Unused09::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	return StringHelper::Sprintf(
		"%s 0x00, 0x00", ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str());
}

string Unused09::GetCommandCName()
{
	return "SCmdBase";
}

RoomCommand Unused09::GetRoomCommand()
{
	return RoomCommand::Unused09;
}