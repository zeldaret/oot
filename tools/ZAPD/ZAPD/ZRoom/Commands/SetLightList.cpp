#include "SetLightList.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"

using namespace std;

SetLightList::SetLightList(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	this->ptrRoom = nZRoom;
	this->numLights = rawData[rawDataIndex + 1];
	this->segment = BitConverter::ToInt32BE(rawData, rawDataIndex + 4) & 0x00FFFFFF;

	// std::string declarations = StringHelper::Sprintf("LightInfo %sLightInfo0x%06X[] =\n{\n",
	// this->ptrRoom->GetName().c_str(), this->segment);
	string declarations = "";

	int32_t currentPtr = this->segment;
	for (int32_t i = 0; i < this->numLights; i++)
	{
		uint8_t type = rawData[currentPtr + 0];
		int16_t x = BitConverter::ToInt16BE(rawData, currentPtr + 2);
		int16_t y = BitConverter::ToInt16BE(rawData, currentPtr + 4);
		int16_t z = BitConverter::ToInt16BE(rawData, currentPtr + 6);
		uint8_t r = rawData[currentPtr + 8];
		uint8_t g = rawData[currentPtr + 9];
		uint8_t b = rawData[currentPtr + 10];
		uint8_t drawGlow = rawData[currentPtr + 11];
		int16_t radius = BitConverter::ToInt16BE(rawData, currentPtr + 12);

		currentPtr += 14;

		declarations += StringHelper::Sprintf(
			"    { 0x%02X, { %i, %i, %i, { 0x%02X, 0x%02X, 0x%02X }, 0x%02X, 0x%04X } },", type, x,
			y, z, r, g, b, drawGlow, radius);

		if (i < this->numLights - 1)
			declarations += "\n";
	}

	this->ptrRoom->parent->AddDeclarationArray(
		this->segment, DeclarationAlignment::None, this->numLights * 0xE, "LightInfo",
		StringHelper::Sprintf("%sLightInfo0x%06X", this->ptrRoom->GetName().c_str(), this->segment),
		this->numLights, declarations);
}

string SetLightList::GenerateSourceCodePass1(string roomName, uint32_t baseAddress)
{
	return StringHelper::Sprintf(
		"%s %i, &%sLightInfo0x%06X",
		ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), this->numLights,
		this->ptrRoom->GetName().c_str(), this->segment);
}

string SetLightList::GetCommandCName()
{
	return "SCmdLightList";
}

string SetLightList::GenerateExterns()
{
	return StringHelper::Sprintf("extern LightInfo %sLightInfo0x%06X[];\n",
	                             this->ptrRoom->GetName().c_str(), this->segment);
}

RoomCommand SetLightList::GetRoomCommand()
{
	return RoomCommand::SetLightList;
}