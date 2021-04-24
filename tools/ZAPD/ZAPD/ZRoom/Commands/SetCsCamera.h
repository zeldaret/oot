#pragma once

#include "../../Vec3s.h"
#include "../ZRoomCommand.h"

class CsCameraEntry
{
public:
	CsCameraEntry(std::vector<uint8_t> rawData, uint32_t rawDataIndex);

	int32_t baseOffset;
	int32_t type;
	int32_t numPoints;
	uint32_t segmentOffset;
};

class SetCsCamera : public ZRoomCommand
{
public:
	SetCsCamera(ZRoom* nZRoom, std::vector<uint8_t> rawData, uint32_t rawDataIndex);
	~SetCsCamera();

	std::string GetSourceOutputCode(std::string prefix);
	virtual std::string GenerateSourceCodePass1(std::string roomName, uint32_t baseAddress) override;
	virtual std::string GenerateSourceCodePass2(std::string roomName, uint32_t baseAddress) override;
	virtual RoomCommand GetRoomCommand() override;
	virtual size_t GetRawDataSize() override;
	virtual std::string GetCommandCName() override;
	virtual std::string GenerateExterns() override;

private:
	uint32_t segmentOffset;
	std::vector<CsCameraEntry*> cameras;
	std::vector<Vec3s> points;
	std::vector<uint8_t> _rawData;
	int32_t _rawDataIndex;
};
