#include "SetLightList.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"

using namespace std;

SetLightList::SetLightList(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex) : ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	this->ptrRoom = nZRoom;
	this->numLights = rawData[rawDataIndex + 1];
	this->segment = BitConverter::ToInt32BE(rawData, rawDataIndex + 4) & 0x00FFFFFF;

	//std::string declarations = StringHelper::Sprintf("LightInfo %sLightInfo0x%06X[] =\n{\n", this->ptrRoom->GetName().c_str(), this->segment);
	string declarations = "";

	for (int i = 0; i < this->numLights; i++)
	{
		uint8_t type = rawData[this->segment + ((0xE * i) + 0)];
		std::vector<uint16_t> params;

		for (int y = 0; y < 6; y++)
		{
			params.push_back(BitConverter::ToInt16BE(rawData, this->segment + ((0xE * i) + 2 + (y * 2))));
		}

		declarations += StringHelper::Sprintf("\t{ 0x%02X, { 0x%04X, 0x%04X, 0x%04X, 0x%04X, 0x%04X, 0x%04X } },\n", type, params[0], params[1], params[2], params[3], params[4], params[5]);
	}

	declarations += "};\n";

	this->ptrRoom->parent->AddDeclarationArray(this->segment, DeclarationAlignment::None, this->numLights * 0xE, "LightInfo", 
		StringHelper::Sprintf("%sLightInfo0x%06X", this->ptrRoom->GetName().c_str(), this->segment), this->numLights, declarations);
}

string SetLightList::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	return StringHelper::Sprintf("%s %i, &%sLightInfo0x%06X};", ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), this->numLights, this->ptrRoom->GetName().c_str(), this->segment);
}

string SetLightList::GetCommandCName()
{
	return "SCmdLightList";
}

string SetLightList::GenerateExterns()
{
	return StringHelper::Sprintf("extern LightInfo %sLightInfo0x%06X[];\n", this->ptrRoom->GetName().c_str(), this->segment);
}

RoomCommand SetLightList::GetRoomCommand()
{
	return RoomCommand::SetLightList;
}