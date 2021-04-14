#include "SetMesh.h"
#include <Globals.h>
#include <Path.h>
#include "../../BitConverter.h"
#include "../../StringHelper.h"
#include "../../ZFile.h"
#include "../ZRoom.h"
#include "ZPrerender.h"

using namespace std;

SetMesh::SetMesh(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex,
                 int segAddressOffset)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	data = rawData[rawDataIndex + 1];
	segmentOffset = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));

	string declaration = "";
	int8_t meshHeaderType = rawData[segmentOffset + 0];

	if (meshHeaderType == 0)
	{
		MeshHeader0* meshHeader0 = new MeshHeader0();
		meshHeader0->headerType = 0;
		meshHeader0->entries = vector<MeshEntry0*>();

		meshHeader0->dListStart = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, segmentOffset + 4));
		meshHeader0->dListEnd = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, segmentOffset + 8));

		int8_t numEntries = rawData[segmentOffset + 1];
		uint32_t currentPtr = meshHeader0->dListStart;

		// Hack for Syotes
		for (int i = 0; i < abs(segAddressOffset); i++)
		{
			rawData.erase(rawData.begin());
			segmentOffset--;
		}

		for (int i = 0; i < numEntries; i++)
		{
			MeshEntry0* entry = new MeshEntry0();
			entry->opaqueDListAddr = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, currentPtr + 0));
			entry->translucentDListAddr =
				GETSEGOFFSET(BitConverter::ToInt32BE(rawData, currentPtr + 4));

			if (entry->opaqueDListAddr != 0)
			{
				entry->opaqueDList = new ZDisplayList(
					rawData, entry->opaqueDListAddr,
					ZDisplayList::GetDListLength(rawData, entry->opaqueDListAddr,
				                                 Globals::Instance->game == ZGame::OOT_SW97 ?
                                                     DListType::F3DEX :
                                                     DListType::F3DZEX),
					zRoom->parent);
				entry->opaqueDList->scene = zRoom->scene;
				GenDListDeclarations(rawData, entry->opaqueDList);
			}

			if (entry->translucentDListAddr != 0)
			{
				entry->translucentDList = new ZDisplayList(
					rawData, entry->translucentDListAddr,
					ZDisplayList::GetDListLength(rawData, entry->translucentDListAddr,
				                                 Globals::Instance->game == ZGame::OOT_SW97 ?
                                                     DListType::F3DEX :
                                                     DListType::F3DZEX),
					zRoom->parent);
				entry->translucentDList->scene = zRoom->scene;
				GenDListDeclarations(rawData, entry->translucentDList);
			}

			meshHeader0->entries.push_back(entry);

			currentPtr += 8;
		}

		declaration += StringHelper::Sprintf("{ 0 }, 0x%02X, ", meshHeader0->entries.size());

		if (meshHeader0->dListStart != 0)
			declaration += StringHelper::Sprintf("(u32)&%sMeshDListEntry0x%06X, ",
			                                     zRoom->GetName().c_str(), meshHeader0->dListStart);
		else
			declaration += "0, ";

		if (meshHeader0->dListEnd != 0)
			declaration += StringHelper::Sprintf(
				"(u32)&(%sMeshDListEntry0x%06X) + sizeof(%sMeshDListEntry0x%06X)",
				zRoom->GetName().c_str(), meshHeader0->dListStart, zRoom->GetName().c_str(),
				meshHeader0->dListStart);
		else
			declaration += "0";

		zRoom->parent->AddDeclaration(
			segmentOffset, DeclarationAlignment::Align16, 12, "MeshHeader0",
			StringHelper::Sprintf("%sMeshHeader0x%06X", zRoom->GetName().c_str(), segmentOffset),
			declaration);

		declaration = "";

		for (size_t i = 0; i < meshHeader0->entries.size(); i++)
		{
			if (meshHeader0->entries[i]->opaqueDListAddr != 0)
				declaration +=
					StringHelper::Sprintf("    { (u32)%sDL_%06X, ", zRoom->GetName().c_str(),
				                          meshHeader0->entries[i]->opaqueDListAddr);
			else
				declaration += "    { 0, ";

			if (meshHeader0->entries[i]->translucentDListAddr != 0)
				declaration +=
					StringHelper::Sprintf("(u32)%sDL_%06X },\n", zRoom->GetName().c_str(),
				                          meshHeader0->entries[i]->translucentDListAddr);
			else
				declaration += "0 },\n";
		}

		zRoom->parent->AddDeclarationArray(
			meshHeader0->dListStart, DeclarationAlignment::None, DeclarationPadding::None,
			(meshHeader0->entries.size() * 8) + 0, "MeshEntry0",
			StringHelper::Sprintf("%sMeshDListEntry0x%06X", zRoom->GetName().c_str(),
		                          meshHeader0->dListStart),
			meshHeader0->entries.size(), declaration);

		zRoom->parent->AddDeclaration(meshHeader0->dListStart + (meshHeader0->entries.size() * 8) +
		                                  0,
		                              DeclarationAlignment::None, DeclarationPadding::Pad16, 4,
		                              "static s32", "terminatorMaybe", " 0x01000000 ");

		meshHeader = meshHeader0;
	}
	else if (meshHeaderType == 1)
	{
		MeshHeader1Base* meshHeader1 = nullptr;

		uint8_t fmt = rawData[segmentOffset + 1];

		if (fmt == 1)  // Single Format
		{
			MeshHeader1Single* headerSingle = new MeshHeader1Single();
			std::string headerSingleStr = StringHelper::Sprintf(
				"%sMeshHeader0x%06X", zRoom->GetName().c_str(), segmentOffset);

			headerSingle->headerType = 1;
			headerSingle->format = fmt;
			headerSingle->entryRecord =
				BitConverter::ToInt32BE(rawData, segmentOffset + 4);  // &0x00FFFFFF;

			headerSingle->imagePtr =
				BitConverter::ToInt32BE(rawData, segmentOffset + 8);  // &0x00FFFFFF;
			headerSingle->unknown = BitConverter::ToInt32BE(rawData, segmentOffset + 12);
			headerSingle->unknown2 = BitConverter::ToInt32BE(rawData, segmentOffset + 16);
			headerSingle->bgWidth = BitConverter::ToInt16BE(rawData, segmentOffset + 20);
			headerSingle->bgHeight = BitConverter::ToInt16BE(rawData, segmentOffset + 22);
			headerSingle->imageFormat = rawData[segmentOffset + 24];
			headerSingle->imageSize = rawData[segmentOffset + 25];
			headerSingle->imagePal = BitConverter::ToInt16BE(rawData, segmentOffset + 26);
			headerSingle->imageFlip = BitConverter::ToInt16BE(rawData, segmentOffset + 28);

			declaration = "\n";
			std::string entryRecordStr = "NULL";
			if (headerSingle->entryRecord != 0)
			{
				uint32_t entryRecordAddress =
					Seg2Filespace(headerSingle->entryRecord, zRoom->parent->baseAddress);
				Declaration* decl = zRoom->parent->GetDeclaration(entryRecordAddress);

				if (decl == nullptr)
				{
					PolygonDlist* gfxList = new PolygonDlist(headerSingleStr, rawData,
					                                         entryRecordAddress, zRoom->parent);
					gfxList->DeclareAndGenerateOutputCode();
					entryRecordStr = "&" + gfxList->GetName();
				}
				else
				{
					entryRecordStr = "&" + decl->varName;
				}
			}
			declaration +=
				StringHelper::Sprintf("    { { 1 }, 1, %s }, \n", entryRecordStr.c_str());

			std::string imagePtrStr = "NULL";
			if (headerSingle->imagePtr != 0)
			{
				uint32_t imagePtrAddress =
					Seg2Filespace(headerSingle->imagePtr, zRoom->parent->baseAddress);
				Declaration* decl = zRoom->parent->GetDeclaration(imagePtrAddress);

				if (decl == nullptr)
				{
					ZPrerender* prerender =
						new ZPrerender(headerSingleStr, rawData, imagePtrAddress, zRoom->parent);
					prerender->DeclareVar(headerSingleStr, "");
					zRoom->parent->resources.push_back(prerender);
					imagePtrStr = prerender->GetName();
				}
				else
				{
					imagePtrStr = decl->varName;
				}
			}
			declaration += StringHelper::Sprintf("    %s, \n", imagePtrStr.c_str());

			declaration += StringHelper::Sprintf("    0x%06X, 0x%06X, \n", headerSingle->unknown,
			                                     headerSingle->unknown2);
			declaration += StringHelper::Sprintf("    %i, %i, %i, %i, %i, %i\n",
			                                     headerSingle->bgWidth, headerSingle->bgHeight,
			                                     headerSingle->imageFormat, headerSingle->imageSize,
			                                     headerSingle->imagePal, headerSingle->imageFlip);

			zRoom->parent->AddDeclaration(segmentOffset, DeclarationAlignment::None,
			                              DeclarationPadding::Pad16, 0x1E, "MeshHeader1Single",
			                              headerSingleStr, declaration);

			meshHeader1 = headerSingle;
		}
		else if (fmt == 2)  // Multi-Format
		{
			MeshHeader1Multi* headerMulti = new MeshHeader1Multi();

			headerMulti->headerType = 1;
			headerMulti->format = fmt;
			headerMulti->entryRecord =
				BitConverter::ToInt32BE(rawData, segmentOffset + 4);  // &0x00FFFFFF;

			headerMulti->bgCnt = rawData[segmentOffset + 8];
			headerMulti->bgRecordPtr = BitConverter::ToInt32BE(rawData, segmentOffset + 12);

			declaration += StringHelper::Sprintf("{ { 1 }, 2, 0x%06X }, 0x%06X, 0x%06X",
			                                     headerMulti->entryRecord, headerMulti->bgCnt,
			                                     headerMulti->bgRecordPtr);

			zRoom->parent->AddDeclaration(segmentOffset, DeclarationAlignment::None,
			                              DeclarationPadding::Pad16, 16, "MeshHeader1Multi",
			                              StringHelper::Sprintf("%sMeshHeader0x%06X",
			                                                    zRoom->GetName().c_str(),
			                                                    segmentOffset),
			                              declaration);

			meshHeader1 = headerMulti;
		}
		else  // UH OH
		{
			if (Globals::Instance->verbosity >= VERBOSITY_INFO)
				fprintf(stderr, "WARNING: MeshHeader FMT %i not implemented!\n", fmt);
		}

		meshHeader1->headerType = 1;
		meshHeader1->format = fmt;
		meshHeader1->entryRecord = BitConverter::ToInt32BE(rawData, segmentOffset + 4) & 0x00FFFFFF;

		meshHeader = meshHeader1;
	}
	else if (meshHeaderType == 2)
	{
		MeshHeader2* meshHeader2 = new MeshHeader2();
		meshHeader2->headerType = 2;

		meshHeader2->entries = vector<MeshEntry2*>();
		meshHeader2->dListStart = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, segmentOffset + 4));
		meshHeader2->dListEnd = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, segmentOffset + 8));

		int8_t numEntries = rawData[segmentOffset + 1];
		uint32_t currentPtr = meshHeader2->dListStart;

		for (int i = 0; i < numEntries; i++)
		{
			MeshEntry2* entry = new MeshEntry2();
			entry->playerXMax = BitConverter::ToInt16BE(rawData, currentPtr + 0);
			entry->playerZMax = BitConverter::ToInt16BE(rawData, currentPtr + 2);
			entry->playerXMin = BitConverter::ToInt16BE(rawData, currentPtr + 4);
			entry->playerZMin = BitConverter::ToInt16BE(rawData, currentPtr + 6);

			entry->opaqueDListAddr = BitConverter::ToInt32BE(rawData, currentPtr + 8) & 0x00FFFFFF;
			entry->translucentDListAddr =
				BitConverter::ToInt32BE(rawData, currentPtr + 12) & 0x00FFFFFF;

			if (entry->opaqueDListAddr != 0)
			{
				entry->opaqueDList = new ZDisplayList(
					rawData, entry->opaqueDListAddr,
					ZDisplayList::GetDListLength(rawData, entry->opaqueDListAddr,
				                                 Globals::Instance->game == ZGame::OOT_SW97 ?
                                                     DListType::F3DEX :
                                                     DListType::F3DZEX),
					zRoom->parent);
				entry->opaqueDList->scene = zRoom->scene;
				GenDListDeclarations(rawData, entry->opaqueDList);
			}

			if (entry->translucentDListAddr != 0)
			{
				entry->translucentDList = new ZDisplayList(
					rawData, entry->translucentDListAddr,
					ZDisplayList::GetDListLength(rawData, entry->translucentDListAddr,
				                                 Globals::Instance->game == ZGame::OOT_SW97 ?
                                                     DListType::F3DEX :
                                                     DListType::F3DZEX),
					zRoom->parent);
				entry->translucentDList->scene = zRoom->scene;
				GenDListDeclarations(rawData, entry->translucentDList);
			}

			meshHeader2->entries.push_back(entry);

			currentPtr += 16;
		}

		declaration += StringHelper::Sprintf("{ 2 }, 0x%02lX, ", meshHeader2->entries.size());

		if (meshHeader2->dListStart != 0)
			declaration += StringHelper::Sprintf("(u32)&%sMeshDListEntry0x%06X, ",
			                                     zRoom->GetName().c_str(), meshHeader2->dListStart);
		else
			declaration += "0, ";

		if (meshHeader2->dListEnd != 0)
			declaration += StringHelper::Sprintf(
				"(u32)&(%sMeshDListEntry0x%06X) + sizeof(%sMeshDListEntry0x%06X)",
				zRoom->GetName().c_str(), meshHeader2->dListStart, zRoom->GetName().c_str(),
				meshHeader2->dListStart);
		else
			declaration += "0";

		zRoom->parent->AddDeclaration(
			segmentOffset, DeclarationAlignment::None, 12, "MeshHeader2",
			StringHelper::Sprintf("%sMeshHeader0x%06X", zRoom->GetName().c_str(), segmentOffset),
			declaration);

		declaration = "";

		for (size_t i = 0; i < meshHeader2->entries.size(); i++)
		{
			declaration += StringHelper::Sprintf(
				"    { %i, %i, %i, %i, ", meshHeader2->entries[i]->playerXMax,
				meshHeader2->entries[i]->playerZMax, meshHeader2->entries[i]->playerXMin,
				meshHeader2->entries[i]->playerZMin);

			if (meshHeader2->entries[i]->opaqueDListAddr != 0)
				declaration += StringHelper::Sprintf("(u32)%sDL_%06X, ", zRoom->GetName().c_str(),
				                                     meshHeader2->entries[i]->opaqueDListAddr);
			else
				declaration += "0, ";

			if (meshHeader2->entries[i]->translucentDListAddr != 0)
				declaration +=
					StringHelper::Sprintf("(u32)%sDL_%06X },\n", zRoom->GetName().c_str(),
				                          meshHeader2->entries[i]->translucentDListAddr);
			else
				declaration += "0 },\n";
		}

		zRoom->parent->AddDeclarationArray(
			meshHeader2->dListStart, DeclarationAlignment::None, DeclarationPadding::None,
			(meshHeader2->entries.size() * 16) + 0, "MeshEntry2",
			StringHelper::Sprintf("%sMeshDListEntry0x%06X", zRoom->GetName().c_str(),
		                          meshHeader2->dListStart, meshHeader2->entries.size()),
			meshHeader2->entries.size(), declaration);

		zRoom->parent->AddDeclaration(meshHeader2->dListStart + (meshHeader2->entries.size() * 16),
		                              DeclarationAlignment::None, DeclarationPadding::Pad16, 4,
		                              "static s32", "terminatorMaybe", "0x01000000");

		meshHeader = meshHeader2;
	}
}

