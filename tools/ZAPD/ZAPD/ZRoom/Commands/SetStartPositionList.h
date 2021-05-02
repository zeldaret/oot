#pragma once

#include "../ZRoomCommand.h"
#include "SetActorList.h"

class SetStartPositionList : public ZRoomCommand
{
public:
	std::vector<ActorSpawnEntry*> actors;

	SetStartPositionList(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex);
	~SetStartPositionList();

	virtual std::string GenerateSourceCodePass1(std::string roomName, uint32_t baseAddress) override;
	virtual std::string GenerateSourceCodePass2(std::string roomName, uint32_t baseAddress) override;
	virtual std::string GetCommandCName() override;
	virtual std::string GenerateExterns() override;
	virtual RoomCommand GetRoomCommand() override;

private:
	uint32_t segmentOffset;
};