#include "SetMesh.h"
#include <Globals.h>
#include <Path.h>
#include "BitConverter.h"
#include "StringHelper.h"
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
		polyType = std::make_shared<PolygonType2>(parent, parentRawData, segmentOffset, zRoom);
		break;

	case 1:
		polyType = std::make_shared<PolygonType1>(parent, parentRawData, segmentOffset, zRoom);
		break;

	case 2:
		polyType = std::make_shared<PolygonType2>(parent, parentRawData, segmentOffset, zRoom);
		break;

	default:
		throw std::runtime_error(StringHelper::Sprintf("Error in SetMesh::ParseRawData\n"
		                                               "\t Unknown meshHeaderType: %i\n",
		                                               meshHeaderType));
	}

	polyType->ParseRawData();
}

void SetMesh::DeclareReferences(const std::string& prefix)
{
	polyType->SetName(polyType->GetDefaultName(prefix));
	polyType->DeclareReferences(prefix);
	polyType->DeclareAndGenerateOutputCode(prefix);
}

void GenDListDeclarations(ZRoom* zRoom, ZFile* parent, ZDisplayList* dList)
{
	if (dList == nullptr)
	{
		return;
	}
	std::string srcVarName =
		StringHelper::Sprintf("%s%s", zRoom->GetName().c_str(), dList->GetName().c_str());

	dList->SetName(srcVarName);
	dList->scene = zRoom->scene;
	std::string sourceOutput = dList->GetSourceOutputCode(zRoom->GetName());

	for (ZDisplayList* otherDList : dList->otherDLists)
		GenDListDeclarations(zRoom, parent, otherDList);

	for (const auto& vtxEntry : dList->vtxDeclarations)
	{
		DeclarationAlignment alignment = DeclarationAlignment::Align4;
		if (Globals::Instance->game == ZGame::MM_RETAIL)
			alignment = DeclarationAlignment::None;
		parent->AddDeclarationArray(
			vtxEntry.first, alignment, dList->vertices[vtxEntry.first].size() * 16, "static Vtx",
			StringHelper::Sprintf("%sVtx_%06X", zRoom->GetName().c_str(), vtxEntry.first),
			dList->vertices[vtxEntry.first].size(), vtxEntry.second);
	}
}

std::string SetMesh::GenDListExterns(ZDisplayList* dList)
{
	std::string sourceOutput = "";

	sourceOutput += StringHelper::Sprintf("extern Gfx %sDL_%06X[];\n", zRoom->GetName().c_str(),
	                                      dList->GetRawDataIndex());

	for (ZDisplayList* otherDList : dList->otherDLists)
		sourceOutput += GenDListExterns(otherDList);

	sourceOutput += dList->defines;

	return sourceOutput;
}

std::string SetMesh::GetBodySourceCode() const
{
	std::string list = parent->GetDeclarationPtrName(cmdArg2);
	return StringHelper::Sprintf("SCENE_CMD_MESH(%s)", list.c_str());
}

size_t SetMesh::GetRawDataSize() const
{
	return ZRoomCommand::GetRawDataSize();
}

std::string SetMesh::GetCommandCName() const
{
	return "SCmdMesh";
}

RoomCommand SetMesh::GetRoomCommand() const
{
	return RoomCommand::SetMesh;
}

PolygonDlist::PolygonDlist(const std::string& prefix, const std::vector<uint8_t>& nRawData,
                           uint32_t nRawDataIndex, ZFile* nParent, ZRoom* nRoom)
{
	rawData.assign(nRawData.begin(), nRawData.end());
	rawDataIndex = nRawDataIndex;
	parent = nParent;
	zRoom = nRoom;

	name = GetDefaultName(prefix.c_str(), rawDataIndex);
}