SetMesh::~SetMesh()
{
	if (meshHeader != nullptr)
	{
		delete meshHeader;
		meshHeader = nullptr;
	}
}

void SetMesh::GenDListDeclarations(std::vector<uint8_t> rawData, ZDisplayList* dList)
{
	string srcVarName =
		StringHelper::Sprintf("%s%s", zRoom->GetName().c_str(), dList->GetName().c_str());

	dList->SetName(srcVarName);
	string sourceOutput = dList->GetSourceOutputCode(zRoom->GetName());

	for (ZDisplayList* otherDList : dList->otherDLists)
		GenDListDeclarations(rawData, otherDList);

	for (pair<uint32_t, string> vtxEntry : dList->vtxDeclarations)
	{
		DeclarationAlignment alignment = DeclarationAlignment::Align8;
		if (Globals::Instance->game == ZGame::MM_RETAIL)
			alignment = DeclarationAlignment::None;
		zRoom->parent->AddDeclarationArray(
			vtxEntry.first, alignment,
			dList->vertices[vtxEntry.first].size() * 16, "static Vtx",
			StringHelper::Sprintf("%sVtx_%06X", zRoom->GetName().c_str(), vtxEntry.first),
			dList->vertices[vtxEntry.first].size(), vtxEntry.second);
	}

	for (pair<uint32_t, string> texEntry : dList->texDeclarations)
	{
		zRoom->textures[texEntry.first] = dList->textures[texEntry.first];
	}
}

