#include "SetLightingSettings.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"
#include "../../ZFile.h"
#include "../ZRoom.h"

using namespace std;

SetLightingSettings::SetLightingSettings(ZRoom* nZRoom, std::vector<uint8_t> rawData,
                                         uint32_t rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	uint8_t numLights = rawData[rawDataIndex + 1];
	segmentOffset = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));

	for (int32_t i = 0; i < numLights; i++)
		settings.push_back(new LightingSettings(rawData, segmentOffset + (i * 22)));

	if (numLights > 0)
	{
		string declaration = "";

		for (int32_t i = 0; i < numLights; i++)
		{
			declaration += StringHelper::Sprintf(
				"\t{ 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, "
				"0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%04X, "
				"0x%04X }, // 0x%06X",
				settings[i]->ambientClrR, settings[i]->ambientClrG, settings[i]->ambientClrB,
				settings[i]->diffuseClrA_R, settings[i]->diffuseClrA_G, settings[i]->diffuseClrA_B,
				settings[i]->diffuseDirA_X, settings[i]->diffuseDirA_Y, settings[i]->diffuseDirA_Z,
				settings[i]->diffuseClrB_R, settings[i]->diffuseClrB_G, settings[i]->diffuseClrB_B,
				settings[i]->diffuseDirB_X, settings[i]->diffuseDirB_Y, settings[i]->diffuseDirB_Z,
				settings[i]->fogClrR, settings[i]->fogClrG, settings[i]->fogClrB, settings[i]->unk,
				settings[i]->drawDistance, segmentOffset + (i * 22));
			if (i + 1 < numLights)
				declaration += "\n";
		}

		zRoom->parent->AddDeclarationArray(
			segmentOffset, DeclarationAlignment::None, DeclarationPadding::None, numLights * 22,
			"LightSettings",
			StringHelper::Sprintf("%sLightSettings_%06X", zRoom->GetName().c_str(), segmentOffset),
			numLights, declaration);
	}
}

SetLightingSettings::~SetLightingSettings()
{
	for (LightingSettings* setting : settings)
		delete setting;
}

string SetLightingSettings::GenerateSourceCodePass1(string roomName, uint32_t baseAddress)
{
	return StringHelper::Sprintf(
		"%s %i, (u32)&%sLightSettings_%06X",
		ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), settings.size(),
		zRoom->GetName().c_str(), segmentOffset);
}

string SetLightingSettings::GenerateSourceCodePass2(string roomName, uint32_t baseAddress)
{
	return "";
}

string SetLightingSettings::GetCommandCName()
{
	return "SCmdLightSettingList";
}

string SetLightingSettings::GenerateExterns()
{
	return StringHelper::Sprintf("extern LightSettings %sLightSettings_%06X[];\n",
	                             zRoom->GetName().c_str(), segmentOffset);
}

RoomCommand SetLightingSettings::GetRoomCommand()
{
	return RoomCommand::SetLightingSettings;
}

LightingSettings::LightingSettings(vector<uint8_t> rawData, uint32_t rawDataIndex)
{
	const uint8_t* data = rawData.data();

	ambientClrR = data[rawDataIndex + 0];
	ambientClrG = data[rawDataIndex + 1];
	ambientClrB = data[rawDataIndex + 2];

	diffuseClrA_R = data[rawDataIndex + 3];
	diffuseClrA_G = data[rawDataIndex + 4];
	diffuseClrA_B = data[rawDataIndex + 5];

	diffuseDirA_X = data[rawDataIndex + 6];
	diffuseDirA_Y = data[rawDataIndex + 7];
	diffuseDirA_Z = data[rawDataIndex + 8];

	diffuseClrB_R = data[rawDataIndex + 9];
	diffuseClrB_G = data[rawDataIndex + 10];
	diffuseClrB_B = data[rawDataIndex + 11];

	diffuseDirB_X = data[rawDataIndex + 12];
	diffuseDirB_Y = data[rawDataIndex + 13];
	diffuseDirB_Z = data[rawDataIndex + 14];

	fogClrR = data[rawDataIndex + 15];
	fogClrG = data[rawDataIndex + 16];
	fogClrB = data[rawDataIndex + 17];

	unk = BitConverter::ToInt16BE(data, rawDataIndex + 18);
	drawDistance = BitConverter::ToInt16BE(data, rawDataIndex + 20);
}
