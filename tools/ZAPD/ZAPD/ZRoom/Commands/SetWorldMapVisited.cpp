#include "SetWorldMapVisited.h"
#include "../../StringHelper.h"

using namespace std;

SetWorldMapVisited::SetWorldMapVisited(ZRoom* nZRoom, std::vector<uint8_t> rawData,
                                       uint32_t rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
}

string SetWorldMapVisited::GenerateSourceCodePass1(string roomName, uint32_t baseAddress)
{
	return StringHelper::Sprintf(
		"%s 0x00, 0x00", ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str());
}

string SetWorldMapVisited::GetCommandCName()
{
	return "SCmdWorldMapVisited";
}

RoomCommand SetWorldMapVisited::GetRoomCommand()
{
	return RoomCommand::SetWorldMapVisited;
}