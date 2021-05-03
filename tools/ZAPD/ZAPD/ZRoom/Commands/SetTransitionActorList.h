#pragma once

#include "../ZRoomCommand.h"

class TransitionActorEntry
{
public:
	uint8_t frontObjectRoom;
	uint8_t frontTransitionReaction;
	uint8_t backObjectRoom;
	uint8_t backTransitionReaction;
	uint16_t actorNum;
	int16_t posX, posY, posZ;
	int16_t rotY;
	uint16_t initVar;

	TransitionActorEntry(std::vector<uint8_t> rawData, uint32_t rawDataIndex);
};

class SetTransitionActorList : public ZRoomCommand
{
public:
	SetTransitionActorList(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex);
	~SetTransitionActorList();

	std::string GetSourceOutputCode(std::string prefix);
	virtual std::string GenerateSourceCodePass1(std::string roomName, uint32_t baseAddress) override;
	virtual std::string GenerateSourceCodePass2(std::string roomName, uint32_t baseAddress) override;
	virtual RoomCommand GetRoomCommand() override;
	virtual size_t GetRawDataSize() override;
	virtual std::string GetCommandCName() override;
	virtual std::string GenerateExterns() override;

private:
	std::vector<TransitionActorEntry*> transitionActors;
	uint32_t segmentOffset;
};