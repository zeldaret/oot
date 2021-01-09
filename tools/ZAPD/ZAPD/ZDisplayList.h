#pragma once

#include "ZResource.h"
#include "ZTexture.h"
#include "ZRoom/ZRoom.h"
#include "tinyxml2.h"

#include <vector>
#include <map>
#include <string>

enum class F3DZEXOpcode
{
	G_NOOP = 0x00,
	G_VTX = 0x01,
	G_MODIFYVTX = 0x02,
	G_CULLDL = 0x03,
	G_BRANCH_Z = 0x04,
	G_TRI1 = 0x05,
	G_TRI2 = 0x06,
	G_QUAD = 0x07,
	G_SPECIAL_3 = 0xD3,
	G_SPECIAL_2 = 0xD4,
	G_SPECIAL_1 = 0xD5,
	G_DMA_IO = 0xD6,
	G_TEXTURE = 0xD7,
	G_POPMTX = 0xD8,
	G_GEOMETRYMODE = 0xD9,
	G_MTX = 0xDA,
	G_MOVEWORD = 0xDB,
	G_MOVEMEM = 0xDC,
	G_LOAD_UCODE = 0xDD,
	G_DL = 0xDE,
	G_ENDDL = 0xDF,
	G_SPNOOP = 0xE0,
	G_RDPHALF_1 = 0xE1,
	G_SETOTHERMODE_L = 0xE2,
	G_SETOTHERMODE_H = 0xE3,
	G_TEXRECT = 0xE4,
	G_TEXRECTFLIP = 0xE5,
	G_RDPLOADSYNC = 0xE6,
	G_RDPPIPESYNC = 0xE7,
	G_RDPTILESYNC = 0xE8,
	G_RDPFULLSYNC = 0xE9,
	G_SETKEYGB = 0xEA,
	G_SETKEYR = 0xEB,
	G_SETCONVERT = 0xEC,
	G_SETSCISSOR = 0xED,
	G_SETPRIMDEPTH = 0xEE,
	G_RDPSETOTHERMODE = 0xEF,
	G_LOADTLUT = 0xF0,
	G_RDPHALF_2 = 0xF1,
	G_SETTILESIZE = 0xF2,
	G_LOADBLOCK = 0xF3,
	G_LOADTILE = 0xF4,
	G_SETTILE = 0xF5,
	G_FILLRECT = 0xF6,
	G_SETFILLCOLOR = 0xF7,
	G_SETFOGCOLOR = 0xF8,
	G_SETBLENDCOLOR = 0xF9,
	G_SETPRIMCOLOR = 0xFA,
	G_SETENVCOLOR = 0xFB,
	G_SETCOMBINE = 0xFC,
	G_SETTIMG = 0xFD,
	G_SETZIMG = 0xFE,
	G_SETCIMG = 0xFF,
};

enum class F3DZEXTexFormats
{
	G_IM_FMT_RGBA,
	G_IM_FMT_YUV,
	G_IM_FMT_CI,
	G_IM_FMT_IA,
	G_IM_FMT_I
};

enum class F3DZEXTexSizes
{
	G_IM_SIZ_4b,
	G_IM_SIZ_8b,
	G_IM_SIZ_16b,
	G_IM_SIZ_32b
};

enum class OoTSegments
{
	DirectReference = 0,
	TitleStatic = 1,
	Scene = 2,
	Room = 3,
	GameplayKeep = 4,
	FieldDungeonKeep = 5,
	Object = 6,
	LinkAnimation = 7,
	IconItemStatic = 8,
	IconItem24Static = 9,
	Unknown10 = 10,
	Unknown11 = 11,
	Unknown12 = 12,
	IconFieldDungeonStatic = 13,
	IconItemLanguageStatic = 14,
	ZBuffer = 15,
	FrameBuffer = 16,
};

