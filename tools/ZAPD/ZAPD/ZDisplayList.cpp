#include "ZDisplayList.h"
#include "BitConverter.h"
#include "StringHelper.h"
#include "HighLevel/HLModelIntermediette.h"
#include "Globals.h"
#include <chrono>
#include <algorithm>
#include <File.h>
#include <Path.h>
#include <math.h>

using namespace std;
using namespace tinyxml2;

ZDisplayList::ZDisplayList() : ZResource()
{
	defines = "";
	sceneSegName = "";
	lastTexWidth = 0;
	lastTexHeight = 0;
	lastTexAddr = 0;
	lastTexFmt = F3DZEXTexFormats::G_IM_FMT_RGBA;
	lastTexSiz = F3DZEXTexSizes::G_IM_SIZ_16b;
	lastTexSizTest = F3DZEXTexSizes::G_IM_SIZ_16b;
	lastTexLoaded = false;
	lastTexIsPalette = false;
	name = "";
	scene = nullptr;

	fileData = vector<uint8_t>();
	instructions = vector<uint64_t>();
	vertices = map<uint32_t, vector<Vertex>>();
	vtxDeclarations = map<uint32_t, string>();
	otherDLists = vector<ZDisplayList*>();
	textures = map<uint32_t, ZTexture*>();
	texDeclarations = map<uint32_t, std::string>();
}

// EXTRACT MODE
ZDisplayList* ZDisplayList::ExtractFromXML(XMLElement* reader, vector<uint8_t> nRawData, int nRawDataIndex, int rawDataSize, string nRelPath)
{
	ZDisplayList* dList = new ZDisplayList();

	dList->ParseXML(reader);

	//dList->name = reader->Attribute("Name");

	dList->rawData = nRawData;
	dList->rawDataIndex = nRawDataIndex;
	dList->fileData = dList->rawData;
	dList->relativePath = nRelPath;
	dList->rawData = vector<uint8_t>(dList->rawData.data() + dList->rawDataIndex, dList->rawData.data() + dList->rawDataIndex + rawDataSize);
	dList->ParseRawData();

	return dList;
}

ZDisplayList* ZDisplayList::BuildFromXML(XMLElement* reader, string inFolder, bool readFile)
{
	ZDisplayList* dList = new ZDisplayList();

	dList->SetName(reader->Attribute("Name"));
	return dList;
}

ZDisplayList::ZDisplayList(vector<uint8_t> nRawData, int nRawDataIndex, int rawDataSize) : ZDisplayList()
{
	fileData = nRawData;
	rawDataIndex = nRawDataIndex;
	name = StringHelper::Sprintf("Dlist0x%06X", rawDataIndex);
	rawData = vector<uint8_t>(nRawData.data() + rawDataIndex, nRawData.data() + rawDataIndex + rawDataSize);
	ParseRawData();
}

void ZDisplayList::ParseRawData()
{
	int numInstructions = (int)rawData.size() / 8;
	uint8_t* rawDataArr = rawData.data();

	instructions.reserve(numInstructions);

	for (int i = 0; i < numInstructions; i++)
		instructions.push_back(BitConverter::ToUInt64BE(rawDataArr, (i * 8)));
}

int ZDisplayList::GetDListLength(vector<uint8_t> rawData, int rawDataIndex)
{
	int i = 0;

	while (true)
	{
		F3DZEXOpcode opcode = (F3DZEXOpcode)rawData[rawDataIndex + (i * 8)];
		i++;

		if (opcode == F3DZEXOpcode::G_ENDDL)
			return i * 8;
	}
}

bool ZDisplayList::SequenceCheck(vector<F3DZEXOpcode> sequence, int startIndex)
{
	bool success = true;

	for (int j = 0; j < sequence.size(); j++)
	{
		F3DZEXOpcode opcode = (F3DZEXOpcode)(instructions[startIndex + j] >> 56);

		if (sequence[j] != opcode)
		{
			success = false;
			break;
		}
	}

	if (success)
		return true;

	return false;
}

int ZDisplayList::OptimizationChecks(int startIndex, string& output, string prefix)
{
	int result = -1;

	result = OptimizationCheck_LoadTextureBlock(startIndex, output, prefix);

	if (result != -1)
		return result;

	return -1;
}

int ZDisplayList::OptimizationCheck_LoadTextureBlock(int startIndex, string& output, string prefix)
{
	std::vector<F3DZEXOpcode> sequence = { F3DZEXOpcode::G_SETTIMG, F3DZEXOpcode::G_SETTILE, F3DZEXOpcode::G_RDPLOADSYNC, F3DZEXOpcode::G_LOADBLOCK, F3DZEXOpcode::G_RDPPIPESYNC, F3DZEXOpcode::G_SETTILE, F3DZEXOpcode::G_SETTILESIZE };

	bool seqRes = SequenceCheck(sequence, startIndex);

	if (seqRes)
	{
		// gsDPLoadTextureBlock(texAddr, fmt, siz, width, height, pal, cms, cmt, masks, maskt, shifts, shiftt)
		// gsDPLoadMultiBlock(texAddr, tmem, rtile, fmt, siz, width, height, pal, cms, cmt, masks, maskt, shifts, shiftt)
		// gsDPLoadTextureBlock_4b(texAddr, fmt, width, height, pal, cms, cmt, masks, maskt, shifts, shiftt)
		// gsDPLoadMultiBlock_4b(texAddr, tmem, rtile, fmt, width, height, pal, cms, cmt, masks, maskt, shifts, shiftt)

		uint32_t texAddr, tmem, rtile, fmt, siz, sizB, width, height, width2, height2, pal, cms, cmt, masks, maskt, shifts, shiftt;
		string texStr = "";

		// gsDPSetTextureImage
		{
			uint64_t data = instructions[startIndex + 0];

			int __ = (data & 0x00FF000000000000) >> 48;
			int www = (data & 0x00000FFF00000000) >> 32;

			fmt = (__ & 0xE0) >> 5;
			siz = (__ & 0x18) >> 3;
			texAddr = SEG2FILESPACE(data);
			int segmentNumber = (data & 0xFF000000) >> 24;

			if (segmentNumber == 0x80) // Is this texture defined in code?
				texAddr -= SEG2FILESPACE(parent->baseAddress);

			lastTexSeg = (data & 0xFF000000);

			Declaration* texDecl = nullptr;

			if (parent != nullptr && segmentNumber != 2) // HACK: Until we have declarations use segment addresses, we'll exclude scene references...
			{
				texDecl = parent->GetDeclaration(texAddr);

				if (texDecl == nullptr)
					texDecl = parent->GetDeclaration(data);
			}

			if (texAddr != 0)
			{
				if (texDecl != nullptr)
					texStr = StringHelper::Sprintf("%s", texDecl->varName.c_str());
				else if (segmentNumber == 2)
					texStr = StringHelper::Sprintf("%sTex_%06X", scene->GetName().c_str(), texAddr);
				else if (!Globals::Instance->HasSegment(segmentNumber)) // Probably an external asset we are unable to track
					texStr = StringHelper::Sprintf("0x%06X", data);
				else
					texStr = StringHelper::Sprintf("%sTex_%06X", prefix.c_str(), texAddr);
			}
			else if (segmentNumber != 3)
				texStr = StringHelper::Sprintf("0x%06X", data);
			else
				texStr = StringHelper::Sprintf("0");
		}

		// gsDPSetTile
		{
			uint64_t data = instructions[startIndex + 1];

			tmem = (data & 0b0000000000000000111111111111111100000000000000000000000000000000) >> 32;

			cmt = (data & 0b0000000000000000000000000000000000000000000011000000000000000000) >> 18;
			maskt = (data & 0b0000000000000000000000000000000000000000000000111100000000000000) >> 14;
			shiftt = (data & 0b0000000000000000000000000000000000000000000000000011110000000000) >> 10;
			cms = (data & 0b0000000000000000000000000000000000000000000000000000001100000000) >> 8;
			masks = (data & 0b0000000000000000000000000000000000000000000000000000000011110000) >> 4;
			shifts = (data & 0b0000000000000000000000000000000000000000000000000000000000001111);

			//sprintf(line, "gsDPSetTile(%s, %s, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i),", fmtTbl[fff].c_str(), sizTbl[ii].c_str(), nnnnnnnnn, mmmmmmmmm, ttt, pppp, cc, aaaa, ssss, dd, bbbb, uuuu);

		}

		// gsDPLoadSync

		// gsDPLoadBlock

		// gsDPPipeSync

		// gsDPSetTile
		{
			uint64_t data = instructions[startIndex + 5];
			int __ = (data & 0x00FF000000000000) >> 48;
			pal = (data & 0b0000000000000000000000000000000000000000111100000000000000000000) >> 20;
			//siz = (__ & 0x18) >> 3;
			rtile = (data & 0b0000000000000000000000000000000011111111000000000000000000000000) >> 24;
			sizB = (__ & 0x18) >> 3;
		}

		// gsDPSetTileSize
		{
			uint64_t data = instructions[startIndex + 6];
			int uuu = (data & 0x0000000000FFF000) >> 12;
			int vvv = (data & 0x0000000000000FFF);

			int shiftAmtW = 2;
			int shiftAmtH = 2;

			if (sizB == (int)F3DZEXTexSizes::G_IM_SIZ_8b && fmt == (int)F3DZEXTexFormats::G_IM_FMT_IA)
				shiftAmtW = 3;

			if (sizB == (int)F3DZEXTexSizes::G_IM_SIZ_4b)
				shiftAmtW = 3;

			if (sizB == (int)F3DZEXTexSizes::G_IM_SIZ_4b && fmt == (int)F3DZEXTexFormats::G_IM_FMT_IA)
				shiftAmtH = 3;

			width = (uuu >> shiftAmtW) + 1;
			height = (vvv >> shiftAmtH) + 1;

			width2 = (uuu >> 2) + 1;
			height2 = (vvv >> 2) + 1;
		}

		string fmtTbl[] = { "G_IM_FMT_RGBA", "G_IM_FMT_YUV", "G_IM_FMT_CI", "G_IM_FMT_IA", "G_IM_FMT_I" };
		string sizTbl[] = { "G_IM_SIZ_4b", "G_IM_SIZ_8b", "G_IM_SIZ_16b", "G_IM_SIZ_32b" };

		//output += StringHelper::Sprintf("gsDPLoadTextureBlock(%s, %s, %s, %i, %i, %i, %i, %i, %i, %i, %i, %i),",
									//texStr.c_str(), fmtTbl[fmt].c_str(), sizTbl[siz].c_str(), width, height, pal, cms, cmt, masks, maskt, shifts, shiftt);

		if (siz == 2 && sizB == 0)
		{
			if (tmem != 0)
				output += StringHelper::Sprintf("gsDPLoadMultiBlock_4b(%s, %i, %i, %s, %i, %i, %i, %i, %i, %i, %i, %i, %i),",
					texStr.c_str(), tmem, rtile, fmtTbl[fmt].c_str(), width2, height2, pal, cms, cmt, masks, maskt, shifts, shiftt);
			else
				output += StringHelper::Sprintf("gsDPLoadTextureBlock_4b(%s, %s, %i, %i, %i, %i, %i, %i, %i, %i, %i),",
				texStr.c_str(), fmtTbl[fmt].c_str(), width2, height2, pal, cms, cmt, masks, maskt, shifts, shiftt);
		}
		/*else if (siz == 2 && sizB == 1)
		{
			output += StringHelper::Sprintf("gsDPLoadTextureBlock(%s, %s, %s, %i, %i, %i, %i, %i, %i, %i, %i, %i),",
				texStr.c_str(), fmtTbl[fmt].c_str(), sizTbl[siz].c_str(), width2, height2, pal, cms, cmt, masks, maskt, shifts, shiftt);
		}*/
		else
		{
			if (siz != sizB)
			{
				lastTexAddr = texAddr;
				lastTexFmt = (F3DZEXTexFormats)fmt;
				lastTexWidth = width;
				lastTexHeight = height;
				lastTexSiz = (F3DZEXTexSizes)siz;
				lastTexLoaded = true;

				TextureGenCheck(prefix);

				return -1;
			}

			output += StringHelper::Sprintf("gsDPLoadMultiBlock(%s, %i, %i, %s, %s, %i, %i, %i, %i, %i, %i, %i, %i, %i),",
				texStr.c_str(), tmem, rtile, fmtTbl[fmt].c_str(), sizTbl[siz].c_str(), width, height, pal, cms, cmt, masks, maskt, shifts, shiftt);
		}

		lastTexAddr = texAddr;
		lastTexFmt = (F3DZEXTexFormats)fmt;
		lastTexWidth = width;
		lastTexHeight = height;
		lastTexSiz = (F3DZEXTexSizes)siz;
		lastTexLoaded = true;

		TextureGenCheck(prefix);

		return (int)sequence.size();
	}

	return -1;
}

