#include "Unused1D.h"
#include "../../StringHelper.h"

using namespace std;

Unused1D::Unused1D(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
}

string Unused1D::GenerateSourceCodePass1(string roomName, uint32_t baseAddress)
{
	return StringHelper::Sprintf(
		"%s 0x00, 0x00", ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str());
}

string Unused1D::GetCommandCName()
{
	return "SCmdBase";
}

RoomCommand Unused1D::GetRoomCommand()
{
	return RoomCommand::Unused1D;
}