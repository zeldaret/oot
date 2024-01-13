#include "SetMesh.h"

#include "Globals.h"
#include "Utils/BitConverter.h"
#include "Utils/Path.h"
#include "Utils/StringHelper.h"
#include "WarningHandler.h"
#include "ZBackground.h"
#include "ZFile.h"
#include "ZRoom/ZRoom.h"

void GenDListDeclarations(ZRoom* zRoom, ZFile* parent, ZDisplayList* dList);

SetMesh::SetMesh(ZFile* nParent) : ZRoomCommand(nParent)
{
}

void SetMesh::ParseRawData()
{
	ZRoomCommand::ParseRawData();
	auto& parentRawData = parent->GetRawData();
	meshHeaderType = parentRawData.at(segmentOffset);

	switch (meshHeaderType)
	{
	case 0:
		polyType = std::make_shared<RoomShapeCullable>(parent, segmentOffset, zRoom);
		break;

	case 1:
		polyType = std::make_shared<PolygonType1>(parent, segmentOffset, zRoom);
		break;

	case 2:
		polyType = std::make_shared<RoomShapeCullable>(parent, segmentOffset, zRoom);
		break;

	default:
		HANDLE_ERROR(WarningType::InvalidExtractedData,
		             StringHelper::Sprintf("unknown meshHeaderType: %i", meshHeaderType), "");
	}

	polyType->ParseRawData();
}

void SetMesh::DeclareReferences(const std::string& prefix)
{
	polyType->SetName(polyType->GetDefaultName(prefix));
	polyType->DeclareReferences(prefix);
	polyType->DeclareAndGenerateOutputCode(prefix);
}

// TODO: is this really needed?
void GenDListDeclarations(ZRoom* zRoom, ZFile* parent, ZDisplayList* dList)
{
	if (dList == nullptr)
		return;

	dList->DeclareReferences(zRoom->GetName());

	for (ZDisplayList* otherDList : dList->otherDLists)
		GenDListDeclarations(zRoom, parent, otherDList);
}

std::string SetMesh::GenDListExterns(ZDisplayList* dList)
{
	std::string sourceOutput;

	sourceOutput += StringHelper::Sprintf("extern Gfx %sDL_%06X[];\n", zRoom->GetName().c_str(),
	                                      dList->GetRawDataIndex());

	for (ZDisplayList* otherDList : dList->otherDLists)
		sourceOutput += GenDListExterns(otherDList);

	return sourceOutput;
}

std::string SetMesh::GetBodySourceCode() const
{
	std::string list;
	Globals::Instance->GetSegmentedPtrName(cmdArg2, parent, "", list);
	return StringHelper::Sprintf("SCENE_CMD_ROOM_SHAPE(%s)", list.c_str());
}

std::string SetMesh::GetCommandCName() const
{
	return "SCmdMesh";
}

RoomCommand SetMesh::GetRoomCommand() const
{
	return RoomCommand::SetMesh;
}

RoomShapeDListsEntry::RoomShapeDListsEntry(ZFile* nParent) : ZResource(nParent)
{
}

void RoomShapeDListsEntry::ParseRawData()
{
	const auto& rawData = parent->GetRawData();
	switch (polyType)
	{
	case 2:
		x = BitConverter::ToInt16BE(rawData, rawDataIndex + 0);
		y = BitConverter::ToInt16BE(rawData, rawDataIndex + 2);
		z = BitConverter::ToInt16BE(rawData, rawDataIndex + 4);
		unk_06 = BitConverter::ToInt16BE(rawData, rawDataIndex + 6);

		opa = BitConverter::ToUInt32BE(rawData, rawDataIndex + 8);
		xlu = BitConverter::ToUInt32BE(rawData, rawDataIndex + 12);
		break;

	default:
		opa = BitConverter::ToUInt32BE(rawData, rawDataIndex);
		xlu = BitConverter::ToUInt32BE(rawData, rawDataIndex + 4);
		break;
	}
}

void RoomShapeDListsEntry::DeclareReferences(const std::string& prefix)
{
	opaDList = MakeDlist(opa, prefix);
	xluDList = MakeDlist(xlu, prefix);
}

std::string RoomShapeDListsEntry::GetBodySourceCode() const
{
	std::string bodyStr;
	std::string opaStr;
	std::string xluStr;
	Globals::Instance->GetSegmentedPtrName(opa, parent, "Gfx", opaStr);
	Globals::Instance->GetSegmentedPtrName(xlu, parent, "Gfx", xluStr);

	if (polyType == 2)
	{
		bodyStr += StringHelper::Sprintf("{ %6i, %6i, %6i }, %6i, ", x, y, z, unk_06);
	}

	bodyStr += StringHelper::Sprintf("%s, %s", opaStr.c_str(), xluStr.c_str());

	return bodyStr;
}