void PolygonDlist::ParseRawData()
{
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

void PolygonDlist::DeclareReferences(const std::string& prefix)
{
	opaDList = MakeDlist(opa, prefix);
	xluDList = MakeDlist(xlu, prefix);
}

ZDisplayList* PolygonDlist::MakeDlist(segptr_t ptr, const std::string& prefix)
{
	if (ptr == 0)
	{
		return nullptr;
	}

	uint32_t dlistAddress = Seg2Filespace(ptr, parent->baseAddress);

	int32_t dlistLength = ZDisplayList::GetDListLength(
		rawData, dlistAddress,
		Globals::Instance->game == ZGame::OOT_SW97 ? DListType::F3DEX : DListType::F3DZEX);
	ZDisplayList* dlist = new ZDisplayList(rawData, dlistAddress, dlistLength, parent);
	GenDListDeclarations(zRoom, parent, dlist);

	return dlist;
}

size_t PolygonDlist::GetRawDataSize() const
{
	switch (polyType)
	{
	case 2:
		return 0x10;

	default:
		return 0x08;
	}
}

void PolygonDlist::SetPolyType(uint8_t nPolyType)
{
	polyType = nPolyType;
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

std::string PolygonDlist::GetBodySourceCode(bool arrayElement)
{
	std::string bodyStr = "";
	std::string opaStr = parent->GetDeclarationPtrName(opa);
	std::string xluStr = parent->GetDeclarationPtrName(xlu);
	if (arrayElement)
	{
		bodyStr += "    { ";
	}
	else
	{
		bodyStr += "\n    ";
	}

	if (polyType == 2)
	{
		bodyStr += StringHelper::Sprintf("{ %6i, %6i, %6i }, %6i, ", x, y, z, unk_06);
	}

	bodyStr += StringHelper::Sprintf("%s, ", opaStr.c_str());
	bodyStr += StringHelper::Sprintf("%s", xluStr.c_str());

	if (arrayElement)
	{
		bodyStr += " },";
	}
	else
	{
		bodyStr += "\n";
	}

	return bodyStr;
}

void PolygonDlist::DeclareAndGenerateOutputCode()
{
	std::string bodyStr = GetBodySourceCode(false);

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
	switch (polyType)
	{
	case 2:
		return "PolygonDlist2";

	default:
		return "PolygonDlist";
	}
}

std::string PolygonDlist::GetName()
{
	return name;
}

BgImage::BgImage(bool nIsSubStruct, const std::string& prefix, const std::vector<uint8_t>& nRawData,
                 uint32_t nRawDataIndex, ZFile* nParent)
{
	rawData.assign(nRawData.begin(), nRawData.end());
	rawDataIndex = nRawDataIndex;
	parent = nParent;
	isSubStruct = nIsSubStruct;

	name = GetDefaultName(prefix.c_str(), rawDataIndex);

	ParseRawData();
	sourceBackground = MakeBackground(source, prefix);
}

void BgImage::ParseRawData()
{
	size_t pad = 0x00;
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

ZBackground* BgImage::MakeBackground(segptr_t ptr, const std::string& prefix)
{
	if (ptr == 0)
	{
		return nullptr;
	}

	uint32_t backAddress = Seg2Filespace(ptr, parent->baseAddress);

	ZBackground* background = new ZBackground(prefix, rawData, backAddress, parent);
	background->DeclareVar(prefix, "");
	parent->resources.push_back(background);

	return background;
}

size_t BgImage::GetRawDataSize()
{
	return 0x1C;
}

std::string BgImage::GetBodySourceCode(bool arrayElement) const
{
	std::string bodyStr = "    ";
	if (arrayElement)
	{
		bodyStr += "{ \n        ";
	}

	if (!isSubStruct)
	{
		bodyStr += StringHelper::Sprintf("0x%04X, ", unk_00);
		bodyStr += StringHelper::Sprintf("%i, ", id);
		bodyStr += "\n    ";
		if (arrayElement)
		{
			bodyStr += "    ";
		}
	}

	std::string backgroundName = parent->GetDeclarationPtrName(source);
	bodyStr += StringHelper::Sprintf("%s, ", backgroundName.c_str());
	bodyStr += "\n    ";
	if (arrayElement)
	{
		bodyStr += "    ";
	}

	bodyStr += StringHelper::Sprintf("0x%08X, ", unk_0C);
	bodyStr += StringHelper::Sprintf("0x%08X, ", tlut);
	bodyStr += "\n    ";
	if (arrayElement)
	{
		bodyStr += "    ";
	}

	bodyStr += StringHelper::Sprintf("%i, ", width);
	bodyStr += StringHelper::Sprintf("%i, ", height);
	bodyStr += "\n    ";
	if (arrayElement)
	{
		bodyStr += "    ";
	}

	bodyStr += StringHelper::Sprintf("%i, ", fmt);
	bodyStr += StringHelper::Sprintf("%i, ", siz);
	bodyStr += "\n    ";
	if (arrayElement)
	{
		bodyStr += "    ";
	}

	bodyStr += StringHelper::Sprintf("0x%04X, ", mode0);
	bodyStr += StringHelper::Sprintf("0x%04X, ", tlutCount);
	if (arrayElement)
	{
		bodyStr += " \n    }, ";
	}
	else
	{
		bodyStr += "\n";
	}

	return bodyStr;
}

std::string BgImage::GetDefaultName(const std::string& prefix, uint32_t address)
{
	return StringHelper::Sprintf("%sBgImage_%06X", prefix.c_str(), address);
}

std::string BgImage::GetSourceTypeName()
{
	return "BgImage";
}

std::string BgImage::GetName()
{
	return name;
}

/* PolygonType section */

PolygonTypeBase::PolygonTypeBase(ZFile* nParent, const std::vector<uint8_t>& nRawData,
                                 uint32_t nRawDataIndex, ZRoom* nRoom)
	: rawData{nRawData}, rawDataIndex{nRawDataIndex}, parent{nParent}, zRoom{nRoom}
{
	type = BitConverter::ToUInt8BE(rawData, rawDataIndex);
}

void PolygonTypeBase::DeclareVar(const std::string& prefix, const std::string& bodyStr)
{
	std::string auxName = name;
	if (name == "")
		auxName = GetDefaultName(prefix);

	parent->AddDeclaration(rawDataIndex, DeclarationAlignment::Align4, GetRawDataSize(),
	                       GetSourceTypeName(), auxName, bodyStr);
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
		decl->text = bodyStr;
	}
}

std::string PolygonTypeBase::GetSourceTypeName() const
{
	switch (type)
	{
	case 2:
		return "PolygonType2";

	case 1:
		return "PolygonType1";

	default:
		return "PolygonType0";
	}
}

std::string PolygonTypeBase::GetName() const
{
	return name;
}

void PolygonTypeBase::SetName(const std::string& newName)
{
	name = newName;
}

std::string PolygonTypeBase::GetDefaultName(const std::string& prefix) const
{
	return StringHelper::Sprintf("%s%s_%06X", prefix.c_str(), GetSourceTypeName().c_str(),
	                             rawDataIndex);
}

PolygonType1::PolygonType1(ZFile* nParent, const std::vector<uint8_t>& nRawData,
                           uint32_t nRawDataIndex, ZRoom* nRoom)
	: PolygonTypeBase(nParent, nRawData, nRawDataIndex, nRoom)
{
}

void PolygonType1::ParseRawData()
{
	format = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x01);
	dlist = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x04);

	if (format == 2)
	{
		count = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x08);
		list = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x0C);
	}

	if (dlist != 0)
	{
		PolygonDlist polyGfxList(zRoom->GetName(), rawData,
		                         Seg2Filespace(dlist, parent->baseAddress), parent, zRoom);
		polyGfxList.SetPolyType(type);
		polyGfxList.ParseRawData();
		polyGfxList.DeclareReferences(zRoom->GetName());
		polyDLists.push_back(polyGfxList);
	}
}

