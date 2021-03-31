#include "ZRoomCommand.h"

using namespace std;

ZRoomCommand::ZRoomCommand(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex)
{
	cmdID = (RoomCommand)rawData[rawDataIndex];
	cmdAddress = rawDataIndex;
	zRoom = nZRoom;
}

string ZRoomCommand::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	char line[2048];

	// sprintf(line, "%s _%s_set%04X_cmd%02X = { 0x%02X,", GetCommandCName().c_str(),
	// roomName.c_str(), baseAddress, cmdIndex, cmdID);
	sprintf(line, " 0x%02X,", (uint8_t)cmdID);

	return string(line);
}

string ZRoomCommand::GenerateSourceCodePass2(string roomName, int baseAddress)
{
	return "";
}

string ZRoomCommand::GenerateSourceCodePass3(string roomName)
{
	return "";
}

string ZRoomCommand::GenerateExterns()
{
	return "";
}

std::string ZRoomCommand::Save()
{
	return std::string();
}

std::string ZRoomCommand::PreGenSourceFiles()
{
	return std::string();
}

int32_t ZRoomCommand::GetRawDataSize()
{
	return 8;
}

string ZRoomCommand::GetCommandCName()
{
	return "SCmdBase";
}

RoomCommand ZRoomCommand::GetRoomCommand()
{
	return RoomCommand::Error;
}