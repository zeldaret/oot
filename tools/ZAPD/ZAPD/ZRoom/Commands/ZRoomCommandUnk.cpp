#include "ZRoomCommandUnk.h"
#include "../../StringHelper.h"
#include "BitConverter.h"

using namespace std;

ZRoomCommandUnk::ZRoomCommandUnk(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	cmdID = (RoomCommand)rawData[rawDataIndex];
	cmdAddress = rawDataIndex;
	zRoom = nZRoom;

	data1 = rawData[rawDataIndex + 1];
	data2 = BitConverter::ToInt32BE(rawData, rawDataIndex + 4);
}

string ZRoomCommandUnk::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	return StringHelper::Sprintf("%s %sSet%04XCmd%02X = { 0x%02X, 0x%02X, 0x%06X }; /* WARNING: "
	                             "UNIMPLEMENTED ROOM COMMAND */",
	                             GetCommandCName().c_str(), roomName.c_str(), baseAddress, data2,
	                             cmdID, data1, data2);
}

string ZRoomCommandUnk::GenerateSourceCodePass2(string roomName, int baseAddress)
{
	return "";
}

string ZRoomCommandUnk::GenerateSourceCodePass3(string roomName)
{
	return "";
}

string ZRoomCommandUnk::GenerateExterns()
{
	return "";
}

int32_t ZRoomCommandUnk::GetRawDataSize()
{
	return 8;
}

string ZRoomCommandUnk::GetCommandCName()
{
	return "SCmdBase";
}

RoomCommand ZRoomCommandUnk::GetRoomCommand()
{
	return RoomCommand::Error;
}