#pragma once

#include "../ZRoomCommand.h"

class SetExitList : public ZRoomCommand
{
public:
	SetExitList(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex);

	virtual std::string GenerateSourceCodePass1(std::string roomName, uint32_t baseAddress) override;
	virtual std::string GenerateExterns() override;
	virtual std::string GetCommandCName() override;
	virtual RoomCommand GetRoomCommand() override;

private:
	std::vector<uint16_t> exits;
	uint32_t segmentOffset;
	std::vector<uint8_t> _rawData;
	int32_t _rawDataIndex;
};