#define G_RM_FOG_SHADE_A 0xC8000000
#define G_RM_FOG_PRIM_A 0xC4000000
#define G_RM_PASS 0x0C080000
#define G_RM_AA_ZB_OPA_SURF 0x442078
#define G_RM_AA_ZB_OPA_SURF2 0x112078
#define G_RM_AA_ZB_XLU_SURF 0x4049D8
#define G_RM_AA_ZB_XLU_SURF2 0x1049D8
#define G_RM_AA_ZB_OPA_DECAL 0x442D58
#define G_RM_AA_ZB_OPA_DECAL2 0x112D58
#define G_RM_AA_ZB_XLU_DECAL 0x404DD8
#define G_RM_AA_ZB_XLU_DECAL2 0x104DD8
#define G_RM_AA_ZB_OPA_INTER 0x442478
#define G_RM_AA_ZB_OPA_INTER2 0x112478
#define G_RM_AA_ZB_XLU_INTER 0x4045D8
#define G_RM_AA_ZB_XLU_INTER2 0x1045D8
#define G_RM_AA_ZB_XLU_LINE 0x407858
#define G_RM_AA_ZB_XLU_LINE2 0x107858
#define G_RM_AA_ZB_DEC_LINE 0x407F58
#define G_RM_AA_ZB_DEC_LINE2 0x107F58
#define G_RM_AA_ZB_TEX_EDGE 0x443078
#define G_RM_AA_ZB_TEX_EDGE2 0x113078
#define G_RM_AA_ZB_TEX_INTER 0x443478
#define G_RM_AA_ZB_TEX_INTER2 0x113478
#define G_RM_AA_ZB_SUB_SURF 0x442878
#define G_RM_AA_ZB_SUB_SURF2 0x112278
#define G_RM_AA_ZB_PCL_SURF 0x40007B
#define G_RM_AA_ZB_PCL_SURF2 0x10007B
#define G_RM_AA_ZB_OPA_TERR 0x402078
#define G_RM_AA_ZB_OPA_TERR2 0x102078
#define G_RM_AA_ZB_TEX_TERR 0x403078
#define G_RM_AA_ZB_TEX_TERR2 0x103078
#define G_RM_AA_ZB_SUB_TERR 0x402278
#define G_RM_AA_ZB_SUB_TERR2 0x102278
#define G_RM_RA_ZB_OPA_SURF 0x442038
#define G_RM_RA_ZB_OPA_SURF2 0x112038
#define G_RM_RA_ZB_OPA_DECAL 0x442D18
#define G_RM_RA_ZB_OPA_DECAL2 0x112D18
#define G_RM_RA_ZB_OPA_INTER 0x442438
#define G_RM_RA_ZB_OPA_INTER2 0x112438
#define G_RM_AA_OPA_SURF 0x442048
#define G_RM_AA_OPA_SURF2 0x112048
#define G_RM_AA_XLU_SURF 0x4041C8
#define G_RM_AA_XLU_SURF2 0x1041C8
#define G_RM_AA_XLU_LINE 0x407048
#define G_RM_AA_XLU_LINE2 0x107048
#define G_RM_AA_DEC_LINE 0x407248
#define G_RM_AA_DEC_LINE2 0x107248
#define G_RM_AA_TEX_EDGE 0x443048
#define G_RM_AA_TEX_EDGE2 0x113048
#define G_RM_AA_SUB_SURF 0x442248
#define G_RM_AA_SUB_SURF2 0x112248
#define G_RM_AA_PCL_SURF 0x40004B
#define G_RM_AA_PCL_SURF2 0x10004B
#define G_RM_AA_OPA_TERR 0x402048
#define G_RM_AA_OPA_TERR2 0x102048
#define G_RM_AA_TEX_TERR 0x403048
#define G_RM_AA_TEX_TERR2 0x103048
#define G_RM_AA_SUB_TERR 0x402248
#define G_RM_AA_SUB_TERR2 0x102248
#define G_RM_RA_OPA_SURF 0x442008
#define G_RM_RA_OPA_SURF2 0x112008
#define G_RM_ZB_OPA_SURF 0x442230
#define G_RM_ZB_OPA_SURF2 0x112230
#define G_RM_ZB_XLU_SURF 0x404A50
#define G_RM_ZB_XLU_SURF2 0x104A50
#define G_RM_ZB_OPA_DECAL 0x442E10
#define G_RM_ZB_OPA_DECAL2 0x112E10
#define G_RM_ZB_XLU_DECAL 0x404E50
#define G_RM_ZB_XLU_DECAL2 0x104E50
#define G_RM_ZB_CLD_SURF 0x404B50
#define G_RM_ZB_CLD_SURF2 0x104B50
#define G_RM_ZB_OVL_SURF 0x404F50
#define G_RM_ZB_OVL_SURF2 0x104F50
#define G_RM_ZB_PCL_SURF 0x0C080233
#define G_RM_ZB_PCL_SURF2 0x03020233
#define G_RM_OPA_SURF 0x0C084000
#define G_RM_OPA_SURF2 0x03024000
#define G_RM_XLU_SURF 0x00404200
#define G_RM_XLU_SURF2 0x00104240
#define G_RM_CLD_SURF 0x00404340
#define G_RM_CLD_SURF2 0x00104340
#define G_RM_TEX_EDGE 0x0C087008
#define G_RM_TEX_EDGE2 0x03027008
#define G_RM_PCL_SURF 0x0C084203
#define G_RM_PCL_SURF2 0x03024203
#define G_RM_ADD 0x04484340
#define G_RM_ADD2 0x01124340
#define G_RM_NOOP 0x00000000
#define G_RM_NOOP2 0x00000000
#define G_RM_VISCVG 0x0C844040
#define G_RM_VISCVG2 0x03214040
#define G_RM_OPA_CI 0x0C080000
#define G_RM_OPA_CI2 0x03020000

