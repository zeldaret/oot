#pragma once

#include "../../ZCutscene.h"
#include "../../ZCutsceneMM.h"
#include "../ZRoomCommand.h"

class CutsceneEntry
{
public:
	CutsceneEntry(std::vector<uint8_t> rawData, int rawDataIndex);

	uint32_t segmentOffset;
	uint16_t exit;
	uint8_t entrance;
	uint8_t flag;
};

class SetCutscenes : public ZRoomCommand
{
public:
	SetCutscenes(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);
	~SetCutscenes();

	std::string GetSourceOutputCode(std::string prefix);
	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	virtual RoomCommand GetRoomCommand();
	virtual int32_t GetRawDataSize();
	virtual std::string GetCommandCName();
	virtual std::string GenerateExterns();

private:
	std::vector<ZCutsceneBase*> cutscenes;
	std::vector<CutsceneEntry*> cutsceneEntries;  // (MM Only)
	uint32_t segmentOffset;
	uint8_t numCutscenes;  // (MM Only)
	std::vector<uint8_t> _rawData;
	int _rawDataIndex;
};