#pragma once

#include "../ZRoom.h"
#include "../ZRoomCommand.h"

class SetAlternateHeaders : public ZRoomCommand
{
public:
	SetAlternateHeaders(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex);

	virtual std::string GenerateSourceCodePass1(std::string roomName, uint32_t baseAddress) override;
	virtual size_t GetRawDataSize() override;
	virtual std::string GetCommandCName() override;
	virtual RoomCommand GetRoomCommand() override;

private:
	int32_t segmentOffset;
	std::vector<uint32_t> headers;
	std::vector<uint8_t> _rawData;
	int32_t _rawDataIndex;
};