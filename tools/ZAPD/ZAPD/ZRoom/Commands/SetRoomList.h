#pragma once

#include "ZRoom/ZRoomCommand.h"

class RoomEntry
{
public:
	RoomEntry(uint32_t nVAS, uint32_t nVAE);
	RoomEntry(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex);

protected:
	int32_t virtualAddressStart;
	int32_t virtualAddressEnd;
};

class SetRoomList : public ZRoomCommand
{
public:
	SetRoomList(ZFile* nParent);

	void ParseRawData() override;
	virtual void DeclareReferences(const std::string& prefix);

	std::string GetBodySourceCode() const override;
	void PreGenSourceFiles() override;

	RoomCommand GetRoomCommand() const override;
	std::string GetCommandCName() const override;

private:
	std::vector<RoomEntry> rooms;
};
