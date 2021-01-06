#pragma once

#include "../ZRoomCommand.h"
#include "../ZRoom.h"

class SetAlternateHeaders : public ZRoomCommand
{
public:
	SetAlternateHeaders(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);

	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	virtual int32_t GetRawDataSize();
	virtual std::string GetCommandCName();
	virtual RoomCommand GetRoomCommand();

private:
	int32_t segmentOffset;
	std::vector<uint32_t> headers;
	std::vector<uint8_t> _rawData;
	int _rawDataIndex;
};