void PolygonType1::DeclareReferences(const std::string& prefix)
{
	polyDLists.at(0).DeclareAndGenerateOutputCode();

	uint32_t listAddress;
	std::string bgImageArrayBody = "";
	switch (format)
	{
	case 1:
		single = BgImage(true, prefix, rawData, rawDataIndex + 0x08, parent);
		break;

	case 2:
		if (list != 0)
		{
			listAddress = Seg2Filespace(list, parent->baseAddress);
			for (size_t i = 0; i < count; ++i)
			{
				BgImage bg(false, prefix, rawData, listAddress + i * BgImage::GetRawDataSize(),
				           parent);
				multiList.push_back(bg);
				bgImageArrayBody += bg.GetBodySourceCode(true);
				if (i + 1 < count)
				{
					bgImageArrayBody += "\n";
				}
			}

			Declaration* decl = parent->GetDeclaration(listAddress);
			if (decl == nullptr)
			{
				parent->AddDeclarationArray(
					listAddress, DeclarationAlignment::Align4, count * BgImage::GetRawDataSize(),
					BgImage::GetSourceTypeName(), multiList.at(0).GetName().c_str(), count,
					bgImageArrayBody);
			}
		}
		break;

	default:
		throw std::runtime_error(StringHelper::Sprintf(
			"Error in PolygonType1::PolygonType1\n\t Unknown format: %i\n", format));
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

	std::string dlistStr = parent->GetDeclarationPtrName(dlist);
	bodyStr += StringHelper::Sprintf("%s, ", dlistStr.c_str());
	bodyStr += "}, \n";

	std::string listStr = "NULL";
	// bodyStr += "    { \n";
	switch (format)
	{
	case 1:
		bodyStr += single.GetBodySourceCode(false);
		break;
	case 2:
		listStr = parent->GetDeclarationPtrName(list);
		bodyStr += StringHelper::Sprintf("    %i, %s, \n", count, listStr.c_str());
		break;

	default:
		break;
	}
	// bodyStr += "    } \n";

	return bodyStr;
}

std::string PolygonType1::GetSourceTypeName() const
{
	switch (format)
	{
	case 1:
		return "MeshHeader1Single";

	case 2:
		return "MeshHeader1Multi";
	}
	return "ERROR";
	// return "PolygonType1";
}

PolygonType2::PolygonType2(ZFile* nParent, const std::vector<uint8_t>& nRawData,
                           uint32_t nRawDataIndex, ZRoom* nRoom)
	: PolygonTypeBase(nParent, nRawData, nRawDataIndex, nRoom)
{
}

void PolygonType2::ParseRawData()
{
	num = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x01);

	start = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x04);
	end = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x08);

	uint32_t currentPtr = GETSEGOFFSET(start);
	for (size_t i = 0; i < num; i++)
	{
		PolygonDlist entry(zRoom->GetName(), rawData, currentPtr, parent, zRoom);
		entry.SetPolyType(type);
		entry.ParseRawData();
		entry.DeclareReferences(zRoom->GetName());
		polyDLists.push_back(entry);
		currentPtr += entry.GetRawDataSize();
	}
}