void RoomShapeDListsEntry::GetSourceOutputCode(const std::string& prefix)
{
	std::string bodyStr = StringHelper::Sprintf("\n\t%s\n", GetBodySourceCode().c_str());

	Declaration* decl = parent->GetDeclaration(rawDataIndex);

	if (decl == nullptr)
		DeclareVar(prefix, bodyStr);
	else
		decl->declBody = bodyStr;
}

std::string RoomShapeDListsEntry::GetSourceTypeName() const
{
	switch (polyType)
	{
	case 2:
		return "RoomShapeCullableEntry";

	default:
		return "RoomShapeDListsEntry";
	}
}

ZResourceType RoomShapeDListsEntry::GetResourceType() const
{
	// TODO
	return ZResourceType::Error;
}

size_t RoomShapeDListsEntry::GetRawDataSize() const
{
	switch (polyType)
	{
	case 2:
		return 0x10;

	default:
		return 0x08;
	}
}

void RoomShapeDListsEntry::SetPolyType(uint8_t nPolyType)
{
	polyType = nPolyType;
}

ZDisplayList* RoomShapeDListsEntry::MakeDlist(segptr_t ptr,
                                              [[maybe_unused]] const std::string& prefix)
{
	if (ptr == 0)
	{
		return nullptr;
	}

	uint32_t dlistAddress = Seg2Filespace(ptr, parent->baseAddress);

	int32_t dlistLength = ZDisplayList::GetDListLength(
		parent->GetRawData(), dlistAddress,
		Globals::Instance->game == ZGame::OOT_SW97 ? DListType::F3DEX : DListType::F3DZEX);
	ZDisplayList* dlist = new ZDisplayList(parent);
	parent->AddResource(dlist);
	dlist->ExtractFromBinary(dlistAddress, dlistLength);
	dlist->SetName(dlist->GetDefaultName(prefix));
	GenDListDeclarations(zRoom, parent, dlist);

	return dlist;
}

/* RoomShapeImageMultiBgEntry */

RoomShapeImageMultiBgEntry::RoomShapeImageMultiBgEntry(ZFile* nParent) : ZResource(nParent)
{
}

RoomShapeImageMultiBgEntry::RoomShapeImageMultiBgEntry(bool nIsSubStruct, const std::string& prefix,
                                                       uint32_t nRawDataIndex, ZFile* nParent)
	: RoomShapeImageMultiBgEntry(nParent)
{
	rawDataIndex = nRawDataIndex;
	parent = nParent;
	isSubStruct = nIsSubStruct;

	name = GetDefaultName(prefix);

	ParseRawData();
	sourceBackground = MakeBackground(source, prefix);
}

void RoomShapeImageMultiBgEntry::ParseRawData()
{
	size_t pad = 0x00;
	const auto& rawData = parent->GetRawData();
	if (!isSubStruct)
	{
		pad = 0x04;

		unk_00 = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0x00);
		id = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x02);
	}
	source = BitConverter::ToUInt32BE(rawData, rawDataIndex + pad + 0x00);
	unk_0C = BitConverter::ToUInt32BE(rawData, rawDataIndex + pad + 0x04);
	tlut = BitConverter::ToUInt32BE(rawData, rawDataIndex + pad + 0x08);
	width = BitConverter::ToUInt16BE(rawData, rawDataIndex + pad + 0x0C);
	height = BitConverter::ToUInt16BE(rawData, rawDataIndex + pad + 0x0E);
	fmt = BitConverter::ToUInt8BE(rawData, rawDataIndex + pad + 0x10);
	siz = BitConverter::ToUInt8BE(rawData, rawDataIndex + pad + 0x11);
	mode0 = BitConverter::ToUInt16BE(rawData, rawDataIndex + pad + 0x12);
	tlutCount = BitConverter::ToUInt16BE(rawData, rawDataIndex + pad + 0x14);
}

ZBackground* RoomShapeImageMultiBgEntry::MakeBackground(segptr_t ptr, const std::string& prefix)
{
	if (ptr == 0)
		return nullptr;

	uint32_t backAddress = Seg2Filespace(ptr, parent->baseAddress);

	ZBackground* background = new ZBackground(parent);
	background->ExtractFromFile(backAddress);

	std::string defaultName = background->GetDefaultName(prefix);
	background->SetName(defaultName);
	background->SetOutName(defaultName);

	background->DeclareVar(prefix, "");
	parent->resources.push_back(background);

	return background;
}

size_t RoomShapeImageMultiBgEntry::GetRawDataSize() const
{
	return 0x1C;
}