string ZDisplayList::GetSourceOutputHeader(const std::string& prefix)
{
	return "";
}

string ZDisplayList::GetSourceOutputCode(const std::string& prefix)
{
	char line[4096];
	string sourceOutput = "";

	for (int i = 0; i < instructions.size(); i++)
	{
		F3DZEXOpcode opcode = (F3DZEXOpcode)(instructions[i] >> 56);
		uint64_t data = instructions[i];
		sourceOutput += "    ";

		auto start = chrono::steady_clock::now();

		int optimizationResult = OptimizationChecks(i, sourceOutput, prefix);

		if (optimizationResult != -1)
		{
			i += optimizationResult - 1;
			line[0] = '\0';
		}
		else
		{
			switch (opcode)
			{
			case F3DZEXOpcode::G_NOOP:
				sprintf(line, "gsDPNoOpTag(0x%08lX),", data & 0xFFFFFFFF);
				break;
			case F3DZEXOpcode::G_DL:
			{
				int pp = (data & 0x00FF000000000000) >> 56;
				int segNum = (data & 0xFF000000) >> 24;

				Declaration* dListDecl = nullptr;

				if (parent != nullptr)
					dListDecl = parent->GetDeclaration(SEG2FILESPACE(data));

				if (pp != 0)
				{
					if (!Globals::Instance->HasSegment(segNum))
						sprintf(line, "gsSPBranchList(0x%08lX),", data & 0xFFFFFFFF);
					else if (dListDecl != nullptr)
						sprintf(line, "gsSPBranchList(%s),", dListDecl->varName.c_str());
					else
						sprintf(line, "gsSPBranchList(%sDlist0x%06lX),", prefix.c_str(), SEG2FILESPACE(data));
				}
				else
				{
					if (!Globals::Instance->HasSegment(segNum))
						sprintf(line, "gsSPDisplayList(0x%08lX),", data & 0xFFFFFFFF);
					else if (dListDecl != nullptr)
						sprintf(line, "gsSPDisplayList(%s),", dListDecl->varName.c_str());
					else
						sprintf(line, "gsSPDisplayList(%sDlist0x%06lX),", prefix.c_str(), SEG2FILESPACE(data));
				}

				int segmentNumber = (data & 0xFF000000) >> 24;

				if (segmentNumber == 8 || segmentNumber == 9 || segmentNumber == 10 || segmentNumber == 11 || segmentNumber == 12 || segmentNumber == 13) // Used for runtime-generated display lists
				{
					if (pp != 0)
						sprintf(line, "gsSPBranchList(0x%08lX),", data & 0xFFFFFFFF);
					else
						sprintf(line, "gsSPDisplayList(0x%08lX),", data & 0xFFFFFFFF);
				}
				else
				{
					ZDisplayList* nList = new ZDisplayList(fileData, data & 0x00FFFFFF, GetDListLength(fileData, data & 0x00FFFFFF));
					nList->scene = scene;
					nList->parent = parent;
					otherDLists.push_back(nList);
				}
			}
			break;
			case F3DZEXOpcode::G_MODIFYVTX:
			{
				int ww = (data & 0x00FF000000000000ULL) >> 48;
				int nnnn = (data & 0x0000FFFF00000000ULL) >> 32;
				int vvvvvvvv = (data & 0x00000000FFFFFFFFULL);

				sprintf(line, "gsSPModifyVertex(%i, %i, %i),", nnnn / 2, ww, vvvvvvvv);
			}
			break;
			case F3DZEXOpcode::G_CULLDL:
			{
				int vvvv = (data & 0xFFFF00000000) >> 32;
				int wwww = (data & 0x0000FFFF);

				sprintf(line, "gsSPCullDisplayList(%i, %i),", vvvv / 2, wwww / 2);
			}
			break;
			/*case F3DZEXOpcode::G_BRANCH_Z:
			{
				int aaa = (data & 0x00FFF00000000000) >> 44;
				int bbb = (data & 0x00000FFF00000000) >> 32;
				int zzzzzzzz = (data & 0x00000000FFFFFFFF);

				sprintf(line, "gsSPBranchLessZraw(%i, %i, %i),", );
			}
			break;*/
			case F3DZEXOpcode::G_TRI1:
			{
				int aa = ((data & 0x00FF000000000000ULL) >> 48) / 2;
				int bb = ((data & 0x0000FF0000000000ULL) >> 40) / 2;
				int cc = ((data & 0x000000FF00000000ULL) >> 32) / 2;
				sprintf(line, "gsSP1Triangle(%i, %i, %i, 0),", aa, bb, cc);
			}
			break;
			case F3DZEXOpcode::G_TRI2:
			{
				int aa = ((data & 0x00FF000000000000ULL) >> 48) / 2;
				int bb = ((data & 0x0000FF0000000000ULL) >> 40) / 2;
				int cc = ((data & 0x000000FF00000000ULL) >> 32) / 2;
				int dd = ((data & 0x00000000FF0000ULL) >> 16) / 2;
				int ee = ((data & 0x0000000000FF00ULL) >> 8) / 2;
				int ff = ((data & 0x000000000000FFULL) >> 0) / 2;
				sprintf(line, "gsSP2Triangles(%i, %i, %i, 0, %i, %i, %i, 0),", aa, bb, cc, dd, ee, ff);
			}
			break;
			case F3DZEXOpcode::G_QUAD:
			{
				int aa = ((data & 0x00FF000000000000ULL) >> 48) / 2;
				int bb = ((data & 0x0000FF0000000000ULL) >> 40) / 2;
				int cc = ((data & 0x000000FF00000000ULL) >> 32) / 2;
				int dd = ((data & 0x000000000000FFULL)) / 2;
				sprintf(line, "gsSP1Quadrangle(%i, %i, %i, %i, 0),", aa, bb, cc, dd);
			}
			break;
			case F3DZEXOpcode::G_VTX:
			{
				int nn = (data & 0x000FF00000000000ULL) >> 44;
				int aa = (data & 0x000000FF00000000ULL) >> 32;
				uint32_t vtxAddr = SEG2FILESPACE(data);

				if (GETSEGNUM(data) == 0x80) // Are these vertices defined in code?
					vtxAddr -= SEG2FILESPACE(parent->baseAddress);

				//sprintf(line, "gsSPVertex(%sVtx_%06X, %i, %i),", prefix.c_str(), vtxAddr, nn, ((aa >> 1) - nn));
				sprintf(line, "gsSPVertex(@r, %i, %i),", nn, ((aa >> 1) - nn));
				references.push_back(vtxAddr);

				{
					uint32_t currentPtr = SEG2FILESPACE(data);

					if (GETSEGNUM(data) == 0x80) // Are these vertices defined in code?
						currentPtr -= SEG2FILESPACE(parent->baseAddress);

					// Check for vertex intersections from other display lists
					// TODO: These two could probably be condenced to one...
					if (parent->GetDeclarationRanged(vtxAddr + (nn * 16)) != nullptr)
					{
						Declaration* decl = parent->GetDeclarationRanged(vtxAddr + (nn * 16));
						uint32_t addr = parent->GetDeclarationRangedAddress(vtxAddr + (nn * 16));
						int diff = addr - vtxAddr;
						if (diff > 0)
							nn = diff / 16;
						else
							nn = 0;
					}

					if (parent->GetDeclarationRanged(vtxAddr) != nullptr)
					{
						Declaration* decl = parent->GetDeclarationRanged(vtxAddr);
						uint32_t addr = parent->GetDeclarationRangedAddress(vtxAddr);
						int diff = addr - vtxAddr;
						if (diff > 0)
							nn = diff / 16;
						else
							nn = 0;
					}

					if (nn > 0)
					{
						vector<Vertex> vtxList = vector<Vertex>();
						vtxList.reserve(nn);

						for (int i = 0; i < nn; i++)
						{
							Vertex vtx = Vertex(fileData, currentPtr);
							vtxList.push_back(vtx);

							currentPtr += 16;
						}

						vertices[vtxAddr] = vtxList;
					}
				}

			}
			break;
			case F3DZEXOpcode::G_SETTIMG: // HOTSPOT
			{
				int __ = (data & 0x00FF000000000000) >> 48;
				int www = (data & 0x00000FFF00000000) >> 32;
				string fmtTbl[] = { "G_IM_FMT_RGBA", "G_IM_FMT_YUV", "G_IM_FMT_CI", "G_IM_FMT_IA", "G_IM_FMT_I" };
				string sizTbl[] = { "G_IM_SIZ_4b", "G_IM_SIZ_8b", "G_IM_SIZ_16b", "G_IM_SIZ_32b" };

				uint32_t fmt = (__ & 0xE0) >> 5;
				uint32_t siz = (__ & 0x18) >> 3;

				if (Globals::Instance->verbosity >= VERBOSITY_DEBUG)
					printf("TextureGenCheck G_SETTIMG\n");

				TextureGenCheck(prefix); // HOTSPOT

				lastTexFmt = (F3DZEXTexFormats)fmt;
				lastTexSiz = (F3DZEXTexSizes)siz;
				lastTexSeg = data;
				lastTexAddr = data & 0x00FFFFFF;

				if (GETSEGNUM(lastTexSeg) == 0x80) // Is this texture defined in code?
					lastTexAddr -= SEG2FILESPACE(parent->baseAddress);

				int segmentNumber = (data >> 24) & 0xFF;

				if (segmentNumber != 2)
				{
					char texStr[2048];
					int32_t texAddress = SEG2FILESPACE(data);
					Declaration* texDecl = nullptr;

					if (segmentNumber == 0x80) // Is this texture defined in code?
						texAddress -= SEG2FILESPACE(parent->baseAddress);

					if (parent != nullptr)
					{
						if (Globals::Instance->HasSegment(segmentNumber))
							texDecl = parent->GetDeclaration(texAddress);
						else
							texDecl = parent->GetDeclaration(data);
					}

					if (texDecl != nullptr)
						sprintf(texStr, "%s", texDecl->varName.c_str());
					else if (data != 0 && Globals::Instance->HasSegment(segmentNumber))
						sprintf(texStr, "%sTex_%06X", prefix.c_str(), texAddress);
					else
					{
						// TEST: CHECK OTHER FILES FOR REF
						//if (segmentNumber == 4)
						//{
							//Globals::Instance->FindSymbolSegRef(segmentNumber, texAddress);
						//}
						//else
						{
							sprintf(texStr, "0x%08lX", data & 0xFFFFFFFF);
						}
					}

					sprintf(line, "gsDPSetTextureImage(%s, %s, %i, %s),", fmtTbl[fmt].c_str(), sizTbl[siz].c_str(), www + 1, texStr);
					//sprintf(line, "gsDPSetTextureImage(%s, %s, %i, @r),", fmtTbl[fmt].c_str(), sizTbl[siz].c_str(), www + 1);
					//references.push_back(data & 0x00FFFFFF);
				}
				else
				{
					//sprintf(line, "gsDPSetTextureImage(%s, %s, %i, 0x%08X),", fmtTbl[fmt].c_str(), sizTbl[siz].c_str(), www + 1, data & 0xFFFFFFFF);
					sprintf(line, "gsDPSetTextureImage(%s, %s, %i, %sTex_%06lX),", fmtTbl[fmt].c_str(), sizTbl[siz].c_str(), www + 1, scene->GetName().c_str(), SEG2FILESPACE(data));
				}
			}
			break;
			case F3DZEXOpcode::G_GEOMETRYMODE:
			{
				int cccccc = (data & 0x00FFFFFF00000000) >> 32;
				int ssssssss = (data & 0xFFFFFFFF);
				string geoModeStr = "G_TEXTURE_ENABLE";

				int geoModeParam = ~cccccc;

				if (ssssssss != 0)
					geoModeParam = ssssssss;

				if (geoModeParam & 0x00000001)
					geoModeStr += " | G_ZBUFFER";

				if (geoModeParam & 0x00000004)
					geoModeStr += " | G_SHADE";

				if (geoModeParam & 0x00000200)
					geoModeStr += " | G_CULL_FRONT";

				if (geoModeParam & 0x00000400)
					geoModeStr += " | G_CULL_BACK";

				if (geoModeParam & 0x00010000)
					geoModeStr += " | G_FOG";

				if (geoModeParam & 0x00020000)
					geoModeStr += " | G_LIGHTING";

				if (geoModeParam & 0x00040000)
					geoModeStr += " | G_TEXTURE_GEN";

				if (geoModeParam & 0x00080000)
					geoModeStr += " | G_TEXTURE_GEN_LINEAR";

				if (geoModeParam & 0x00200000)
					geoModeStr += " | G_SHADING_SMOOTH";

				if (geoModeParam & 0x00800000)
					geoModeStr += " | G_CLIPPING";

				if (ssssssss != 0)
				{
					if ((~cccccc & 0xFF000000) != 0)
						sprintf(line, "gsSPSetGeometryMode(%s),", geoModeStr.c_str());
					else
						sprintf(line, "gsSPLoadGeometryMode(%s),", geoModeStr.c_str());
				}
				else
					sprintf(line, "gsSPClearGeometryMode(%s),", geoModeStr.c_str());

				//sprintf(line, "gsSPGeometryMode(0x%08X, 0x%08X),", ~cccccc, ssssssss);
			}
			break;
			case F3DZEXOpcode::G_SETPRIMCOLOR:
			{
				int mm = (data & 0x0000FF0000000000) >> 40;
				int ff = (data & 0x000000FF00000000) >> 32;
				int rr = (data & 0x00000000FF000000) >> 24;
				int gg = (data & 0x0000000000FF0000) >> 16;
				int bb = (data & 0x000000000000FF00) >> 8;
				int aa = (data & 0x00000000000000FF) >> 0;
				sprintf(line, "gsDPSetPrimColor(%i, %i, %i, %i, %i, %i),", mm, ff, rr, gg, bb, aa);
			}
			break;
			case F3DZEXOpcode::G_SETOTHERMODE_L:
			{
				int ss = (data & 0x0000FF0000000000) >> 40;
				int nn = (data & 0x000000FF00000000) >> 32;
				int dd = (data & 0xFFFFFFFF);

				int sft = 32 - (nn + 1) - ss;

				//if (sft == 3)
				if (false)
				{
					int mode1 = (dd & 0xCCCC0000) >> 0;
					int mode2 = (dd & 0x33330000) >> 0;

					// TODO: Jesus Christ This is Messy

					uint32_t tblA[] =
					{
						G_RM_FOG_SHADE_A, G_RM_FOG_PRIM_A, G_RM_PASS, G_RM_AA_ZB_OPA_SURF,
						G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_OPA_DECAL, G_RM_AA_ZB_XLU_DECAL,
						G_RM_AA_ZB_OPA_INTER, G_RM_AA_ZB_XLU_INTER, G_RM_AA_ZB_XLU_LINE,
						G_RM_AA_ZB_DEC_LINE, G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_INTER,
						G_RM_AA_ZB_SUB_SURF, G_RM_AA_ZB_PCL_SURF, G_RM_AA_ZB_OPA_TERR,
						G_RM_AA_ZB_TEX_TERR, G_RM_AA_ZB_SUB_TERR, G_RM_RA_ZB_OPA_SURF,
						G_RM_RA_ZB_OPA_DECAL, G_RM_RA_ZB_OPA_INTER, G_RM_AA_OPA_SURF,
						G_RM_AA_XLU_SURF, G_RM_AA_XLU_LINE, G_RM_AA_DEC_LINE,
						G_RM_AA_TEX_EDGE, G_RM_AA_SUB_SURF, G_RM_AA_PCL_SURF,
						G_RM_AA_OPA_TERR, G_RM_AA_TEX_TERR, G_RM_AA_SUB_TERR,
						G_RM_RA_OPA_SURF, G_RM_ZB_OPA_SURF, G_RM_ZB_XLU_SURF,
						G_RM_ZB_OPA_DECAL, G_RM_ZB_XLU_DECAL, G_RM_ZB_CLD_SURF,
						G_RM_ZB_OVL_SURF, G_RM_ZB_PCL_SURF, G_RM_OPA_SURF,
						G_RM_XLU_SURF, G_RM_CLD_SURF, G_RM_TEX_EDGE, G_RM_PCL_SURF,
						G_RM_ADD, G_RM_NOOP, G_RM_VISCVG, G_RM_OPA_CI
					};

					uint32_t tblB[] =
					{
						G_RM_AA_ZB_OPA_SURF2,
						G_RM_AA_ZB_XLU_SURF2, G_RM_AA_ZB_OPA_DECAL2, G_RM_AA_ZB_XLU_DECAL2,
						G_RM_AA_ZB_OPA_INTER2, G_RM_AA_ZB_XLU_INTER2, G_RM_AA_ZB_XLU_LINE2,
						G_RM_AA_ZB_DEC_LINE2, G_RM_AA_ZB_TEX_EDGE2, G_RM_AA_ZB_TEX_INTER2,
						G_RM_AA_ZB_SUB_SURF2, G_RM_AA_ZB_PCL_SURF2, G_RM_AA_ZB_OPA_TERR2,
						G_RM_AA_ZB_TEX_TERR2, G_RM_AA_ZB_SUB_TERR2, G_RM_RA_ZB_OPA_SURF2,
						G_RM_RA_ZB_OPA_DECAL2, G_RM_RA_ZB_OPA_INTER2, G_RM_AA_OPA_SURF2,
						G_RM_AA_XLU_SURF2, G_RM_AA_XLU_LINE2, G_RM_AA_DEC_LINE2,
						G_RM_AA_TEX_EDGE2, G_RM_AA_SUB_SURF2, G_RM_AA_PCL_SURF2,
						G_RM_AA_OPA_TERR2, G_RM_AA_TEX_TERR2, G_RM_AA_SUB_TERR2,
						G_RM_RA_OPA_SURF2, G_RM_ZB_OPA_SURF2, G_RM_ZB_XLU_SURF2,
						G_RM_ZB_OPA_DECAL2, G_RM_ZB_XLU_DECAL2, G_RM_ZB_CLD_SURF2,
						G_RM_ZB_OVL_SURF2, G_RM_ZB_PCL_SURF2, G_RM_OPA_SURF2,
						G_RM_XLU_SURF2, G_RM_CLD_SURF2, G_RM_TEX_EDGE2, G_RM_PCL_SURF2,
						G_RM_ADD2, G_RM_NOOP2,G_RM_VISCVG2, G_RM_OPA_CI2
					};

					map<uint32_t, string> str =
					{
						{ G_RM_FOG_SHADE_A, "G_RM_FOG_SHADE_A" },
						{ G_RM_FOG_PRIM_A, "G_RM_FOG_PRIM_A" },
						{ G_RM_PASS, "G_RM_PASS" },
						{ G_RM_AA_ZB_OPA_SURF, "G_RM_AA_ZB_OPA_SURF" },
						{ G_RM_AA_ZB_OPA_SURF2, "G_RM_AA_ZB_OPA_SURF2" },
						{ G_RM_AA_ZB_XLU_SURF, "G_RM_AA_ZB_XLU_SURF" },
						{ G_RM_AA_ZB_XLU_SURF2, "G_RM_AA_ZB_XLU_SURF2" },
						{ G_RM_AA_ZB_OPA_DECAL, "G_RM_AA_ZB_OPA_DECAL" },
						{ G_RM_AA_ZB_OPA_DECAL2, "G_RM_AA_ZB_OPA_DECAL2" },
						{ G_RM_AA_ZB_XLU_DECAL, "G_RM_AA_ZB_XLU_DECAL" },
						{ G_RM_AA_ZB_XLU_DECAL2, "G_RM_AA_ZB_XLU_DECAL2" },
						{ G_RM_AA_ZB_OPA_INTER, "G_RM_AA_ZB_OPA_INTER" },
						{ G_RM_AA_ZB_OPA_INTER2, "G_RM_AA_ZB_OPA_INTER2" },
						{ G_RM_AA_ZB_XLU_INTER, "G_RM_AA_ZB_XLU_INTER" },
						{ G_RM_AA_ZB_XLU_INTER2, "G_RM_AA_ZB_XLU_INTER2" },
						{ G_RM_AA_ZB_XLU_LINE, "G_RM_AA_ZB_XLU_LINE" },
						{ G_RM_AA_ZB_XLU_LINE2, "G_RM_AA_ZB_XLU_LINE2" },
						{ G_RM_AA_ZB_DEC_LINE, "G_RM_AA_ZB_DEC_LINE" },
						{ G_RM_AA_ZB_DEC_LINE2, "G_RM_AA_ZB_DEC_LINE2" },
						{ G_RM_AA_ZB_TEX_EDGE, "G_RM_AA_ZB_TEX_EDGE" },
						{ G_RM_AA_ZB_TEX_EDGE2, "G_RM_AA_ZB_TEX_EDGE2" },
						{ G_RM_AA_ZB_TEX_INTER, "G_RM_AA_ZB_TEX_INTER" },
						{ G_RM_AA_ZB_TEX_INTER2, "G_RM_AA_ZB_TEX_INTER2" },
						{ G_RM_AA_ZB_SUB_SURF, "G_RM_AA_ZB_SUB_SURF" },
						{ G_RM_AA_ZB_SUB_SURF2, "G_RM_AA_ZB_SUB_SURF2" },
						{ G_RM_AA_ZB_PCL_SURF, "G_RM_AA_ZB_PCL_SURF" },
						{ G_RM_AA_ZB_PCL_SURF2, "G_RM_AA_ZB_PCL_SURF2" },
						{ G_RM_AA_ZB_OPA_TERR, "G_RM_AA_ZB_OPA_TERR" },
						{ G_RM_AA_ZB_OPA_TERR2, "G_RM_AA_ZB_OPA_TERR2" },
						{ G_RM_AA_ZB_TEX_TERR, "G_RM_AA_ZB_TEX_TERR" },
						{ G_RM_AA_ZB_TEX_TERR2, "G_RM_AA_ZB_TEX_TERR2" },
						{ G_RM_AA_ZB_SUB_TERR, "G_RM_AA_ZB_SUB_TERR" },
						{ G_RM_AA_ZB_SUB_TERR2, "G_RM_AA_ZB_SUB_TERR2" },
						{ G_RM_RA_ZB_OPA_SURF, "G_RM_RA_ZB_OPA_SURF" },
						{ G_RM_RA_ZB_OPA_SURF2, "G_RM_RA_ZB_OPA_SURF2" },
						{ G_RM_RA_ZB_OPA_DECAL, "G_RM_RA_ZB_OPA_DECAL" },
						{ G_RM_RA_ZB_OPA_DECAL2, "G_RM_RA_ZB_OPA_DECAL2" },
						{ G_RM_RA_ZB_OPA_INTER, "G_RM_RA_ZB_OPA_INTER" },
						{ G_RM_RA_ZB_OPA_INTER2, "G_RM_RA_ZB_OPA_INTER2" },
						{ G_RM_AA_OPA_SURF, "G_RM_AA_OPA_SURF" },
						{ G_RM_AA_OPA_SURF2, "G_RM_AA_OPA_SURF2" },
						{ G_RM_AA_XLU_SURF, "G_RM_AA_XLU_SURF" },
						{ G_RM_AA_XLU_SURF2, "G_RM_AA_XLU_SURF2" },
						{ G_RM_AA_XLU_LINE, "G_RM_AA_XLU_LINE" },
						{ G_RM_AA_XLU_LINE2, "G_RM_AA_XLU_LINE2" },
						{ G_RM_AA_DEC_LINE, "G_RM_AA_DEC_LINE" },
						{ G_RM_AA_DEC_LINE2, "G_RM_AA_DEC_LINE2" },
						{ G_RM_AA_TEX_EDGE, "G_RM_AA_TEX_EDGE" },
						{ G_RM_AA_TEX_EDGE2, "G_RM_AA_TEX_EDGE2" },
						{ G_RM_AA_SUB_SURF, "G_RM_AA_SUB_SURF" },
						{ G_RM_AA_SUB_SURF2, "G_RM_AA_SUB_SURF2" },
						{ G_RM_AA_PCL_SURF, "G_RM_AA_PCL_SURF" },
						{ G_RM_AA_PCL_SURF2, "G_RM_AA_PCL_SURF2" },
						{ G_RM_AA_OPA_TERR, "G_RM_AA_OPA_TERR" },
						{ G_RM_AA_OPA_TERR2, "G_RM_AA_OPA_TERR2" },
						{ G_RM_AA_TEX_TERR, "G_RM_AA_TEX_TERR" },
						{ G_RM_AA_TEX_TERR2, "G_RM_AA_TEX_TERR2" },
						{ G_RM_AA_TEX_TERR, "G_RM_AA_TEX_TERR" },
						{ G_RM_AA_TEX_TERR2, "G_RM_AA_TEX_TERR2" },
						{ G_RM_AA_SUB_TERR, "G_RM_AA_SUB_TERR" },
						{ G_RM_AA_SUB_TERR2, "G_RM_AA_SUB_TERR2" },
						{ G_RM_RA_OPA_SURF, "G_RM_RA_OPA_SURF" },
						{ G_RM_RA_OPA_SURF2, "G_RM_RA_OPA_SURF2" },
						{ G_RM_ZB_OPA_SURF, "G_RM_ZB_OPA_SURF" },
						{ G_RM_ZB_OPA_SURF2, "G_RM_ZB_OPA_SURF2" },
						{ G_RM_ZB_XLU_SURF, "G_RM_ZB_XLU_SURF" },
						{ G_RM_ZB_XLU_SURF2, "G_RM_ZB_XLU_SURF2" },
						{ G_RM_ZB_OPA_DECAL, "G_RM_ZB_OPA_DECAL" },
						{ G_RM_ZB_OPA_DECAL2, "G_RM_ZB_OPA_DECAL2" },
						{ G_RM_ZB_XLU_DECAL, "G_RM_ZB_XLU_DECAL" },
						{ G_RM_ZB_XLU_DECAL2, "G_RM_ZB_XLU_DECAL2" },
						{ G_RM_ZB_CLD_SURF, "G_RM_ZB_CLD_SURF" },
						{ G_RM_ZB_CLD_SURF2, "G_RM_ZB_CLD_SURF2" },
						{ G_RM_ZB_OVL_SURF, "G_RM_ZB_OVL_SURF" },
						{ G_RM_ZB_OVL_SURF2, "G_RM_ZB_OVL_SURF2" },
						{ G_RM_ZB_PCL_SURF, "G_RM_ZB_PCL_SURF" },
						{ G_RM_ZB_PCL_SURF2, "G_RM_ZB_PCL_SURF2" },
						{ G_RM_OPA_SURF, "G_RM_OPA_SURF" },
						{ G_RM_OPA_SURF2, "G_RM_OPA_SURF2" },
						{ G_RM_XLU_SURF, "G_RM_XLU_SURF" },
						{ G_RM_XLU_SURF2, "G_RM_XLU_SURF2" },
						{ G_RM_CLD_SURF, "G_RM_CLD_SURF" },
						{ G_RM_CLD_SURF2, "G_RM_CLD_SURF2" },
						{ G_RM_TEX_EDGE, "G_RM_TEX_EDGE" },
						{ G_RM_TEX_EDGE2, "G_RM_TEX_EDGE2" },
						{ G_RM_PCL_SURF, "G_RM_PCL_SURF" },
						{ G_RM_PCL_SURF2, "G_RM_PCL_SURF2" },
						{ G_RM_ADD, "G_RM_ADD" },
						{ G_RM_ADD2, "G_RM_ADD2" },
						{ G_RM_NOOP, "G_RM_NOOP" },
						{ G_RM_NOOP2, "G_RM_NOOP2" },
						{ G_RM_VISCVG, "G_RM_VISCVG" },
						{ G_RM_VISCVG2, "G_RM_VISCVG2" },
						{ G_RM_OPA_CI, "G_RM_OPA_CI" },
						{ G_RM_OPA_CI2, "G_RM_OPA_CI2" },
					};

					for (int k = 0; k < sizeof(tblA) / 4; k++)
					{
						if ((dd & tblA[k]) == tblA[k])
						{
							if (tblA[k] > mode1)
								mode1 = tblA[k];

							int bp = 0;
						}
					}

					for (int k = 0; k < sizeof(tblB) / 4; k++)
					{
						if ((dd & tblB[k]) == tblB[k])
						{
							if (tblB[k] > mode2)
								mode2 = tblB[k];

							int bp = 0;
						}
					}

					sprintf(line, "gsDPSetRenderMode(%s, %s),", str[mode1].c_str(), str[mode2].c_str());
				}
				else
					sprintf(line, "gsSPSetOtherMode(0xE2, %i, %i, 0x%08X),", sft, nn + 1, dd);
			}
			break;
			case F3DZEXOpcode::G_SETOTHERMODE_H:
			{
				int ss = (data & 0x0000FF0000000000) >> 40;
				int nn = (data & 0x000000FF00000000) >> 32;
				int dd = (data & 0xFFFFFFFF);

				int sft = 32 - (nn + 1) - ss;

				if (sft == 14) // G_MDSFT_TEXTLUT
				{
					string types[] = { "G_TT_NONE", "G_TT_NONE", "G_TT_RGBA16", "G_TT_IA16" };
					sprintf(line, "gsDPSetTextureLUT(%s),", types[dd >> 14].c_str());
				}
				else
					sprintf(line, "gsSPSetOtherMode(0xE3, %i, %i, 0x%08X),", sft, nn + 1, dd);
			}
			break;
			case F3DZEXOpcode::G_SETTILE:
			{
				int fff = (data & 0b0000000011100000000000000000000000000000000000000000000000000000) >> 53;
				int ii = (data & 0b0000000000011000000000000000000000000000000000000000000000000000) >> 51;
				int nnnnnnnnn = (data & 0b0000000000000011111111100000000000000000000000000000000000000000) >> 41;
				int mmmmmmmmm = (data & 0b0000000000000000000000011111111100000000000000000000000000000000) >> 32;
				int ttt = (data & 0b0000000000000000000000000000000000000111000000000000000000000000) >> 24;
				int pppp = (data & 0b0000000000000000000000000000000000000000111100000000000000000000) >> 20;
				int cc = (data & 0b0000000000000000000000000000000000000000000011000000000000000000) >> 18;
				int aaaa = (data & 0b0000000000000000000000000000000000000000000000111100000000000000) >> 14;
				int ssss = (data & 0b0000000000000000000000000000000000000000000000000011110000000000) >> 10;
				int dd = (data & 0b0000000000000000000000000000000000000000000000000000001100000000) >> 8;
				int bbbb = (data & 0b0000000000000000000000000000000000000000000000000000000011110000) >> 4;
				int uuuu = (data & 0b0000000000000000000000000000000000000000000000000000000000001111);

				string fmtTbl[] = { "G_IM_FMT_RGBA", "G_IM_FMT_YUV", "G_IM_FMT_CI", "G_IM_FMT_IA", "G_IM_FMT_I" };
				string sizTbl[] = { "G_IM_SIZ_4b", "G_IM_SIZ_8b", "G_IM_SIZ_16b", "G_IM_SIZ_32b" };

				if (fff == (int)F3DZEXTexFormats::G_IM_FMT_CI)
					lastCISiz = (F3DZEXTexSizes)ii;

				lastTexSizTest = (F3DZEXTexSizes)ii;

				sprintf(line, "gsDPSetTile(%s, %s, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i),", fmtTbl[fff].c_str(), sizTbl[ii].c_str(), nnnnnnnnn, mmmmmmmmm, ttt, pppp, cc, aaaa, ssss, dd, bbbb, uuuu);
			}
			break;
			case F3DZEXOpcode::G_SETTILESIZE:
			{
				int sss = (data & 0x00FFF00000000000) >> 44;
				int ttt = (data & 0x00000FFF00000000) >> 32;
				int uuu = (data & 0x0000000000FFF000) >> 12;
				int vvv = (data & 0x0000000000000FFF);
				int i = (data & 0x000000000F000000) >> 24;

				int shiftAmtW = 2;
				int shiftAmtH = 2;

				if (lastTexSizTest == F3DZEXTexSizes::G_IM_SIZ_8b && lastTexFmt == F3DZEXTexFormats::G_IM_FMT_IA)
					shiftAmtW = 3;

				//if (lastTexFmt == F3DZEXTexFormats::G_IM_FMT_I || lastTexFmt == F3DZEXTexFormats::G_IM_FMT_CI)
				if (lastTexSizTest == F3DZEXTexSizes::G_IM_SIZ_4b)
					shiftAmtW = 3;

				if (lastTexSizTest == F3DZEXTexSizes::G_IM_SIZ_4b && lastTexFmt == F3DZEXTexFormats::G_IM_FMT_IA)
					shiftAmtH = 3;


				lastTexWidth = (uuu >> shiftAmtW) + 1;
				lastTexHeight = (vvv >> shiftAmtH) + 1;

				if (Globals::Instance->verbosity >= VERBOSITY_DEBUG)
					printf("lastTexWidth: %i lastTexHeight: %i, lastTexSizTest: 0x%x, lastTexFmt: 0x%x\n", lastTexWidth, lastTexHeight, (uint32_t)lastTexSizTest, (uint32_t)lastTexFmt);

				if (Globals::Instance->verbosity >= VERBOSITY_DEBUG)
					printf("TextureGenCheck G_SETTILESIZE\n");

				TextureGenCheck(prefix);

				sprintf(line, "gsDPSetTileSize(%i, %i, %i, %i, %i),", i, sss, ttt, uuu, vvv);
			}
			break;
			case F3DZEXOpcode::G_LOADBLOCK:
			{
				int sss = (data & 0x00FFF00000000000) >> 48;
				int ttt = (data & 0x00000FFF00000000) >> 36;
				int i	= (data & 0x000000000F000000) >> 24;
				int xxx = (data & 0x0000000000FFF000) >> 12;
				int ddd = (data & 0x0000000000000FFF);

				//lastTexHeight = (ddd + 1) / 16;

				lastTexLoaded = true;

				//TextureGenCheck(prefix);

				sprintf(line, "gsDPLoadBlock(%i, %i, %i, %i, %i),", i, sss, ttt, xxx, ddd);
			}
			break;
			case F3DZEXOpcode::G_TEXTURE:
			{
				int ____ = (data & 0x0000FFFF00000000) >> 32;
				int ssss = (data & 0x00000000FFFF0000) >> 16;
				int tttt = (data & 0x000000000000FFFF);
				int lll = (____ & 0x3800) >> 11;
				int ddd = (____ & 0x700) >> 8;
				int nnnnnnn = (____ & 0xFE) >> 1;

				sprintf(line, "gsSPTexture(%i, %i, %i, %i, %s),", ssss, tttt, lll, ddd, nnnnnnn == 1 ? "G_ON" : "G_OFF");
			}
			break;
			case F3DZEXOpcode::G_RDPSETOTHERMODE:
			{
				int hhhhhh = (data & 0x00FFFFFF00000000) >> 32;
				int llllllll = (data & 0x00000000FFFFFFFF);

				sprintf(line, "gsDPSetOtherMode(%i, %i),", hhhhhh, llllllll);
			}
			break;
			case F3DZEXOpcode::G_POPMTX:
			{
				sprintf(line, "gsSPPopMatrix(%li),", data);
			}
			break;
			case F3DZEXOpcode::G_LOADTLUT:
			{
				int t = (data & 0x0000000007000000) >> 24;
				int ccc = (data & 0x00000000003FF000) >> 14;

				lastTexWidth = sqrt(ccc + 1);
				lastTexHeight = sqrt(ccc + 1);

				lastTexLoaded = true;
				lastTexIsPalette = true;

				if (Globals::Instance->verbosity >= VERBOSITY_DEBUG)
					printf("TextureGenCheck G_LOADTLUT (lastCISiz: %i)\n", (uint32_t)lastCISiz);

				TextureGenCheck(prefix);

				sprintf(line, "gsDPLoadTLUTCmd(%i, %i),", t, ccc);
			}
			break;
			case F3DZEXOpcode::G_SETENVCOLOR:
			{
				uint8_t r = (uint8_t)((data & 0xFF000000) >> 24);
				uint8_t g = (uint8_t)((data & 0x00FF0000) >> 16);
				uint8_t b = (uint8_t)((data & 0xFF00FF00) >> 8);
				uint8_t a = (uint8_t)((data & 0x000000FF) >> 0);

				sprintf(line, "gsDPSetEnvColor(%i, %i, %i, %i),", r, g, b, a);
			}
			break;
			case F3DZEXOpcode::G_SETCOMBINE:
			{
				int a0 = (data & 0b000000011110000000000000000000000000000000000000000000000000000) >> 52;
				int c0 = (data & 0b000000000001111100000000000000000000000000000000000000000000000) >> 47;
				int aa0 = (data & 0b00000000000000011100000000000000000000000000000000000000000000) >> 44;
				int ac0 = (data & 0b00000000000000000011100000000000000000000000000000000000000000) >> 41;
				int a1 = (data & 0b000000000000000000000011110000000000000000000000000000000000000) >> 37;
				int c1 = (data & 0b000000000000000000000000001111100000000000000000000000000000000) >> 32;
				int b0 = (data & 0b000000000000000000000000000000011110000000000000000000000000000) >> 28;
				int b1 = (data & 0b000000000000000000000000000000000001111000000000000000000000000) >> 24;
				int aa1 = (data & 0b00000000000000000000000000000000000000111000000000000000000000) >> 21;
				int ac1 = (data & 0b00000000000000000000000000000000000000000111000000000000000000) >> 18;
				int d0 = (data & 0b000000000000000000000000000000000000000000000111000000000000000) >> 15;
				int ab0 = (data & 0b00000000000000000000000000000000000000000000000111000000000000) >> 12;
				int ad0 = (data & 0b00000000000000000000000000000000000000000000000000111000000000) >> 9;
				int d1 = (data & 0b000000000000000000000000000000000000000000000000000000111000000) >> 6;
				int ab1 = (data & 0b00000000000000000000000000000000000000000000000000000000111000) >> 3;
				int ad1 = (data & 0b00000000000000000000000000000000000000000000000000000000000111) >> 0;

				string modes[] = { "COMBINED", "TEXEL0", "TEXEL1", "PRIMITIVE", "SHADE", "ENVIRONMENT", "1", "COMBINED_ALPHA",
					"TEXEL0_ALPHA", "TEXEL1_ALPHA", "PRIMITIVE_ALPHA", "SHADE_ALPHA", "ENV_ALPHA", "LOD_FRACTION", "PRIM_LOD_FRAC", "K5",
					"17", "18", "19", "20", "21", "22", "23", "24",
					"25", "26", "27", "28", "29", "30", "31", "0" };

				string modes2[] = { "COMBINED", "TEXEL0", "TEXEL1", "PRIMITIVE", "SHADE", "ENVIRONMENT", "1", "0" };

				sprintf(line, "gsDPSetCombineLERP(%s, %s, %s, %s, %s, %s, %s, %s,\n                       %s, %s, %s, %s, %s, %s, %s, %s),",
					modes[a0].c_str(), modes[b0].c_str(), modes[c0].c_str(), modes[d0].c_str(),
					modes2[aa0].c_str(), modes2[ab0].c_str(), modes2[ac0].c_str(), modes2[ad0].c_str(),
					modes[a1].c_str(), modes[b1].c_str(), modes[c1].c_str(), modes[d1].c_str(),
					modes2[aa1].c_str(), modes2[ab1].c_str(), modes2[ac1].c_str(), modes2[ad1].c_str());
			}
			break;
			case F3DZEXOpcode::G_RDPLOADSYNC:
				sprintf(line, "gsDPLoadSync(),");
				break;
			case F3DZEXOpcode::G_RDPPIPESYNC:
				sprintf(line, "gsDPPipeSync(),");
				break;
			case F3DZEXOpcode::G_RDPTILESYNC:
				sprintf(line, "gsDPTileSync(),");
				break;
			case F3DZEXOpcode::G_RDPFULLSYNC:
				sprintf(line, "gsDPFullSync(),");
				break;
			case F3DZEXOpcode::G_ENDDL:
				sprintf(line, "gsSPEndDisplayList(),");

				if (Globals::Instance->verbosity >= VERBOSITY_DEBUG)
					printf("TextureGenCheck G_ENDDL\n");

				TextureGenCheck(prefix);
				break;
			case F3DZEXOpcode::G_RDPHALF_1:
			{
				uint64_t data2 = instructions[i + 1];
				uint32_t h = (data & 0xFFFFFFFF);
				F3DZEXOpcode opcode2 = (F3DZEXOpcode)(instructions[i + 1] >> 56);

				if (opcode2 == F3DZEXOpcode::G_BRANCH_Z)
				{
					uint32_t a = (data2 & 0x00FFF00000000000) >> 44;
					uint32_t b = (data2 & 0x00000FFF00000000) >> 32;
					uint32_t z = (data2 & 0x00000000FFFFFFFF) >> 0;

					//sprintf(line, "gsDPWord(%i, 0),", h);
					sprintf(line, "gsSPBranchLessZraw(%sDlist0x%06X, 0x%02X, 0x%02X),", prefix.c_str(), h & 0x00FFFFFF, (a / 5) | (b / 2), z);

					ZDisplayList* nList = new ZDisplayList(fileData, h & 0x00FFFFFF, GetDListLength(fileData, h & 0x00FFFFFF));
					nList->scene = scene;
					nList->parent = parent;
					otherDLists.push_back(nList);

					i++;
				}
			}
			break;
			/*case F3DZEXOpcode::G_BRANCH_Z:
			{
				uint8_t h = (data & 0xFFFFFFFF);

				sprintf(line, "gsSPBranchLessZraw(%i, %i, %i),", h);
			}
				break;*/
			case F3DZEXOpcode::G_MTX:
			{
				// TODO: FINISH THIS
				uint32_t pp = (data & 0x000000FF00000000) >> 32;
				uint32_t mm = (data & 0x00000000FFFFFFFF);
				std::string matrixRef = "";

				if (Globals::Instance->symbolMap.find(mm) != Globals::Instance->symbolMap.end())
					matrixRef = StringHelper::Sprintf("&%s", Globals::Instance->symbolMap[mm].c_str());
				else
					matrixRef = StringHelper::Sprintf("0x%08X", mm);

				sprintf(line, "gsSPMatrix(%s, 0x%02X),", matrixRef.c_str(), pp ^ 0x01);
			}
			break;
			default:
				sprintf(line, "// Opcode 0x%02X unimplemented!", (uint32_t)opcode);
				break;
			}
		}

		auto end = chrono::steady_clock::now();
		auto diff = chrono::duration_cast<chrono::milliseconds>(end - start).count();

#if _MSC_VER
		//if (diff > 5)
			//printf("F3DOP: 0x%02X, TIME: %ims\n", opcode, diff);
#endif

		sourceOutput += line;

		if (i < instructions.size() - 1)
			sourceOutput += "\n";
	}

	// Iterate through our vertex lists, connect intersecting lists.
	if (vertices.size() > 0)
	{
		vector<pair<int32_t, vector<Vertex>>> verticesSorted(vertices.begin(), vertices.end());

		sort(verticesSorted.begin(), verticesSorted.end(), [](const auto& lhs, const auto& rhs)
			{
				return lhs.first < rhs.first;
			});

		for (int i = 0; i < verticesSorted.size() - 1; i++)
		{
			//int vtxSize = verticesSorted[i].second.size() * 16;
			int vtxSize = (int)vertices[verticesSorted[i].first].size() * 16;

			if ((verticesSorted[i].first + vtxSize) > verticesSorted[i + 1].first)
			{
				int intersectAmt = (verticesSorted[i].first + vtxSize) - verticesSorted[i + 1].first;
				int intersectIndex = intersectAmt / 16;

				for (int j = intersectIndex; j < verticesSorted[i + 1].second.size(); j++)
				{
					vertices[verticesSorted[i].first].push_back(verticesSorted[i + 1].second[j]);
				}

				//defines += StringHelper::Sprintf("#define %sVtx_%06X ((u32)%sVtx_%06X + 0x%06X)\n", prefix.c_str(), verticesSorted[i + 1].first, prefix.c_str(), verticesSorted[i].first, verticesSorted[i + 1].first - verticesSorted[i].first);

				int nSize = (int)vertices[verticesSorted[i].first].size();

				vertices.erase(verticesSorted[i + 1].first);
				verticesSorted.erase(verticesSorted.begin() + i + 1);

				i--;
			}
		}

		if (scene == nullptr) // TODO: Bit of a hack but it works for now...
			parent->defines += defines;

		// Generate Vertex Declarations
		for (pair<int32_t, vector<Vertex>> item : vertices)
		{
			string declaration = "";

			int curAddr = item.first;

			for (Vertex vtx : item.second)
			{
				if (curAddr != item.first)
					declaration += "\n";

				declaration += StringHelper::Sprintf("    VTX(%i, %i, %i, %i, %i, %i, %i, %i, %i),",
					vtx.x, vtx.y, vtx.z, vtx.s, vtx.t, vtx.r, vtx.g, vtx.b, vtx.a);

				curAddr += 16;
			}

			vtxDeclarations[item.first] = declaration;

			if (parent != nullptr)
			{
				parent->AddDeclarationArray(item.first, DeclarationAlignment::None, item.second.size() * 16, "static Vtx",
					StringHelper::Sprintf("%sVtx_%06X", prefix.c_str(), item.first, item.second.size()), item.second.size(), declaration);
			}
		}
	}

		// Check for texture intersections
		{
			if (scene != nullptr && scene->textures.size() != 0)
			{
				vector<pair<uint32_t, ZTexture*>> texturesSorted(scene->textures.begin(), scene->textures.end());

				sort(texturesSorted.begin(), texturesSorted.end(), [](const auto& lhs, const auto& rhs)
				{
					return lhs.first < rhs.first;
				});

				for (int i = 0; i < texturesSorted.size() - 1; i++)
				{
					int texSize = scene->textures[texturesSorted[i].first]->GetRawDataSize();

					if ((texturesSorted[i].first + texSize) > texturesSorted[i + 1].first)
					{
						int intersectAmt = (texturesSorted[i].first + texSize) - texturesSorted[i + 1].first;

						defines += StringHelper::Sprintf("#define %sTex_%06X ((u32)%sTex_%06X + 0x%06X)\n", scene->GetName().c_str(), texturesSorted[i + 1].first, scene->GetName().c_str(),
							texturesSorted[i].first, texturesSorted[i + 1].first - texturesSorted[i].first);

						scene->parent->declarations.erase(texturesSorted[i + 1].first);
						scene->textures.erase(texturesSorted[i + 1].first);
						texturesSorted.erase(texturesSorted.begin() + i + 1);

						i--;
					}
				}

				scene->extDefines += defines;
			}

			{
				vector<pair<uint32_t, ZTexture*>> texturesSorted(textures.begin(), textures.end());

				sort(texturesSorted.begin(), texturesSorted.end(), [](const auto& lhs, const auto& rhs)
					{
						return lhs.first < rhs.first;
					});

				for (int i = 0; i < texturesSorted.size() - 1; i++)
				{
					if (texturesSorted.size() == 0) // ?????
						break;

					int texSize = textures[texturesSorted[i].first]->GetRawDataSize();

					if ((texturesSorted[i].first + texSize) > texturesSorted[i + 1].first)
					{
						int intersectAmt = (texturesSorted[i].first + texSize) - texturesSorted[i + 1].first;

						// If we're working with a palette, resize it to its "real" dimensions
						if (texturesSorted[i].second->isPalette)
						{
							texturesSorted[i].second->SetWidth((texturesSorted[i + 1].first - texturesSorted[i].first) / 2);
							texturesSorted[i].second->SetHeight(1);
						}
						else
						{
							defines += StringHelper::Sprintf("#define %sTex_%06X ((u32)%sTex_%06X + 0x%06X)\n", prefix.c_str(), texturesSorted[i + 1].first, prefix.c_str(),
								texturesSorted[i].first, texturesSorted[i + 1].first - texturesSorted[i].first);

							textures.erase(texturesSorted[i + 1].first);
							texturesSorted.erase(texturesSorted.begin() + i + 1);

							i--;
						}
					}
				}
			}

		// Generate Texture Declarations
		for (pair<int32_t, ZTexture*> item : textures)
		{
			string declaration = "";

			declaration += item.second->GetSourceOutputCode(prefix);
			texDeclarations[item.first] = declaration;

			if (parent != nullptr)
			{
				if (parent->GetDeclaration(item.first) == nullptr)
				{
					if (Globals::Instance->verbosity >= VERBOSITY_DEBUG)
						printf("SAVING IMAGE TO %s\n", Globals::Instance->outputPath.c_str());

					item.second->Save(Globals::Instance->outputPath);

					parent->AddDeclarationIncludeArray(item.first, StringHelper::Sprintf("%s/%s.%s.inc.c",
						Globals::Instance->outputPath.c_str(), Path::GetFileNameWithoutExtension(item.second->GetName()).c_str(),
						item.second->GetExternalExtension().c_str()), item.second->GetRawDataSize(),
						"u64", StringHelper::Sprintf("%sTex_%06X", prefix.c_str(), item.first), 0);
				}
			}
		}

	}
	 
	if (parent != nullptr)
	{
		Declaration* decl = parent->AddDeclarationArray(rawDataIndex, DeclarationAlignment::None, GetRawDataSize(), "Gfx", StringHelper::Sprintf("%s", name.c_str()), 0, sourceOutput);
		decl->references = references;
		return "";
	}

	return sourceOutput;
}