std::string SetMesh::GenDListExterns(ZDisplayList* dList)
{
	string sourceOutput = "";

	if (Globals::Instance->includeFilePrefix)
		sourceOutput += StringHelper::Sprintf("extern Gfx %sDL_%06X[];\n", zRoom->GetName().c_str(),
		                                      dList->GetRawDataIndex());
	else
		sourceOutput += StringHelper::Sprintf("extern Gfx DL_%06X[];\n", dList->GetRawDataIndex());

	for (ZDisplayList* otherDList : dList->otherDLists)
		sourceOutput += GenDListExterns(otherDList);

	for (pair<uint32_t, string> texEntry : dList->texDeclarations)
		sourceOutput += StringHelper::Sprintf("extern u64 %sTex_%06X[];\n",
		                                      zRoom->GetName().c_str(), texEntry.first);

	sourceOutput += dList->defines;

	return sourceOutput;
}

string SetMesh::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	string sourceOutput = "";

	sourceOutput +=
		StringHelper::Sprintf("%s %i, (u32)&%sMeshHeader0x%06X",
	                          ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(),
	                          data, zRoom->GetName().c_str(), segmentOffset);

	/*if (meshHeader->headerType == 0)
	{
	    MeshHeader0* meshHeader0 = (MeshHeader0*)meshHeader;

	}
	else
	{
	    sourceOutput += "// SetMesh UNIMPLEMENTED HEADER TYPE!\n";
	}
*/
	return sourceOutput;
}

