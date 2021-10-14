#pragma once

#include "ZCollision.h"
#include "ZRoom/ZRoomCommand.h"

class SetCollisionHeader : public ZRoomCommand
{
public:
	ZCollisionHeader* collisionHeader;

	SetCollisionHeader(ZFile* nParent);
	~SetCollisionHeader();

	void ParseRawData() override;

	std::string GetBodySourceCode() const override;

	std::string GetCommandCName() const override;
	RoomCommand GetRoomCommand() const override;
};
