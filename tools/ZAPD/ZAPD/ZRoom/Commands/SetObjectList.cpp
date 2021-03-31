#include "SetObjectList.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"
#include "../../ZFile.h"
#include "../ObjectList.h"
#include "../ZRoom.h"

using namespace std;

SetObjectList::SetObjectList(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	objects = vector<uint16_t>();
	uint8_t objectCnt = rawData[rawDataIndex + 1];
	segmentOffset = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));
	uint32_t currentPtr = segmentOffset;

	for (uint8_t i = 0; i < objectCnt; i++)
	{
		uint16_t objectIndex = BitConverter::ToInt16BE(rawData, currentPtr);
		objects.push_back(objectIndex);
		currentPtr += 2;
	}

	if (segmentOffset != 0)
		zRoom->parent->AddDeclarationPlaceholder(segmentOffset);
}

string SetObjectList::GenerateExterns()
{
	return StringHelper::Sprintf("s16 %sObjectList0x%06X[];\n", zRoom->GetName().c_str(),
	                             segmentOffset);
}

string SetObjectList::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	string sourceOutput = "";

	sourceOutput +=
		StringHelper::Sprintf("%s 0x%02X, (u32)%sObjectList0x%06X",
	                          ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(),
	                          objects.size(), zRoom->GetName().c_str(), segmentOffset);

	string declaration = "";

	for (size_t i = 0; i < objects.size(); i++)
	{
		uint16_t objectIndex = objects[i];
		declaration += StringHelper::Sprintf("\t%s,", ObjectList[objectIndex].c_str());

		if (i < objects.size() - 1)
			declaration += "\n";
	}

	zRoom->parent->AddDeclarationArray(
		segmentOffset, DeclarationAlignment::None, objects.size() * 2, "s16",
		StringHelper::Sprintf("%sObjectList0x%06X", zRoom->GetName().c_str(), segmentOffset),
		objects.size(), declaration);

	return sourceOutput;
}

int32_t SetObjectList::GetRawDataSize()
{
	return ZRoomCommand::GetRawDataSize() + (objects.size() * 2);
}

string SetObjectList::GetCommandCName()
{
	return "SCmdObjectList";
}

RoomCommand SetObjectList::GetRoomCommand()
{
	return RoomCommand::SetObjectList;
}