void PolygonType2::DeclareReferences(const std::string& prefix)
{
	if (num > 0)
	{
		std::string declaration = "";

		for (size_t i = 0; i < polyDLists.size(); i++)
		{
			declaration += polyDLists.at(i).GetBodySourceCode(true);
			if (i + 1 < polyDLists.size())
				declaration += "\n";
		}

		std::string polyDlistType = polyDLists.at(0).GetSourceTypeName();
		std::string polyDListName = "";
		polyDListName = StringHelper::Sprintf("%s%s_%06X", prefix.c_str(), polyDlistType.c_str(),
		                                      GETSEGOFFSET(start));

		parent->AddDeclarationArray(GETSEGOFFSET(start), DeclarationAlignment::Align4,
		                            polyDLists.size() * polyDLists.at(0).GetRawDataSize(),
		                            polyDlistType, polyDListName, polyDLists.size(), declaration);
	}

	parent->AddDeclaration(GETSEGOFFSET(end), DeclarationAlignment::Align4,
	                       DeclarationPadding::Pad16, 4, "static s32", "terminatorMaybe",
	                       "0x01000000");
}

std::string PolygonType2::GetBodySourceCode() const
{
	std::string listName = parent->GetDeclarationPtrName(start);

	std::string body = StringHelper::Sprintf("\n    %i, %i,\n", type, polyDLists.size());
	body += StringHelper::Sprintf("    %s,\n", listName.c_str());
	body +=
		StringHelper::Sprintf("    %s + ARRAY_COUNTU(%s)\n", listName.c_str(), listName.c_str());
	return body;
}

size_t PolygonType2::GetRawDataSize() const
{
	return 0x0C;
}
