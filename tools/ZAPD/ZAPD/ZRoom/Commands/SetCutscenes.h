#pragma once

#include "../ZRoomCommand.h"
#include "../../ZCutscene.h"

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
	ZCutscene* cutscene;
	uint32_t segmentOffset;
	std::vector<uint8_t> _rawData;
	int _rawDataIndex;
};