// HOTSPOT
void ZDisplayList::TextureGenCheck(string prefix)
{
	if (TextureGenCheck(fileData, textures, scene, parent, prefix, lastTexWidth, lastTexHeight, lastTexAddr, lastTexSeg, lastTexFmt, lastTexSiz, lastTexLoaded, lastTexIsPalette))
	{
		lastTexAddr = 0;
		lastTexLoaded = false;
		lastTexIsPalette = false;
	}
}

// HOTSPOT
bool ZDisplayList::TextureGenCheck(vector<uint8_t> fileData, map<uint32_t, ZTexture*>& textures, ZRoom* scene, ZFile* parent, string prefix, uint32_t texWidth, uint32_t texHeight, uint32_t texAddr, uint32_t texSeg, F3DZEXTexFormats texFmt, F3DZEXTexSizes texSiz, bool texLoaded, bool texIsPalette)
{
	int segmentNumber = (texSeg & 0xFF000000) >> 24;

	if (Globals::Instance->verbosity >= VERBOSITY_DEBUG)
		printf("TextureGenCheck seg=%i width=%i height=%i ispal=%i addr=0x%06X\n", segmentNumber, texWidth, texHeight, texIsPalette, texAddr);

	if ((texSeg != 0 || texAddr != 0) && texWidth != 0 && texHeight != 0 && texLoaded && Globals::Instance->HasSegment(segmentNumber))
	{
		if (segmentNumber != 2) // Not from a scene file
		{
			ZTexture* tex = ZTexture::FromBinary(TexFormatToTexType(texFmt, texSiz), fileData, texAddr, StringHelper::Sprintf("%sTex_%06X", prefix.c_str(), texAddr), texWidth, texHeight);
			tex->isPalette = texIsPalette;
			textures[texAddr] = tex;

			return true;
		}
		else
		{
			ZTexture* tex = ZTexture::FromBinary(TexFormatToTexType(texFmt, texSiz), scene->GetRawData(), texAddr,
				StringHelper::Sprintf("%sTex_%06X", Globals::Instance->lastScene->GetName().c_str(), texAddr), texWidth, texHeight);

			if (scene != nullptr)
			{
				scene->textures[texAddr] = tex;
				scene->parent->AddDeclarationIncludeArray(texAddr, StringHelper::Sprintf("%s/%s.%s.inc.c",
					Globals::Instance->outputPath.c_str(), Path::GetFileNameWithoutExtension(tex->GetName()).c_str(), tex->GetExternalExtension().c_str()), tex->GetRawDataSize(),
					"u64", StringHelper::Sprintf("%sTex_%06X", Globals::Instance->lastScene->GetName().c_str(), texAddr), 0);
			}

			return true;
		}
	}

	return false;
}

