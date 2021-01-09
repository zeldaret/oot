#pragma once

#include <tinyxml2.h>

#include <vector>
#include <string>

class ZRoom;

enum class RoomCommand : uint8_t
{
	SetStartPositionList = 0x00,
	SetActorList = 0x01,
	SetCameraSomething = 0x02,
	SetCollisionHeader = 0x03,
	SetRoomList = 0x04,
	SetWind = 0x05,
	SetEntranceList = 0x06,
	SetSpecialObjects = 0x07,
	SetRoomBehavior = 0x08,
	Unused09 = 0x09,
	SetMesh = 0x0A,
	SetObjectList = 0x0B,
	SetLightList = 0x0C,
	SetPathways = 0x0D,
	SetTransitionActorList = 0x0E,
	SetLightingSettings = 0x0F,
	SetTimeSettings = 0x10,
	SetSkyboxSettings = 0x11,
	SetSkyboxModifier = 0x12,
	SetExitList = 0x13,
	EndMarker = 0x14,
	SetSoundSettings = 0x15,
	SetEchoSettings = 0x16,
	SetCutscenes = 0x17,
	SetAlternateHeaders = 0x18,
	SetCameraSettings = 0x19,

	Error = 0xFF
};

class ZRoomCommand
{
public:
	RoomCommand cmdID;
	int32_t cmdAddress;
	int32_t cmdIndex;
	int32_t cmdSet;
	uint32_t commandSet;

	ZRoomCommand(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);

	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	virtual std::string GenerateSourceCodePass2(std::string roomName, int baseAddress);
	virtual std::string GenerateSourceCodePass3(std::string roomName);
	virtual RoomCommand GetRoomCommand();
	virtual int32_t GetRawDataSize();
	virtual std::string GetCommandCName();
	virtual std::string GenerateExterns();
	virtual std::string Save();
	virtual std::string PreGenSourceFiles();

protected:
	ZRoom* zRoom;
};