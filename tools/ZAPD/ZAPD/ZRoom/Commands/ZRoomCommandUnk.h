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

	ZRoomCommandUnk(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex);

	virtual std::string GenerateSourceCodePass1(std::string roomName, uint32_t baseAddress) override;
	virtual std::string GenerateSourceCodePass2(std::string roomName, uint32_t baseAddress) override;
	virtual std::string GenerateSourceCodePass3(std::string roomName) override;
	virtual RoomCommand GetRoomCommand() override;
	virtual size_t GetRawDataSize() override;
	virtual std::string GetCommandCName() override;
	virtual std::string GenerateExterns() override;

protected:
	ZRoom* zRoom;
};