TextureType ZDisplayList::TexFormatToTexType(F3DZEXTexFormats fmt, F3DZEXTexSizes siz)
{
	if (fmt == F3DZEXTexFormats::G_IM_FMT_RGBA)
	{
		if (siz == F3DZEXTexSizes::G_IM_SIZ_16b)
			return TextureType::RGBA16bpp;
		else if (siz == F3DZEXTexSizes::G_IM_SIZ_32b)
			return TextureType::RGBA32bpp;
	}
	else if (fmt == F3DZEXTexFormats::G_IM_FMT_CI)
	{
		//if (siz == F3DZEXTexSizes::G_IM_SIZ_8b)
			return TextureType::Palette8bpp;
	}
	else if (fmt == F3DZEXTexFormats::G_IM_FMT_IA)
	{
		if (siz == F3DZEXTexSizes::G_IM_SIZ_16b)
			return TextureType::GrayscaleAlpha16bpp;
		else if (siz == F3DZEXTexSizes::G_IM_SIZ_8b)
			return TextureType::GrayscaleAlpha8bpp;
	}
	else if (fmt == F3DZEXTexFormats::G_IM_FMT_I)
	{
		if (siz == F3DZEXTexSizes::G_IM_SIZ_4b)
			return TextureType::Grayscale4bpp;
		else if (siz == F3DZEXTexSizes::G_IM_SIZ_8b)
			return TextureType::Grayscale8bpp;
		else if (siz == F3DZEXTexSizes::G_IM_SIZ_16b)
			return TextureType::Grayscale8bpp;

	}

	return TextureType::RGBA16bpp;
}

