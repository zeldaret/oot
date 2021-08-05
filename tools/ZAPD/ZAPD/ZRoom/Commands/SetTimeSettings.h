#pragma once

#include "ZRoom/ZRoomCommand.h"

class SetTimeSettings : public ZRoomCommand
{
public:
	SetTimeSettings(ZFile* nParent);

	void ParseRawData() override;

	std::string GetBodySourceCode() const override;

	std::string GetCommandCName() const override;
	RoomCommand GetRoomCommand() const override;

private:
	uint8_t hour;
	uint8_t min;
	uint8_t unk;
};