string SetMesh::GenerateExterns()
{
	string sourceOutput = "";

	if (meshHeader->headerType == 0)
	{
		MeshHeader0* meshHeader0 = (MeshHeader0*)meshHeader;

		sourceOutput += StringHelper::Sprintf("extern MeshHeader0 %sMeshHeader0x%06X;\n",
		                                      zRoom->GetName().c_str(), segmentOffset);
		sourceOutput += StringHelper::Sprintf("extern MeshEntry0 %sMeshDListEntry0x%06X[%i];\n",
		                                      zRoom->GetName().c_str(), meshHeader0->dListStart,
		                                      meshHeader0->entries.size());

		for (MeshEntry0* entry : meshHeader0->entries)
		{
			if (entry->opaqueDList != nullptr)
				sourceOutput += GenDListExterns(entry->opaqueDList);

			if (entry->translucentDList != nullptr)
				sourceOutput += GenDListExterns(entry->translucentDList);
		}
	}
	else if (meshHeader->headerType == 1)
	{
		MeshHeader1Base* meshHeader1 = (MeshHeader1Base*)meshHeader;

		if (meshHeader1->format == 1)
			sourceOutput += StringHelper::Sprintf("extern MeshHeader1Single %sMeshHeader0x%06X;\n",
			                                      zRoom->GetName().c_str(), segmentOffset);
		else if (meshHeader1->format == 2)
			sourceOutput += StringHelper::Sprintf("extern MeshHeader1Multi %sMeshHeader0x%06X;\n",
			                                      zRoom->GetName().c_str(), segmentOffset);
	}
	else if (meshHeader->headerType == 2)
	{
		MeshHeader2* meshHeader2 = (MeshHeader2*)meshHeader;

		sourceOutput += StringHelper::Sprintf("extern MeshHeader2 %sMeshHeader0x%06X;\n",
		                                      zRoom->GetName().c_str(), segmentOffset);
		sourceOutput += StringHelper::Sprintf("extern MeshEntry2 %sMeshDListEntry0x%06X[%i];\n",
		                                      zRoom->GetName().c_str(), meshHeader2->dListStart,
		                                      meshHeader2->entries.size());

		for (MeshEntry2* entry : meshHeader2->entries)
		{
			if (entry->opaqueDList != nullptr)
				sourceOutput += GenDListExterns(entry->opaqueDList);

			if (entry->translucentDList != nullptr)
				sourceOutput += GenDListExterns(entry->translucentDList);
		}
	}
	else
	{
		// sourceOutput += "// SetMesh UNIMPLEMENTED HEADER TYPE!\n";
	}

	return sourceOutput;
}