class Vertex
{
public:
	int16_t x, y, z;
	uint16_t flag;
	int16_t s, t;
	uint8_t r, g, b, a;

	Vertex();
	Vertex(int16_t nX, int16_t nY, int16_t nZ, uint16_t nFlag, int16_t nS, int16_t nT, uint8_t nR, uint8_t nG, uint8_t nB, uint8_t nA);
	Vertex(std::vector<uint8_t> rawData, int rawDataIndex);
};

class ZDisplayList : public ZResource
{
protected:
	// Test
	uint32_t lastTexWidth, lastTexHeight, lastTexAddr, lastTexSeg;
	F3DZEXTexFormats lastTexFmt;
	F3DZEXTexSizes lastTexSiz, lastTexSizTest, lastCISiz;
	bool lastTexLoaded;
	bool lastTexIsPalette;

	//void ParseXML(tinyxml2::XMLElement* reader);
	static TextureType TexFormatToTexType(F3DZEXTexFormats fmt, F3DZEXTexSizes siz);
	void ParseRawData();

	// Various Instruction Optimizations
	bool SequenceCheck(std::vector<F3DZEXOpcode> sequence, int startIndex);
	int OptimizationChecks(int startIndex, std::string& output, std::string prefix);
	int OptimizationCheck_LoadTextureBlock(int startIndex, std::string& output, std::string prefix);
	int OptimizationCheck_LoadMultiBlock(int startIndex, std::string& output, std::string prefix);
public:
	std::string sceneSegName;
	ZRoom* scene;
	std::vector<uint64_t> instructions;

	//int dListAddress;

	std::map<uint32_t, std::vector<Vertex>> vertices;
	std::map<uint32_t, std::string> vtxDeclarations;
	std::vector<ZDisplayList*> otherDLists;

	std::map<uint32_t, ZTexture*> textures;
	std::map<uint32_t, std::string> texDeclarations;

	std::string defines; // Hack for special cases where vertex arrays intersect...
	std::vector<uint8_t> fileData;

	ZDisplayList();
	ZDisplayList(std::vector<uint8_t> nRawData, int rawDataIndex, int rawDataSize);

	static ZDisplayList* ExtractFromXML(tinyxml2::XMLElement* reader, std::vector<uint8_t> nRawData, int rawDataIndex, int rawDataSize, std::string nRelPath);
	static ZDisplayList* BuildFromXML(tinyxml2::XMLElement* reader, std::string inFolder, bool readFile);

	void TextureGenCheck(std::string prefix);
	static bool TextureGenCheck(std::vector<uint8_t> fileData, std::map<uint32_t, ZTexture*>& textures, ZRoom* scene, ZFile* parent, std::string prefix, uint32_t texWidth, uint32_t texHeight, uint32_t texAddr, uint32_t texSeg, F3DZEXTexFormats texFmt, F3DZEXTexSizes texSiz, bool texLoaded, bool texIsPalette);
	static int GetDListLength(std::vector<uint8_t> rawData, int rawDataIndex);

	std::vector<uint8_t> GetRawData();
	int GetRawDataSize();
	std::string GetSourceOutputHeader(const std::string& prefix);
	std::string GetSourceOutputCode(const std::string& prefix);
	void Save(const std::string& outFolder);
	virtual void GenerateHLIntermediette(HLFileIntermediette& hlFile);
};
