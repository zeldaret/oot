#pragma once

#include "../../ZDisplayList.h"
#include "../ZRoomCommand.h"
#include "ZBackground.h"

class MeshHeaderBase
{
public:
	int8_t headerType;  // 0x00
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

class PolygonDlist
{
protected:
	segptr_t opa = 0;  // Gfx*
	segptr_t xlu = 0;  // Gfx*

	std::vector<uint8_t> rawData;
	int rawDataIndex;
	ZFile* parent;
	ZRoom* room;
	std::string name;

	void ParseRawData();
	ZDisplayList* MakeDlist(segptr_t ptr, const std::string& prefix);

public:
	PolygonDlist() = default;
	PolygonDlist(const std::string& prefix, const std::vector<uint8_t>& nRawData, int nRawDataIndex,
	             ZFile* nParent, ZRoom* nRoom);

	int GetRawDataSize();

	void DeclareVar(const std::string& prefix, const std::string& bodyStr);

	std::string GetBodySourceCode(bool arrayElement);
	void DeclareAndGenerateOutputCode();

	static std::string GetDefaultName(const std::string& prefix, uint32_t address);
	std::string GetSourceTypeName();
	std::string GetName();

	ZDisplayList* opaDList = nullptr;  // Gfx*
	ZDisplayList* xluDList = nullptr;  // Gfx*
};

class BgImage
{
protected:
	uint16_t unk_00;
	uint8_t id;
	segptr_t source;
	uint32_t unk_0C;
	uint32_t tlut;
	uint16_t width;
	uint16_t height;
	uint8_t fmt;
	uint8_t siz;
	uint16_t mode0;
	uint16_t tlutCount;

	ZBackground* sourceBackground;

	std::vector<uint8_t> rawData;
	int rawDataIndex;
	ZFile* parent;
	std::string name;
	bool isSubStruct;

	void ParseRawData();
	ZBackground* MakeBackground(segptr_t ptr, const std::string& prefix);

public:
	BgImage() = default;
	BgImage(bool nIsSubStruct, const std::string& prefix, const std::vector<uint8_t>& nRawData,
	        int nRawDataIndex, ZFile* nParent);

	static int GetRawDataSize();

	std::string GetBodySourceCode(bool arrayElement);

	static std::string GetDefaultName(const std::string& prefix, uint32_t address);
	static std::string GetSourceTypeName();
	std::string GetName();
};

class PolygonType1
{
protected:
	uint8_t type;
	uint8_t format;
	segptr_t dlist;

	// single
	BgImage single;

	// multi
	uint8_t count;
	segptr_t list;  // BgImage*
	std::vector<BgImage> multiList;

	std::vector<uint8_t> rawData;
	int rawDataIndex;
	ZFile* parent;
	std::string name;

	void ParseRawData();

public:
	PolygonType1(const std::string& prefix, const std::vector<uint8_t>& nRawData, int nRawDataIndex,
	             ZFile* nParent, ZRoom* nRoom);

	int GetRawDataSize();

	void DeclareVar(const std::string& prefix, const std::string& bodyStr);

	std::string GetBodySourceCode();
	void DeclareAndGenerateOutputCode();

	static std::string GetDefaultName(const std::string& prefix, uint32_t address);
	std::string GetSourceTypeName();
	std::string GetName();

	PolygonDlist polyGfxList;
};

class SetMesh : public ZRoomCommand
{
public:
	SetMesh(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex, int segAddressOffset);
	~SetMesh();

	virtual std::string GenerateSourceCodePass1(std::string roomName, int baseAddress);
	// virtual std::string GenerateSourceCodePass2(std::string roomName, int baseAddress);
	// virtual std::string GenerateSourceCodePass3(std::string roomName);
	virtual std::string GenerateExterns();
	virtual std::string GetCommandCName();
	virtual RoomCommand GetRoomCommand();
	virtual int32_t GetRawDataSize();

private:
	MeshHeaderBase* meshHeader = nullptr;
	uint32_t segmentOffset;
	uint8_t data;
	uint8_t meshHeaderType;

	void GenDListDeclarations(std::vector<uint8_t> rawData, ZDisplayList* dList);
	std::string GenDListExterns(ZDisplayList* dList);
};