int32_t SetMesh::GetRawDataSize()
{
	return ZRoomCommand::GetRawDataSize();
}

string SetMesh::GetCommandCName()
{
	return "SCmdMesh";
}

RoomCommand SetMesh::GetRoomCommand()
{
	return RoomCommand::SetMesh;
}

PolygonDlist::PolygonDlist(const std::string& prefix, const std::vector<uint8_t>& nRawData,
                           int nRawDataIndex, ZFile* nParent)
{
	rawData.assign(nRawData.begin(), nRawData.end());
	rawDataIndex = nRawDataIndex;
	parent = nParent;

	name = GetDefaultName(prefix.c_str(), rawDataIndex);

	ParseRawData();

	// TODO: ZAPD refuses to extract this DList for some reason.
	// (not even a crash/error, it just simply doesn't do it).
	// For now, it will just export the address.
	// opaDList = MakeDlist(opa, prefix);
	// xluDList = MakeDlist(xlu, prefix);
}

void PolygonDlist::ParseRawData()
{
	opa = BitConverter::ToUInt32BE(rawData, rawDataIndex);
	xlu = BitConverter::ToUInt32BE(rawData, rawDataIndex + 4);
}

ZDisplayList* PolygonDlist::MakeDlist(segptr_t ptr, const std::string& prefix)
{
	if (ptr == 0)
	{
		return nullptr;
	}

	uint32_t dlistAddress = Seg2Filespace(ptr, parent->baseAddress);

	int dlistLength = ZDisplayList::GetDListLength(
		rawData, dlistAddress,
		Globals::Instance->game == ZGame::OOT_SW97 ? DListType::F3DEX : DListType::F3DZEX);
	ZDisplayList* dlist = new ZDisplayList(rawData, dlistAddress, dlistLength, parent);

	string dListStr = StringHelper::Sprintf("%sPolygonDlist_%06X", prefix.c_str(), dlistAddress);
	dlist->SetName(dListStr);
	dlist->GetSourceOutputCode(prefix + "PolygonDlist");

	// parent->resources.push_back(dlist);
	return dlist;
}

