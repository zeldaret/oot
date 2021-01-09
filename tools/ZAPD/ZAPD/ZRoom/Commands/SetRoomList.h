#pragma once

#include "../ZRoomCommand.h"

class RoomEntry
{
public:
	int32_t virtualAddressStart;
	int32_t virtualAddressEnd;

	RoomEntry(int32_t nVAS, int32_t nVAE);
	RoomEntry(std::vector<uint8_t> rawData, int rawDataIndex);
};

class SetRoomList : public ZRoomCommand
{
public:
	SetRoomList(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);
	~SetRoomList();

	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	virtual std::string GenerateSourceCodePass2(std::string roomName, int baseAddress);
	virtual std::string GetCommandCName();
	virtual std::string GenerateExterns();
	virtual RoomCommand GetRoomCommand();
	virtual std::string PreGenSourceFiles();
	virtual std::string Save();

private:
	std::vector<RoomEntry*> rooms;
	uint32_t segmentOffset;
};