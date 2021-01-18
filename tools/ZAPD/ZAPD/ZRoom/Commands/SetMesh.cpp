#include "SetMesh.h"
#include "../../ZFile.h"
#include "../ZRoom.h"
#include "../../BitConverter.h"
#include "../../StringHelper.h"
#include <Path.h>
#include <Globals.h>

using namespace std;

SetMesh::SetMesh(ZRoom* nZRoom, std::vector<uint8_t> rawData, int rawDataIndex, int segAddressOffset) : ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	data = rawData[rawDataIndex + 1];
	segmentOffset = SEG2FILESPACE(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));

	string declaration = "";
	char line[2048];

	int8_t meshHeaderType = rawData[segmentOffset + 0];

	if (meshHeaderType == 0)
	{
		MeshHeader0* meshHeader0 = new MeshHeader0();
		meshHeader0->headerType = 0;
		meshHeader0->entries = vector<MeshEntry0*>();

		meshHeader0->dListStart = BitConverter::ToInt32BE(rawData, segmentOffset + 4) & 0x00FFFFFF;
		meshHeader0->dListEnd = BitConverter::ToInt32BE(rawData, segmentOffset + 8) & 0x00FFFFFF;

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
			entry->opaqueDListAddr = BitConverter::ToInt32BE(rawData, currentPtr + 0) & 0x00FFFFFF;
			entry->translucentDListAddr = BitConverter::ToInt32BE(rawData, currentPtr + 4) & 0x00FFFFFF;

			if (entry->opaqueDListAddr != 0)
			{
				entry->opaqueDList = new ZDisplayList(rawData, entry->opaqueDListAddr, ZDisplayList::GetDListLength(rawData, entry->opaqueDListAddr));
				entry->opaqueDList->scene = zRoom->scene;
				GenDListDeclarations(rawData, entry->opaqueDList);
			}

			if (entry->translucentDListAddr != 0)
			{
				entry->translucentDList = new ZDisplayList(rawData, entry->translucentDListAddr, ZDisplayList::GetDListLength(rawData, entry->translucentDListAddr));
				entry->translucentDList->scene = zRoom->scene;
				GenDListDeclarations(rawData, entry->translucentDList);
			}

			meshHeader0->entries.push_back(entry);

			currentPtr += 8;
		}

		//declaration += StringHelper::Sprintf("MeshHeader0 %sMeshHeade0x%06X = { { 0 }, 0x%02X, ", zRoom->GetName().c_str(), segmentOffset, meshHeader0->entries.size());
		declaration += StringHelper::Sprintf("{ 0 }, 0x%02X, ", meshHeader0->entries.size());

		if (meshHeader0->dListStart != 0)
			sprintf(line, "(u32)&%sMeshDListEntry0x%06X, ", zRoom->GetName().c_str(), meshHeader0->dListStart);
		else
			sprintf(line, "0, ");

		declaration += line;

		if (meshHeader0->dListEnd != 0)
			sprintf(line, "(u32)&(%sMeshDListEntry0x%06X) + sizeof(%sMeshDListEntry0x%06X)", zRoom->GetName().c_str(), meshHeader0->dListStart, zRoom->GetName().c_str(), meshHeader0->dListStart);
		else
			sprintf(line, "0");

		declaration += line;

		zRoom->parent->AddDeclaration(segmentOffset, DeclarationAlignment::Align16, 12, "MeshHeader0", StringHelper::Sprintf("%sMeshHeader0x%06X", zRoom->GetName().c_str(), segmentOffset),
			declaration);

		declaration = "";

		for (int i = 0; i < meshHeader0->entries.size(); i++)
		{
			if (meshHeader0->entries[i]->opaqueDListAddr != 0)
				sprintf(line, "\t{ (u32)%sDlist0x%06X, ", zRoom->GetName().c_str(), meshHeader0->entries[i]->opaqueDListAddr);
			else
				sprintf(line, "\t{ 0, ");

			declaration += line;

			if (meshHeader0->entries[i]->translucentDListAddr != 0)
				sprintf(line, "(u32)%sDlist0x%06X },\n", zRoom->GetName().c_str(), meshHeader0->entries[i]->translucentDListAddr);
			else
				sprintf(line, "0 },\n");

			declaration += line;
		}

		//declaration += "static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.\n";

		zRoom->parent->AddDeclarationArray(meshHeader0->dListStart, DeclarationAlignment::None, DeclarationPadding::None, (meshHeader0->entries.size() * 8) + 0, "MeshEntry0",
			StringHelper::Sprintf("%sMeshDListEntry0x%06X", zRoom->GetName().c_str(), meshHeader0->dListStart), meshHeader0->entries.size(), declaration);

		zRoom->parent->AddDeclaration(meshHeader0->dListStart + (meshHeader0->entries.size() * 8) + 0, DeclarationAlignment::None, DeclarationPadding::Pad16, 4, "static s32",
			"terminatorMaybe", " 0x01000000 ");

		meshHeader = meshHeader0;
	}
	else if (meshHeaderType == 1)
	{
		MeshHeader1Base* meshHeader1 = nullptr;
		
		uint8_t fmt = rawData[segmentOffset + 1];

		if (fmt == 1) // Single Format
		{
			MeshHeader1Single* headerSingle = new MeshHeader1Single();

			headerSingle->headerType = 1;
			headerSingle->format = fmt;
			headerSingle->entryRecord = BitConverter::ToInt32BE(rawData, segmentOffset + 4);// &0x00FFFFFF;

			headerSingle->imagePtr = BitConverter::ToInt32BE(rawData, segmentOffset + 8);// &0x00FFFFFF;
			headerSingle->unknown = BitConverter::ToInt32BE(rawData, segmentOffset + 12);
			headerSingle->unknown2 = BitConverter::ToInt32BE(rawData, segmentOffset + 16);
			headerSingle->bgWidth = BitConverter::ToInt16BE(rawData, segmentOffset + 20);
			headerSingle->bgHeight = BitConverter::ToInt16BE(rawData, segmentOffset + 22);
			headerSingle->imageFormat = rawData[segmentOffset + 24];
			headerSingle->imageSize = rawData[segmentOffset + 25];
			headerSingle->imagePal = BitConverter::ToInt16BE(rawData, segmentOffset + 26);
			headerSingle->imageFlip = BitConverter::ToInt16BE(rawData, segmentOffset + 28);

			declaration += StringHelper::Sprintf("{ { 1 }, 1, 0x%06X  }, 0x%06X, ", 
				headerSingle->entryRecord, headerSingle->imagePtr);

			declaration += StringHelper::Sprintf("0x%06X, 0x%06X, %i, %i, %i, %i, %i, %i\n",
				headerSingle->unknown, headerSingle->unknown2, headerSingle->bgWidth, headerSingle->bgHeight, headerSingle->imageFormat, headerSingle->imageSize, headerSingle->imagePal, headerSingle->imageFlip);

			zRoom->parent->AddDeclaration(segmentOffset, DeclarationAlignment::None, DeclarationPadding::Pad16, 0x1E, "MeshHeader1Single",
				StringHelper::Sprintf("%sMeshHeader0x%06X", zRoom->GetName().c_str(), segmentOffset), declaration);

			meshHeader1 = headerSingle;
;		}
		else if (fmt == 2) // Multi-Format
		{
			MeshHeader1Multi* headerMulti = new MeshHeader1Multi();

			headerMulti->headerType = 1;
			headerMulti->format = fmt;
			headerMulti->entryRecord = BitConverter::ToInt32BE(rawData, segmentOffset + 4);// &0x00FFFFFF;

			headerMulti->bgCnt = rawData[segmentOffset + 8];
			headerMulti->bgRecordPtr = BitConverter::ToInt32BE(rawData, segmentOffset + 12);

			declaration += StringHelper::Sprintf("{ { 1 }, 2, 0x%06X }, 0x%06X, 0x%06X",
				headerMulti->entryRecord, headerMulti->bgCnt, headerMulti->bgRecordPtr);

			zRoom->parent->AddDeclaration(segmentOffset, DeclarationAlignment::None, DeclarationPadding::Pad16, 16, "MeshHeader1Multi",
				StringHelper::Sprintf("%sMeshHeader0x%06X", zRoom->GetName().c_str(), segmentOffset), declaration);

			meshHeader1 = headerMulti;
		}
		else // UH OH
		{
			if (Globals::Instance->verbosity >= VERBOSITY_INFO)
				printf("WARNING: MeshHeader FMT %i not implemented!\n", fmt);
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
		meshHeader2->dListStart = BitConverter::ToInt32BE(rawData, segmentOffset + 4) & 0x00FFFFFF;
		meshHeader2->dListEnd = BitConverter::ToInt32BE(rawData, segmentOffset + 8) & 0x00FFFFFF;

		int8_t numEntries = rawData[segmentOffset + 1];
		uint32_t currentPtr = meshHeader2->dListStart;

		// HOTSPOT
		for (int i = 0; i < numEntries; i++)
		{
			MeshEntry2* entry = new MeshEntry2();
			entry->playerXMax = BitConverter::ToInt16BE(rawData, currentPtr + 0);
			entry->playerZMax = BitConverter::ToInt16BE(rawData, currentPtr + 2);
			entry->playerXMin = BitConverter::ToInt16BE(rawData, currentPtr + 4);
			entry->playerZMin = BitConverter::ToInt16BE(rawData, currentPtr + 6);

			entry->opaqueDListAddr = BitConverter::ToInt32BE(rawData, currentPtr + 8) & 0x00FFFFFF;
			entry->translucentDListAddr = BitConverter::ToInt32BE(rawData, currentPtr + 12) & 0x00FFFFFF;

			if (entry->opaqueDListAddr != 0)
			{
				entry->opaqueDList = new ZDisplayList(rawData, entry->opaqueDListAddr, ZDisplayList::GetDListLength(rawData, entry->opaqueDListAddr));
				entry->opaqueDList->scene = zRoom->scene;
				GenDListDeclarations(rawData, entry->opaqueDList); // HOTSPOT
			}

			if (entry->translucentDListAddr != 0)
			{
				entry->translucentDList = new ZDisplayList(rawData, entry->translucentDListAddr, ZDisplayList::GetDListLength(rawData, entry->translucentDListAddr));
				entry->translucentDList->scene = zRoom->scene;
				GenDListDeclarations(rawData, entry->translucentDList); // HOTSPOT
			}

			meshHeader2->entries.push_back(entry);

			currentPtr += 16;
		}

		sprintf(line, "{ 2 }, 0x%02lX, ", meshHeader2->entries.size());
		declaration += line;

		if (meshHeader2->dListStart != 0)
			sprintf(line, "(u32)&%sMeshDListEntry0x%06X, ", zRoom->GetName().c_str(), meshHeader2->dListStart);
		else
			sprintf(line, "0, ");

		declaration += line;

		if (meshHeader2->dListEnd != 0)
			sprintf(line, "(u32)&(%sMeshDListEntry0x%06X) + sizeof(%sMeshDListEntry0x%06X)", zRoom->GetName().c_str(), meshHeader2->dListStart, zRoom->GetName().c_str(), meshHeader2->dListStart);
		else
			sprintf(line, "0");

		declaration += line;

		zRoom->parent->AddDeclaration(segmentOffset, DeclarationAlignment::None, 12, "MeshHeader2",
			StringHelper::Sprintf("%sMeshHeader0x%06X", zRoom->GetName().c_str(), segmentOffset), declaration);

		declaration = "";

		//sprintf(line, "MeshEntry2 %sMeshDListEntry0x%06X[%i] = \n{\n", zRoom->GetName().c_str(), meshHeader2->dListStart, meshHeader2->entries.size());
		//declaration += line;

		for (int i = 0; i < meshHeader2->entries.size(); i++)
		{
			sprintf(line, "\t{ %i, %i, %i, %i, ", meshHeader2->entries[i]->playerXMax, meshHeader2->entries[i]->playerZMax, meshHeader2->entries[i]->playerXMin, meshHeader2->entries[i]->playerZMin);

			declaration += line;

			if (meshHeader2->entries[i]->opaqueDListAddr != 0)
				sprintf(line, "(u32)%sDlist0x%06X, ", zRoom->GetName().c_str(), meshHeader2->entries[i]->opaqueDListAddr);
			else
				sprintf(line, "0, ");

			declaration += line;

			if (meshHeader2->entries[i]->translucentDListAddr != 0)
				sprintf(line, "(u32)%sDlist0x%06X },\n", zRoom->GetName().c_str(), meshHeader2->entries[i]->translucentDListAddr);
			else
				sprintf(line, "0 },\n");

			declaration += line;
		}

		//declaration += "};\n\n";
		//declaration += "static u32 terminatorMaybe = 0x01000000; // This always appears after the mesh entries. Its purpose is not clear.\n";

		zRoom->parent->AddDeclarationArray(meshHeader2->dListStart, DeclarationAlignment::None, DeclarationPadding::None, (meshHeader2->entries.size() * 16) + 0, 
			"MeshEntry2", StringHelper::Sprintf("%sMeshDListEntry0x%06X", zRoom->GetName().c_str(), meshHeader2->dListStart, meshHeader2->entries.size()), meshHeader2->entries.size(), declaration);

		zRoom->parent->AddDeclaration(meshHeader2->dListStart + (meshHeader2->entries.size() * 16), DeclarationAlignment::None, DeclarationPadding::Pad16, 4, "static s32",
			"terminatorMaybe", "0x01000000");

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
	string sourceOutput = dList->GetSourceOutputCode(zRoom->GetName()); // HOTSPOT

	string srcVarName = "";

	if (Globals::Instance->includeFilePrefix)
		srcVarName = StringHelper::Sprintf("%s%s", zRoom->GetName().c_str(), dList->GetName().c_str());
	else
		srcVarName = StringHelper::Sprintf("%s", dList->GetName().c_str());

	zRoom->parent->AddDeclarationArray(dList->GetRawDataIndex(), DeclarationAlignment::None, dList->GetRawDataSize(), "static Gfx", srcVarName, dList->GetRawDataSize() / 8, sourceOutput);

	for (ZDisplayList* otherDList : dList->otherDLists)
		GenDListDeclarations(rawData, otherDList);

	for (pair<uint32_t, string> vtxEntry : dList->vtxDeclarations)
	{
		zRoom->parent->AddDeclarationArray(vtxEntry.first, DeclarationAlignment::Align8, dList->vertices[vtxEntry.first].size() * 16, "static Vtx",
			StringHelper::Sprintf("%sVtx_%06X", zRoom->GetName().c_str(), vtxEntry.first), dList->vertices[vtxEntry.first].size(), vtxEntry.second);

		//zRoom->parent->declarations[vtxEntry.first] = new Declaration(DeclarationAlignment::Align8, dList->vertices[vtxEntry.first].size() * 16, vtxEntry.second);
	}

	for (pair<uint32_t, string> texEntry : dList->texDeclarations)
	{
		zRoom->textures[texEntry.first] = dList->textures[texEntry.first];

		if (Globals::Instance->verbosity >= VERBOSITY_DEBUG)
			printf("SAVING IMAGE TO %s\n", Globals::Instance->outputPath.c_str());
		
		zRoom->textures[texEntry.first]->Save(Globals::Instance->outputPath);

		zRoom->parent->AddDeclarationIncludeArray(texEntry.first, StringHelper::Sprintf("%s/%s.%s.inc.c",
			Globals::Instance->outputPath.c_str(), Path::GetFileNameWithoutExtension(zRoom->textures[texEntry.first]->GetName()).c_str(), zRoom->textures[texEntry.first]->GetExternalExtension().c_str()), 
			zRoom->textures[texEntry.first]->GetRawDataSize(), "u64", StringHelper::Sprintf("%sTex_%06X", zRoom->textures[texEntry.first]->GetName().c_str(), texEntry.first), 0);
	}
}

std::string SetMesh::GenDListExterns(ZDisplayList* dList)
{
	string sourceOutput = "";
	
	if (Globals::Instance->includeFilePrefix)
		sourceOutput += StringHelper::Sprintf("extern Gfx %sDlist0x%06X[];\n", zRoom->GetName().c_str(), dList->GetRawDataIndex());
	else
		sourceOutput += StringHelper::Sprintf("extern Gfx dlist0x%06X[];\n", dList->GetRawDataIndex());

	for (ZDisplayList* otherDList : dList->otherDLists)
		sourceOutput += GenDListExterns(otherDList);

	//for (pair<uint32_t, string> vtxEntry : dList->vtxDeclarations)
		//sourceOutput += StringHelper::Sprintf("extern Vtx %sVtx_%06X[%i];\n", zRoom->GetName().c_str(), vtxEntry.first, dList->vertices[vtxEntry.first].size());

	for (pair<uint32_t, string> texEntry : dList->texDeclarations)
		sourceOutput += StringHelper::Sprintf("extern u64 %sTex_%06X[];\n", zRoom->GetName().c_str(), texEntry.first);

	sourceOutput += dList->defines;

	return sourceOutput;
}

string SetMesh::GenerateSourceCodePass1(string roomName, int baseAddress)
{
	string sourceOutput = "";
	
	sourceOutput += StringHelper::Sprintf("%s %i, (u32)&%sMeshHeader0x%06X", ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(), data, zRoom->GetName().c_str(), segmentOffset);

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

		sourceOutput += StringHelper::Sprintf("extern MeshHeader0 %sMeshHeader0x%06X;\n", zRoom->GetName().c_str(), segmentOffset);
		sourceOutput += StringHelper::Sprintf("extern MeshEntry0 %sMeshDListEntry0x%06X[%i];\n", zRoom->GetName().c_str(), meshHeader0->dListStart, meshHeader0->entries.size());
	
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
			sourceOutput += StringHelper::Sprintf("extern MeshHeader1Single %sMeshHeader0x%06X;\n", zRoom->GetName().c_str(), segmentOffset);
		else if (meshHeader1->format == 2)
			sourceOutput += StringHelper::Sprintf("extern MeshHeader1Multi %sMeshHeader0x%06X;\n", zRoom->GetName().c_str(), segmentOffset);
	}
	else if (meshHeader->headerType == 2)
	{
		MeshHeader2* meshHeader2 = (MeshHeader2*)meshHeader;

		sourceOutput += StringHelper::Sprintf("extern MeshHeader2 %sMeshHeader0x%06X;\n", zRoom->GetName().c_str(), segmentOffset);
		sourceOutput += StringHelper::Sprintf("extern MeshEntry2 %sMeshDListEntry0x%06X[%i];\n", zRoom->GetName().c_str(), meshHeader2->dListStart, meshHeader2->entries.size());

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
		//sourceOutput += "// SetMesh UNIMPLEMENTED HEADER TYPE!\n";
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