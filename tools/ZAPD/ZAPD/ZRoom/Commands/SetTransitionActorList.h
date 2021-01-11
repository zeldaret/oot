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

	TransitionActorEntry(std::vector<uint8_t> rawData, int rawDataIndex);
};

class SetTransitionActorList : public ZRoomCommand
{
public:
	SetTransitionActorList(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);
	~SetTransitionActorList();

	std::string GetSourceOutputCode(std::string prefix);
	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	virtual std::string GenerateSourceCodePass2(std::string roomName, int baseAddress);
	virtual RoomCommand GetRoomCommand();
	virtual int32_t GetRawDataSize();
	virtual std::string GetCommandCName();
	virtual std::string GenerateExterns();

private:
	std::vector<TransitionActorEntry*> transitionActors;
	uint32_t segmentOffset;
};