#pragma once

#include "../../ZCollision.h"
#include "../ZRoomCommand.h"

class SetCollisionHeader : public ZRoomCommand
{
public:
	SetCollisionHeader(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex);

	virtual std::string GenerateSourceCodePass1(std::string roomName, uint32_t baseAddress) override;
	virtual std::string GenerateSourceCodePass2(std::string roomName, uint32_t baseAddress) override;
	virtual std::string GetCommandCName() override;
	virtual std::string GenerateExterns() override;
	virtual RoomCommand GetRoomCommand() override;

private:
	ZCollisionHeader* collisionHeader;
	uint32_t segmentOffset;
};