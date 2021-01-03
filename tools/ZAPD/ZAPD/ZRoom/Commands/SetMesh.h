#pragma once

#include "../ZRoomCommand.h"
#include "../../ZDisplayList.h"

class MeshHeaderBase
{
public:
	int8_t headerType; // 0x00
};

class MeshEntry0
{
public:
	int32_t opaqueDListAddr;
	int32_t translucentDListAddr;

	ZDisplayList* opaqueDList;
	ZDisplayList* translucentDList;
};

class MeshHeader0 : public MeshHeaderBase
{
public:
	std::vector<MeshEntry0*> entries;
	uint32_t dListStart;
	uint32_t dListEnd;
};

class MeshHeader1Base : public MeshHeaderBase
{
public:
	int8_t format; // 0x01
	uint32_t entryRecord; // 0x04
};

class MeshHeader1Single : public MeshHeader1Base
{
public:
	uint32_t imagePtr; // 0x08

	uint32_t unknown; // 0x0C
	uint32_t unknown2; // 0x10

	uint16_t bgWidth; // 0x14
	uint16_t bgHeight; // 0x16
	
	uint8_t imageFormat; // 0x18
	uint8_t imageSize; // 0x19
	uint16_t imagePal; // 0x1A
	uint16_t imageFlip; // 0x1C
};

class MeshHeader1Multi : public MeshHeader1Base
{
public:
	uint8_t bgCnt; // 0x08
	uint32_t bgRecordPtr; // 0x0C
};

class BackgroundRecord
{
public:
	uint16_t unknown; // 0x00
	int8_t bgID; // 0x02

	uint32_t imagePtr; // 0x04
	uint32_t unknown2; // 0x08
	uint32_t unknown3; // 0x0C

	uint16_t bgWidth; // 0x10
	uint16_t bgHeight; // 0x12

	uint8_t imageFmt; // 0x14
	uint8_t imageSize; // 0x15
	uint16_t imagePal; // 0x16
	uint16_t imageFlip; // 0x18
};

class MeshEntry2
{
public:
	int16_t playerXMax, playerZMax;
	int16_t playerXMin, playerZMin;

	int32_t opaqueDListAddr;
	int32_t translucentDListAddr;

	ZDisplayList* opaqueDList;
	ZDisplayList* translucentDList;
};

class MeshHeader2 : public MeshHeaderBase
{
public:
	std::vector<MeshEntry2*> entries;
	uint32_t dListStart;
	uint32_t dListEnd;
};

class SetMesh : public ZRoomCommand
{
public:
	SetMesh(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex, int segAddressOffset);

	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	//virtual std::string GenerateSourceCodePass2(std::string roomName, int baseAddress);
	//virtual std::string GenerateSourceCodePass3(std::string roomName);
	virtual std::string GenerateExterns();
	virtual std::string GetCommandCName();
	virtual RoomCommand GetRoomCommand();
	virtual int32_t GetRawDataSize();

private:
	MeshHeaderBase* meshHeader;
	uint32_t segmentOffset;
	uint8_t data;

	void GenDListDeclarations(std::vector<uint8_t> rawData, ZDisplayList* dList);
	std::string GenDListExterns(ZDisplayList* dList);
};