#include "SetCollisionHeader.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"
#include "../../ZFile.h"
#include "../ZRoom.h"

using namespace std;

SetCollisionHeader::SetCollisionHeader(ZRoom* nZRoom, std::vector<uint8_t> rawData,
                                       uint32_t rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	segmentOffset = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));
	collisionHeader = new ZCollisionHeader(nZRoom->parent);
	collisionHeader->SetRawData(rawData);
	collisionHeader->SetRawDataIndex(segmentOffset);
	collisionHeader->SetName(
		StringHelper::Sprintf("%sCollisionHeader0x%06X", nZRoom->GetName().c_str(), segmentOffset));
	collisionHeader->ParseRawData();
}

string SetCollisionHeader::GenerateSourceCodePass1(string roomName, uint32_t baseAddress)
{
	return StringHelper::Sprintf(
		"%s 0x00, (u32)&%sCollisionHeader0x%06X",
		ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(),
		zRoom->GetName().c_str(), segmentOffset);
}

string SetCollisionHeader::GenerateSourceCodePass2(string roomName, uint32_t baseAddress)
{
	return "";
}

string SetCollisionHeader::GetCommandCName()
{
	return "SCmdColHeader";
}

string SetCollisionHeader::GenerateExterns()
{
	return "";
}

RoomCommand SetCollisionHeader::GetRoomCommand()
{
	return RoomCommand::SetCollisionHeader;
}