std::string RoomShapeImageMultiBgEntry::GetBodySourceCode() const
{
	std::string bodyStr = "    ";
	if (!isSubStruct)
	{
		bodyStr += "{ \n        ";
	}

	if (!isSubStruct)
	{
		bodyStr += StringHelper::Sprintf("0x%04X, ", unk_00);
		bodyStr += StringHelper::Sprintf("%i, ", id);
		bodyStr += "\n    ";
		bodyStr += "    ";
	}

	std::string backgroundName;
	Globals::Instance->GetSegmentedPtrName(source, parent, "", backgroundName);
	bodyStr += StringHelper::Sprintf("%s, ", backgroundName.c_str());
	bodyStr += "\n    ";
	if (!isSubStruct)
	{
		bodyStr += "    ";
	}

	bodyStr += StringHelper::Sprintf("0x%08X, ", unk_0C);
	bodyStr += StringHelper::Sprintf("0x%08X, ", tlut);
	bodyStr += "\n    ";
	if (!isSubStruct)
	{
		bodyStr += "    ";
	}

	bodyStr += StringHelper::Sprintf("%i, ", width);
	bodyStr += StringHelper::Sprintf("%i, ", height);
	bodyStr += "\n    ";
	if (!isSubStruct)
	{
		bodyStr += "    ";
	}

	bodyStr += StringHelper::Sprintf("%i, ", fmt);
	bodyStr += StringHelper::Sprintf("%i, ", siz);
	bodyStr += "\n    ";
	if (!isSubStruct)
	{
		bodyStr += "    ";
	}

	bodyStr += StringHelper::Sprintf("0x%04X, ", mode0);
	bodyStr += StringHelper::Sprintf("0x%04X, ", tlutCount);
	if (!isSubStruct)
	{
		bodyStr += " \n    }, ";
	}
	else
	{
		bodyStr += "\n";
	}

	return bodyStr;
}

std::string RoomShapeImageMultiBgEntry::GetSourceTypeName() const
{
	return "RoomShapeImageMultiBgEntry";
}

ZResourceType RoomShapeImageMultiBgEntry::GetResourceType() const
{
	// TODO
	return ZResourceType::Error;
}

/* PolygonType section */

PolygonTypeBase::PolygonTypeBase(ZFile* nParent, uint32_t nRawDataIndex, ZRoom* nRoom)
	: ZResource(nParent), zRoom{nRoom}
{
	rawDataIndex = nRawDataIndex;
	type = BitConverter::ToUInt8BE(parent->GetRawData(), rawDataIndex);
}

void PolygonTypeBase::DeclareAndGenerateOutputCode(const std::string& prefix)
{
	std::string bodyStr = GetBodySourceCode();

	Declaration* decl = parent->GetDeclaration(rawDataIndex);
	if (decl == nullptr)
	{
		DeclareVar(prefix, bodyStr);
	}
	else
	{
		decl->declBody = bodyStr;
	}
}

std::string PolygonTypeBase::GetSourceTypeName() const
{
	switch (type)
	{
	case 2:
		return "RoomShapeCullable";

	case 1:
		return "PolygonType1";

	default:
		return "RoomShapeNormal";
	}
}

ZResourceType PolygonTypeBase::GetResourceType() const
{
	// TODO
	return ZResourceType::Error;
}

PolygonType1::PolygonType1(ZFile* nParent, uint32_t nRawDataIndex, ZRoom* nRoom)
	: PolygonTypeBase(nParent, nRawDataIndex, nRoom), single(nParent)
{
}

void PolygonType1::ParseRawData()
{
	const auto& rawData = parent->GetRawData();

	format = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x01);
	dlist = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x04);

	if (format == 2)
	{
		count = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x08);
		list = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x0C);
	}

	if (dlist != 0)
	{
		RoomShapeDListsEntry polyGfxList(parent);
		polyGfxList.zRoom = zRoom;
		polyGfxList.SetPolyType(type);
		polyGfxList.ExtractFromFile(Seg2Filespace(dlist, parent->baseAddress));
		polyGfxList.DeclareReferences(zRoom->GetName());
		polyDLists.push_back(polyGfxList);
	}
}

void PolygonType1::DeclareReferences(const std::string& prefix)
{
	polyDLists.at(0).GetSourceOutputCode(prefix);

	uint32_t listAddress;
	std::string bgImageArrayBody;
	switch (format)
	{
	case 1:
		single = RoomShapeImageMultiBgEntry(true, prefix, rawDataIndex + 0x08, parent);
		break;

	case 2:
		if (list != 0)
		{
			listAddress = Seg2Filespace(list, parent->baseAddress);
			uint32_t auxPtr = listAddress;

			multiList.reserve(count);
			for (size_t i = 0; i < count; ++i)
			{
				RoomShapeImageMultiBgEntry bg(false, prefix, auxPtr, parent);
				multiList.push_back(bg);
				auxPtr += bg.GetRawDataSize();
				bgImageArrayBody += bg.GetBodySourceCode();
				if (i + 1 < count)
				{
					bgImageArrayBody += "\n";
				}
			}

			Declaration* decl = parent->GetDeclaration(listAddress);
			if (decl == nullptr)
			{
				parent->AddDeclarationArray(
					listAddress, DeclarationAlignment::Align4,
					count * multiList.at(0).GetRawDataSize(), multiList.at(0).GetSourceTypeName(),
					multiList.at(0).GetName().c_str(), count, bgImageArrayBody);
			}
		}
		break;

	default:
		HANDLE_ERROR(WarningType::InvalidExtractedData,
		             StringHelper::Sprintf("unknown format: %i", format), "");
		break;
	}
}

