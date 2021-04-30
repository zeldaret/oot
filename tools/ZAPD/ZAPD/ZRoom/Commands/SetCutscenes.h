#pragma once

#include "../../ZCutscene.h"
#include "../../ZCutsceneMM.h"
#include "../ZRoomCommand.h"

class CutsceneEntry
{
public:
	CutsceneEntry(std::vector<uint8_t> rawData, uint32_t rawDataIndex);

	uint32_t segmentOffset;
	uint16_t exit;
	uint8_t entrance;
	uint8_t flag;
};

class SetCutscenes : public ZRoomCommand
{
public:
	SetCutscenes(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex);
	~SetCutscenes();

	std::string GetSourceOutputCode(std::string prefix);
	virtual std::string GenerateSourceCodePass1(std::string roomName, uint32_t baseAddress) override;
	virtual RoomCommand GetRoomCommand() override;
	virtual size_t GetRawDataSize() override;
	virtual std::string GetCommandCName() override;
	virtual std::string GenerateExterns() override;

private:
	std::vector<ZCutsceneBase*> cutscenes;
	std::vector<CutsceneEntry*> cutsceneEntries;  // (MM Only)
	uint32_t segmentOffset;
	uint8_t numCutscenes;  // (MM Only)
	std::vector<uint8_t> _rawData;
	int32_t _rawDataIndex;
};