#pragma once
#include "../ZRoomCommand.h"

class ZRoomCommandUnk : public ZRoomCommand
{
public:
	RoomCommand cmdID;
	int32_t cmdAddress;
	int32_t cmdIndex;
	int32_t cmdSet;
	uint32_t commandSet;
	uint8_t data1;
	uint32_t data2;

	ZRoomCommandUnk(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);

	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	virtual std::string GenerateSourceCodePass2(std::string roomName, int baseAddress);
	virtual std::string GenerateSourceCodePass3(std::string roomName);
	virtual RoomCommand GetRoomCommand();
	virtual int32_t GetRawDataSize();
	virtual std::string GetCommandCName();
	virtual std::string GenerateExterns();

protected:
	ZRoom* zRoom;
};