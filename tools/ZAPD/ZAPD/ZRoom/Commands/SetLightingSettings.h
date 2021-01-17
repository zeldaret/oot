#pragma once

#include "../ZRoomCommand.h"

class LightingSettings
{
public:
	uint8_t ambientClrR, ambientClrG, ambientClrB;
	uint8_t diffuseClrA_R, diffuseClrA_G, diffuseClrA_B;
	uint8_t diffuseDirA_X, diffuseDirA_Y, diffuseDirA_Z;
	uint8_t diffuseClrB_R, diffuseClrB_G, diffuseClrB_B;
	uint8_t diffuseDirB_X, diffuseDirB_Y, diffuseDirB_Z;
	uint8_t fogClrR, fogClrG, fogClrB;
	uint16_t unk;
	uint16_t drawDistance;

	LightingSettings(std::vector<uint8_t> rawData, int rawDataIndex);
};

class SetLightingSettings : public ZRoomCommand
{
public:
	SetLightingSettings(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);
	~SetLightingSettings();

	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	virtual std::string GenerateSourceCodePass2(std::string roomName, int baseAddress);
	virtual std::string GetCommandCName();
	virtual std::string GenerateExterns();
	virtual RoomCommand GetRoomCommand();

private:
	uint32_t segmentOffset;
	std::vector<LightingSettings*> settings;
};