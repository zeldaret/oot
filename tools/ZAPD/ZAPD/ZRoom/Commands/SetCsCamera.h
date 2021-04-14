#pragma once

#include "../../Vec3s.h"
#include "../ZRoomCommand.h"

class CsCameraEntry
{
public:
	CsCameraEntry(std::vector<uint8_t> rawData, int rawDataIndex);

	int baseOffset;
	int type;
	int numPoints;
	uint32_t segmentOffset;
};

class SetCsCamera : public ZRoomCommand
{
public:
	SetCsCamera(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex);
	~SetCsCamera();

	std::string GetSourceOutputCode(std::string prefix);
	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	virtual std::string GenerateSourceCodePass2(std::string roomName, int baseAddress);
	virtual RoomCommand GetRoomCommand();
	virtual int32_t GetRawDataSize();
	virtual std::string GetCommandCName();
	virtual std::string GenerateExterns();

private:
	uint32_t segmentOffset;
	std::vector<CsCameraEntry*> cameras;
	std::vector<Vec3s> points;
	std::vector<uint8_t> _rawData;
	int _rawDataIndex;
};