size_t PolygonType1::GetRawDataSize() const
{
	switch (format)
	{
	case 1:
		return 0x20;

	case 2:
		return 0x10;
	}
	return 0x20;
}

std::string PolygonType1::GetBodySourceCode() const
{
	std::string bodyStr = "\n    ";

	bodyStr += "{ ";
	bodyStr += StringHelper::Sprintf("%i, %i, ", type, format);

	std::string dlistStr;
	Globals::Instance->GetSegmentedPtrName(dlist, parent, "", dlistStr);

	bodyStr += StringHelper::Sprintf("%s, ", dlistStr.c_str());
	bodyStr += "}, \n";

	std::string listStr = "NULL";
	switch (format)
	{
	case 1:
		bodyStr += single.GetBodySourceCode();
		break;
	case 2:
		Globals::Instance->GetSegmentedPtrName(list, parent, "RoomShapeImageMultiBgEntry", listStr);
		bodyStr += StringHelper::Sprintf("    %i, %s, \n", count, listStr.c_str());
		break;

	default:
		break;
	}

	return bodyStr;
}

std::string PolygonType1::GetSourceTypeName() const
{
	switch (format)
	{
	case 1:
		return "RoomShapeImageSingle";

	case 2:
		return "RoomShapeImageMulti";
	}
	return "ERROR";
	// return "PolygonType1";
}

RoomShapeCullable::RoomShapeCullable(ZFile* nParent, uint32_t nRawDataIndex, ZRoom* nRoom)
	: PolygonTypeBase(nParent, nRawDataIndex, nRoom)
{
}

void RoomShapeCullable::ParseRawData()
{
	const auto& rawData = parent->GetRawData();

	num = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x01);

	start = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x04);
	end = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x08);

	uint32_t currentPtr = GETSEGOFFSET(start);

	polyDLists.reserve(num);
	for (size_t i = 0; i < num; i++)
	{
		RoomShapeDListsEntry entry(parent);
		entry.zRoom = zRoom;
		entry.SetPolyType(type);
		entry.ExtractFromFile(currentPtr);
		entry.DeclareReferences(zRoom->GetName());
		polyDLists.push_back(entry);
		currentPtr += entry.GetRawDataSize();
	}
}

void RoomShapeCullable::DeclareReferences(const std::string& prefix)
{
	if (num > 0)
	{
		std::string declaration;

		for (size_t i = 0; i < polyDLists.size(); i++)
		{
			declaration +=
				StringHelper::Sprintf("\t{ %s },", polyDLists.at(i).GetBodySourceCode().c_str());
			if (i + 1 < polyDLists.size())
				declaration += "\n";
		}

		std::string polyDlistType = polyDLists.at(0).GetSourceTypeName();
		std::string polyDListName;
		polyDListName = StringHelper::Sprintf("%s%s_%06X", prefix.c_str(), polyDlistType.c_str(),
		                                      GETSEGOFFSET(start));

		Declaration* decl = parent->AddDeclarationArray(
			GETSEGOFFSET(start), DeclarationAlignment::Align4,
			polyDLists.size() * polyDLists.at(0).GetRawDataSize(), polyDlistType, polyDListName,
			polyDLists.size(), declaration);
		decl->forceArrayCnt = true;
	}

	parent->AddDeclaration(GETSEGOFFSET(end), DeclarationAlignment::Align4, 4, "s32",
	                       StringHelper::Sprintf("%s_terminatorMaybe_%06X",
	                                             parent->GetName().c_str(), GETSEGOFFSET(end)),
	                       "0x01000000");
}

std::string RoomShapeCullable::GetBodySourceCode() const
{
	std::string listName;
	Globals::Instance->GetSegmentedPtrName(start, parent, "", listName);

	std::string body = StringHelper::Sprintf("\n    %i, %i,\n", type, polyDLists.size());
	body += StringHelper::Sprintf("    %s,\n", listName.c_str());
	body +=
		StringHelper::Sprintf("    %s + ARRAY_COUNTU(%s)\n", listName.c_str(), listName.c_str());
	return body;
}

size_t RoomShapeCullable::GetRawDataSize() const
{
	return 0x0C;
}

DeclarationAlignment RoomShapeCullable::GetDeclarationAlignment() const
{
	return DeclarationAlignment::Align4;
}