void ZDisplayList::Save(const std::string& outFolder)
{
	//HLModelIntermediette* mdl = HLModelIntermediette::FromZDisplayList(this);

	// For testing purposes only at the moment...
	//if (Globals::Instance->testMode)
	//{
		//string xml = mdl->OutputXML();
		//string obj = mdl->ToOBJFile();
		//string fbx = mdl->ToFBXFile();

		//File::WriteAllText(outFolder + "/" + name + ".mdli", xml);
		//File::WriteAllText(outFolder + "/" + name + ".obj", obj);
		//File::WriteAllText(outFolder + "/" + name + ".fbx", fbx);
	//}
}

void ZDisplayList::GenerateHLIntermediette(HLFileIntermediette& hlFile)
{
	HLModelIntermediette* mdl = (HLModelIntermediette*)&hlFile;
	HLModelIntermediette::FromZDisplayList(mdl, this);
	mdl->blocks.push_back(new HLTerminator());
}

vector<uint8_t> ZDisplayList::GetRawData()
{
	return rawData;
}

int ZDisplayList::GetRawDataSize()
{
	return (int)instructions.size() * 8;
}

Vertex::Vertex()
{
	x = 0;
	y = 0;
	z = 0;
	flag = 0;
	s = 0;
	t = 0;
	r = 0;
	g = 0;
	b = 0;
	a = 0;
}

Vertex::Vertex(int16_t nX, int16_t nY, int16_t nZ, uint16_t nFlag, int16_t nS, int16_t nT, uint8_t nR, uint8_t nG, uint8_t nB, uint8_t nA)
{
	x = nX;
	y = nY;
	z = nZ;
	flag = nFlag;
	s = nS;
	t = nT;
	r = nR;
	g = nG;
	b = nB;
	a = nA;
}

Vertex::Vertex(std::vector<uint8_t> rawData, int rawDataIndex)
{
	const uint8_t* data = rawData.data();

	x = BitConverter::ToInt16BE(data, rawDataIndex + 0);
	y = BitConverter::ToInt16BE(data, rawDataIndex + 2);
	z = BitConverter::ToInt16BE(data, rawDataIndex + 4);
	flag = BitConverter::ToInt16BE(data, rawDataIndex + 6);
	s = BitConverter::ToInt16BE(data, rawDataIndex + 8);
	t = BitConverter::ToInt16BE(data, rawDataIndex + 10);
	r = data[rawDataIndex + 12];
	g = data[rawDataIndex + 13];
	b = data[rawDataIndex + 14];
	a = data[rawDataIndex + 15];
}
