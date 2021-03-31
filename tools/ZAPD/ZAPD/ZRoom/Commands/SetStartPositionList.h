#pragma once

#include "../ZRoomCommand.h"
#include "SetActorList.h"

class SetStartPositionList : public ZRoomCommand
{
public:
	std::vector<ActorSpawnEntry*> actors;

	SetStartPositionList(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);
	~SetStartPositionList();

	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	virtual std::string GenerateSourceCodePass2(std::string roomName, int baseAddress);
	virtual std::string GetCommandCName();
	virtual std::string GenerateExterns();
	virtual RoomCommand GetRoomCommand();

private:
	uint32_t segmentOffset;
};