int PolygonDlist::GetRawDataSize()
{
	return 0x08;
}

void PolygonDlist::DeclareVar(const std::string& prefix, const std::string& bodyStr)
{
	std::string auxName = name;
	if (name == "")
	{
		auxName = GetDefaultName(prefix, rawDataIndex);
	}
	parent->AddDeclaration(rawDataIndex, DeclarationAlignment::Align4, GetRawDataSize(),
	                       GetSourceTypeName(), auxName, bodyStr);
}

std::string PolygonDlist::GetBodySourceCode()
{
	std::string bodyStr = "\n";
	std::string opaStr = "NULL";
	std::string xluStr = "NULL";

	if (opa != 0)
	{
		Declaration* decl = parent->GetDeclaration(Seg2Filespace(opa, parent->baseAddress));
		if (decl != nullptr)
		{
			opaStr = decl->varName;
		}
		else
		{
			opaStr = StringHelper::Sprintf("0x%08X", opa);
		}
	}
	if (xlu != 0)
	{
		Declaration* decl = parent->GetDeclaration(Seg2Filespace(xlu, parent->baseAddress));
		if (decl != nullptr)
		{
			xluStr = decl->varName;
		}
		else
		{
			xluStr = StringHelper::Sprintf("0x%08X", xlu);
		}
	}

	bodyStr += StringHelper::Sprintf("    %s, \n", opaStr.c_str());
	bodyStr += StringHelper::Sprintf("    %s, \n", xluStr.c_str());

	return bodyStr;
}

void PolygonDlist::DeclareAndGenerateOutputCode()
{
	std::string bodyStr = GetBodySourceCode();

	Declaration* decl = parent->GetDeclaration(rawDataIndex);
	if (decl == nullptr)
	{
		DeclareVar("", bodyStr);
	}
	else
	{
		decl->text = bodyStr;
	}
}

std::string PolygonDlist::GetDefaultName(const std::string& prefix, uint32_t address)
{
	return StringHelper::Sprintf("%sPolyDlist_%06X", prefix.c_str(), address);
}

std::string PolygonDlist::GetSourceTypeName()
{
	return "PolygonDlist";
}

std::string PolygonDlist::GetName()
{
	return name;
}
