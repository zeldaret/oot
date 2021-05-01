#pragma once

#include "../ZRoomCommand.h"

class RoomEntry
{
public:
	int32_t virtualAddressStart;
	int32_t virtualAddressEnd;

	RoomEntry(int32_t nVAS, int32_t nVAE);
	RoomEntry(std::vector<uint8_t> rawData, uint32_t rawDataIndex);
};

class SetRoomList : public ZRoomCommand
{
public:
	SetRoomList(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex);
	~SetRoomList();

	virtual std::string GenerateSourceCodePass1(std::string roomName, uint32_t baseAddress) override;
	virtual std::string GenerateSourceCodePass2(std::string roomName, uint32_t baseAddress) override;
	virtual std::string GetCommandCName() override;
	virtual std::string GenerateExterns() override;
	virtual RoomCommand GetRoomCommand() override;
	virtual std::string PreGenSourceFiles() override;
	virtual std::string Save() override;

private:
	std::vector<RoomEntry*> rooms;
	uint32_t segmentOffset;
};