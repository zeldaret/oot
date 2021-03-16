#include "ZLimb.h"
#include "BitConverter.h"
#include "StringHelper.h"
#include "Globals.h"
#include <cassert>

using namespace std;


Struct_800A57C0::Struct_800A57C0(const std::vector<uint8_t>& rawData, uint32_t fileOffset)
{
	unk_0 = BitConverter::ToUInt16BE(rawData, fileOffset + 0x00);
	unk_2 = BitConverter::ToInt16BE(rawData, fileOffset + 0x02);
	unk_4 = BitConverter::ToInt16BE(rawData, fileOffset + 0x04);
	unk_6 = BitConverter::ToInt8BE(rawData, fileOffset + 0x06);
	unk_7 = BitConverter::ToInt8BE(rawData, fileOffset + 0x07);
	unk_8 = BitConverter::ToInt8BE(rawData, fileOffset + 0x08);
	unk_9 = BitConverter::ToUInt8BE(rawData, fileOffset + 0x09);
}
Struct_800A57C0::Struct_800A57C0(const std::vector<uint8_t>& rawData, uint32_t fileOffset, size_t index)
	: Struct_800A57C0(rawData, fileOffset + index * GetRawDataSize())
{
}

std::string Struct_800A57C0::GetSourceOutputCode() const
{
	return StringHelper::Sprintf("0x%02X, %i, %i, %i, %i, %i, 0x%02X", 
		unk_0, unk_2, unk_4, unk_6, unk_7, unk_8, unk_9);
}

size_t Struct_800A57C0::GetRawDataSize()
{
	return 0x0A;
}

std::string Struct_800A57C0::GetSourceTypeName()
{
	return "Struct_800A57C0";
}


Struct_800A598C_2::Struct_800A598C_2(const std::vector<uint8_t>& rawData, uint32_t fileOffset)
{
	unk_0 = BitConverter::ToUInt8BE(rawData, fileOffset + 0x00);
	x = BitConverter::ToInt16BE(rawData, fileOffset + 0x02);
	y = BitConverter::ToInt16BE(rawData, fileOffset + 0x04);
	z = BitConverter::ToInt16BE(rawData, fileOffset + 0x06);
	unk_8 = BitConverter::ToUInt8BE(rawData, fileOffset + 0x08);
}
Struct_800A598C_2::Struct_800A598C_2(const std::vector<uint8_t>& rawData, uint32_t fileOffset, size_t index)
	: Struct_800A598C_2(rawData, fileOffset + index * GetRawDataSize())
{
}

std::string Struct_800A598C_2::GetSourceOutputCode() const
{
	return StringHelper::Sprintf("0x%02X, %i, %i, %i, 0x%02X", 
		unk_0, x, y, z, unk_8);
}

size_t Struct_800A598C_2::GetRawDataSize()
{
	return 0x0A;
}

std::string Struct_800A598C_2::GetSourceTypeName()
{
	return "Struct_800A598C_2";
}


Struct_800A598C::Struct_800A598C(ZFile* parent, const std::vector<uint8_t>& rawData, uint32_t fileOffset)
	: parent(parent)
{
	unk_0 = BitConverter::ToUInt16BE(rawData, fileOffset + 0x00);
	unk_2 = BitConverter::ToUInt16BE(rawData, fileOffset + 0x02);
	unk_4 = BitConverter::ToUInt16BE(rawData, fileOffset + 0x04);
	unk_8 = BitConverter::ToUInt32BE(rawData, fileOffset + 0x08);
	unk_C = BitConverter::ToUInt32BE(rawData, fileOffset + 0x0C);

	if (unk_8 != 0) {
		uint32_t unk_8_Offset = Seg2Filespace(unk_8, parent->baseAddress);
		for (size_t i = 0; i < unk_0; i++) {
			unk_8_arr.emplace_back(rawData, unk_8_Offset, i);
		}
	}

	if (unk_C != 0) {
		uint32_t unk_C_Offset = Seg2Filespace(unk_C, parent->baseAddress);
		for (size_t i = 0; i < unk_2; i++) {
			unk_C_arr.emplace_back(rawData, unk_C_Offset, i);
		}
	}
}
Struct_800A598C::Struct_800A598C(ZFile* parent, const std::vector<uint8_t>& rawData, uint32_t fileOffset, size_t index)
	: Struct_800A598C(parent, rawData, fileOffset + index * GetRawDataSize())
{
}

void Struct_800A598C::PreGenSourceFiles(const std::string& prefix)
{
	string entryStr;

	if (unk_8 != 0) {
		uint32_t unk_8_Offset = Seg2Filespace(unk_8, parent->baseAddress);
		string unk_8_Str = StringHelper::Sprintf("%sSkinLimb_%s_%06X", prefix.c_str(), Struct_800A57C0::GetSourceTypeName().c_str(), unk_8_Offset);

		size_t arrayItemCnt = unk_8_arr.size();
		entryStr = "";
		size_t i = 0;
		for (auto& child: unk_8_arr) {
			entryStr += StringHelper::Sprintf("    { %s },%s", 
				child.GetSourceOutputCode().c_str(),
				(++i < arrayItemCnt) ? "\n" : "");
		}

		Declaration* decl = parent->GetDeclaration(unk_8_Offset);
		if (decl == nullptr) {
			parent->AddDeclarationArray(
				unk_8_Offset, DeclarationAlignment::None, 
				arrayItemCnt * Struct_800A57C0::GetRawDataSize(), Struct_800A57C0::GetSourceTypeName(), 
				unk_8_Str, arrayItemCnt, entryStr);
		}
		else {
			decl->text = entryStr;
		}
	}

	if (unk_C != 0) {
		uint32_t unk_C_Offset = Seg2Filespace(unk_C, parent->baseAddress);
		string unk_C_Str = StringHelper::Sprintf("%sSkinLimb_%s_%06X", prefix.c_str(), Struct_800A598C_2::GetSourceTypeName().c_str(), unk_C_Offset);

		size_t arrayItemCnt = unk_C_arr.size();
		entryStr = "";
		size_t i = 0;
		for (auto& child: unk_C_arr) {
			entryStr += StringHelper::Sprintf("    { %s },%s", 
				child.GetSourceOutputCode().c_str(), 
				(++i < arrayItemCnt) ? "\n" : "");
		}

		Declaration* decl = parent->GetDeclaration(unk_C_Offset);
		if (decl == nullptr) {
			parent->AddDeclarationArray(
				unk_C_Offset, DeclarationAlignment::None, 
				arrayItemCnt * Struct_800A598C_2::GetRawDataSize(), Struct_800A598C_2::GetSourceTypeName(), 
				unk_C_Str, arrayItemCnt, entryStr);
		}
		else {
			decl->text = entryStr;
		}
	}
}

std::string Struct_800A598C::GetSourceOutputCode(const std::string& prefix) const
{
	string entryStr;

	string unk_8_Str = "NULL";
	if (unk_8 != 0) {
		uint32_t unk_8_Offset = Seg2Filespace(unk_8, parent->baseAddress);
		unk_8_Str = StringHelper::Sprintf("%sSkinLimb_%s_%06X", prefix.c_str(), Struct_800A57C0::GetSourceTypeName().c_str(), unk_8_Offset);
	}

	string unk_C_Str = "NULL";
	if (unk_C != 0) {
		uint32_t unk_C_Offset = Seg2Filespace(unk_C, parent->baseAddress);
		unk_C_Str = StringHelper::Sprintf("%sSkinLimb_%s_%06X", prefix.c_str(), Struct_800A598C_2::GetSourceTypeName().c_str(), unk_C_Offset);
	}

	entryStr = StringHelper::Sprintf("\n        ARRAY_COUNTU(%s), ARRAY_COUNTU(%s),\n",
		unk_8_Str.c_str(), unk_C_Str.c_str());
	entryStr += StringHelper::Sprintf("        %i, %s, %s\n   ", unk_4,
		unk_8_Str.c_str(), unk_C_Str.c_str());

	return entryStr;
}

size_t Struct_800A598C::GetRawDataSize()
{
	return 0x10;
}

std::string Struct_800A598C::GetSourceTypeName()
{
	return "Struct_800A598C";
}


Struct_800A5E28::Struct_800A5E28(ZFile* parent, const std::vector<uint8_t>& nRawData, uint32_t fileOffset)
	: parent(parent), rawData(nRawData)
{
	unk_0 = BitConverter::ToUInt16BE(nRawData, fileOffset + 0x00);
	unk_2 = BitConverter::ToUInt16BE(nRawData, fileOffset + 0x02);
	unk_4 = BitConverter::ToUInt32BE(nRawData, fileOffset + 0x04);
	unk_8 = BitConverter::ToUInt32BE(nRawData, fileOffset + 0x08);

	if (unk_4 != 0) {
		uint32_t unk_4_Offset = Seg2Filespace(unk_4, parent->baseAddress);
		for (size_t i = 0; i < unk_2; i++) {
			unk_4_arr.emplace_back(parent, nRawData, unk_4_Offset, i);
		}
	}
}
Struct_800A5E28::Struct_800A5E28(ZFile* parent, const std::vector<uint8_t>& rawData, uint32_t fileOffset, size_t index)
	: Struct_800A5E28(parent, rawData, fileOffset + index * GetRawDataSize())
{
}

Struct_800A5E28::~Struct_800A5E28()
{
	delete unk_8_dlist;
}

void Struct_800A5E28::PreGenSourceFiles(const std::string& prefix)
{
	if (unk_4 != 0) {
		uint32_t unk_4_Offset = Seg2Filespace(unk_4, parent->baseAddress);
		string unk_4_Str = StringHelper::Sprintf("%sSkinLimb_%s_%06X", prefix.c_str(), Struct_800A598C::GetSourceTypeName().c_str(), unk_4_Offset);

		string entryStr = "";
		uint16_t arrayItemCnt = unk_4_arr.size();

		size_t i = 0;
		for (auto& child: unk_4_arr) {
			child.PreGenSourceFiles(prefix);

			entryStr += StringHelper::Sprintf("    { %s },%s", 
				child.GetSourceOutputCode(prefix).c_str(), 
				(++i < arrayItemCnt) ? "\n" : "");
		}

		Declaration* decl = parent->GetDeclaration(unk_4_Offset);
		if (decl == nullptr) {
			parent->AddDeclarationArray(
				unk_4_Offset, DeclarationAlignment::None, 
				arrayItemCnt * Struct_800A598C::GetRawDataSize(), Struct_800A598C::GetSourceTypeName(), 
				unk_4_Str, arrayItemCnt, entryStr);
		}
		else {
			decl->text = entryStr;
		}
	}

	if (unk_8 != 0) {
		uint32_t unk_8_Offset = Seg2Filespace(unk_8, parent->baseAddress);

		int dlistLength = ZDisplayList::GetDListLength(rawData, unk_8_Offset, Globals::Instance->game == ZGame::OOT_SW97 ? DListType::F3DEX : DListType::F3DZEX);
		unk_8_dlist = new ZDisplayList(rawData, unk_8_Offset, dlistLength);
		unk_8_dlist->parent = parent;

		string dListStr = StringHelper::Sprintf("%sSkinLimbDL_%06X", prefix.c_str(), unk_8_Offset);
		unk_8_dlist->SetName(dListStr);
		unk_8_dlist->GetSourceOutputCode(prefix);
	}
}

std::string Struct_800A5E28::GetSourceOutputCode(const std::string& prefix) const
{
	string entryStr = "";

	string unk_4_Str = "NULL";
	if (unk_4 != 0) {
		uint32_t unk_4_Offset = Seg2Filespace(unk_4, parent->baseAddress);
		Declaration* decl = parent->GetDeclaration(unk_4_Offset);
		if (decl == nullptr) {
			unk_4_Str = StringHelper::Sprintf("%sSkinLimb_%s_%06X", prefix.c_str(), Struct_800A598C::GetSourceTypeName().c_str(), unk_4_Offset);
		}
		else {
			unk_4_Str = decl->varName;
		}
	}

	string unk_8_Str = "NULL";
	if (unk_8 != 0) {
		uint32_t unk_8_Offset = Seg2Filespace(unk_8, parent->baseAddress);
		Declaration* decl = parent->GetDeclaration(unk_8_Offset);
		if (decl == nullptr) {
			// Something went wrong...
			unk_8_Str = StringHelper::Sprintf("0x%08X", unk_8);
		}
		else {
			unk_8_Str = decl->varName;
		}
	}

	return StringHelper::Sprintf("\n    %i, ARRAY_COUNTU(%s),\n    %s, %s\n", 
		unk_0, unk_4_Str.c_str(), 
		unk_4_Str.c_str(), unk_8_Str.c_str());
}

size_t Struct_800A5E28::GetRawDataSize()
{
	return 0x0C;
}

std::string Struct_800A5E28::GetSourceTypeName()
{
	return "Struct_800A5E28";
}


ZLimb::ZLimb(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData, int nRawDataIndex, ZFile* nParent)
{
	rawData.assign(nRawData.begin(), nRawData.end());
	rawDataIndex = nRawDataIndex;
	parent = nParent;

	segAddress = nRawDataIndex;

	ParseXML(reader);
	ParseRawData();

	if (type == ZLimbType::Skin) {
		if (skinSegmentType == ZLimbSkinType::SkinType_4 && skinSegment != 0) {
			uint32_t skinSegmentOffset = Seg2Filespace(skinSegment, parent->baseAddress);
			segmentStruct = Struct_800A5E28(parent, rawData, skinSegmentOffset);
		}
	}
}

ZLimb::ZLimb(ZLimbType limbType, const std::string& prefix, const std::vector<uint8_t>& nRawData, int nRawDataIndex, ZFile* nParent)
{
	rawData.assign(nRawData.begin(), nRawData.end());
	rawDataIndex = nRawDataIndex;
	parent = nParent;
	type = limbType;

	segAddress = nRawDataIndex;
	name = StringHelper::Sprintf("%sLimb_%06X", prefix.c_str(), GetFileAddress());

	ParseRawData();
}

void ZLimb::ParseXML(tinyxml2::XMLElement* reader)
{
	ZResource::ParseXML(reader);

	// Reading from a <Skeleton/>
	const char* limbType = reader->Attribute("LimbType");
	if (limbType == nullptr) {
		// Reading from a <Limb/>
		limbType = reader->Attribute("Type");
	}

	if (limbType == nullptr) {
		fprintf(stderr, "ZLimb::ParseXML: Warning in '%s'.\n\t Missing 'LimbType' attribute in xml. Defaulting to 'Standard'.\n", name.c_str());
		type = ZLimbType::Standard;
	}
	else {
		string limbTypeStr(limbType);
		if (limbTypeStr == "Standard") {
			type = ZLimbType::Standard;
		}
		else if(limbTypeStr == "LOD") {
			type = ZLimbType::LOD;
		}
		else if(limbTypeStr == "Skin") {
			type = ZLimbType::Skin;
		}
		else {
			fprintf(stderr, "ZLimb::ParseXML: Warning in '%s'.\n\t Invalid LimbType found: '%s'. Defaulting to 'Standard'.\n", name.c_str(), limbType);
			type = ZLimbType::Standard;
		}
	}
}

void ZLimb::ParseRawData()
{
	transX = BitConverter::ToInt16BE(rawData, rawDataIndex + 0);
	transY = BitConverter::ToInt16BE(rawData, rawDataIndex + 2);
	transZ = BitConverter::ToInt16BE(rawData, rawDataIndex + 4);

	childIndex = rawData.at(rawDataIndex + 6);
	siblingIndex = rawData.at(rawDataIndex + 7);

	switch (type) {
	case ZLimbType::LOD:
		farDListPtr = BitConverter::ToUInt32BE(rawData, rawDataIndex + 12);
	case ZLimbType::Standard:
		dListPtr = BitConverter::ToUInt32BE(rawData, rawDataIndex + 8);
		break;
	case ZLimbType::Skin:
		skinSegmentType = static_cast<ZLimbSkinType>(BitConverter::ToInt32BE(rawData, rawDataIndex + 8));
		skinSegment = BitConverter::ToUInt32BE(rawData, rawDataIndex + 12);
		break;
	}
}

ZLimb* ZLimb::FromXML(tinyxml2::XMLElement* reader, vector<uint8_t> nRawData, int rawDataIndex, string nRelPath, ZFile* parent)
{
	ZLimb* limb = new ZLimb(reader, nRawData, rawDataIndex, parent);
	limb->relativePath = std::move(nRelPath);

	limb->parent->AddDeclaration(
		limb->GetFileAddress(), DeclarationAlignment::None, limb->GetRawDataSize(), 
		limb->GetSourceTypeName(), limb->name, "");

	return limb;
}


int ZLimb::GetRawDataSize()
{
	switch (type) {
	case ZLimbType::Standard:
		return 0x0C;
	case ZLimbType::LOD:
	case ZLimbType::Skin:
		return 0x10;
	}
	return 0x0C;
}

string ZLimb::GetSourceOutputCode(const std::string& prefix)
{
	string dListStr = "NULL";
	string dListStr2 = "NULL";

	if (dListPtr != 0) {
		dListStr = GetLimbDListSourceOutputCode(prefix, "", dListPtr);
	}
	if (farDListPtr != 0) {
		dListStr2 = GetLimbDListSourceOutputCode(prefix, "Far", farDListPtr);
	}

	string entryStr = StringHelper::Sprintf("\n    { %i, %i, %i },\n    0x%02X, 0x%02X,\n",
			transX, transY, transZ, childIndex, siblingIndex);

	switch (type) {
	case ZLimbType::Standard:
		entryStr += StringHelper::Sprintf("    %s\n", dListStr.c_str());
		break;
	case ZLimbType::LOD:
		entryStr += StringHelper::Sprintf("    { %s, %s }\n",
			dListStr.c_str(), dListStr2.c_str());
		break;
	case ZLimbType::Skin:
		entryStr += GetSourceOutputCodeSkin(prefix);
		break;
	}

	Declaration* decl = parent->GetDeclaration(GetFileAddress());
	if (decl == nullptr) {
		parent->AddDeclaration(GetFileAddress(), DeclarationAlignment::None, GetRawDataSize(), GetSourceTypeName(), name, entryStr);
	}
	else {
		decl->text = entryStr;
	}

	return "";
}

std::string ZLimb::GetSourceTypeName()
{
	return GetSourceTypeName(type);
}

ZResourceType ZLimb::GetResourceType()
{
	return ZResourceType::Limb;
}

ZLimbType ZLimb::GetLimbType()
{
	return type;
}

const char* ZLimb::GetSourceTypeName(ZLimbType limbType)
{
	switch (limbType) {
	case ZLimbType::Standard:
		return "StandardLimb";
	case ZLimbType::LOD:
		return "LodLimb";
	case ZLimbType::Skin:
		return "SkinLimb";
	}
	return "StandardLimb";
}

uint32_t ZLimb::GetFileAddress()
{
	return Seg2Filespace(segAddress, parent->baseAddress);
}

std::string ZLimb::GetLimbDListSourceOutputCode(const std::string& prefix, const std::string& limbPrefix, segptr_t dListPtr)
{
	if (dListPtr == 0) {
		return "NULL";
	}

	uint32_t dListOffset = Seg2Filespace(dListPtr, parent->baseAddress);

	string dListStr;
	Declaration* decl = parent->GetDeclaration(dListOffset);
	if (decl == nullptr) {
		dListStr = StringHelper::Sprintf("%s%sLimbDL_%06X", prefix.c_str(), limbPrefix.c_str(), dListOffset);

		int dlistLength = ZDisplayList::GetDListLength(rawData, dListOffset, Globals::Instance->game == ZGame::OOT_SW97 ? DListType::F3DEX : DListType::F3DZEX);
		auto& dList = dLists.emplace_back(rawData, dListOffset, dlistLength);
		dList.parent = parent;
		dList.SetName(dListStr);
		dList.GetSourceOutputCode(prefix);
	}
	else {
		dListStr = decl->varName;
	}

	return dListStr;
}

std::string ZLimb::GetSourceOutputCodeSkin_Type_4(const std::string& prefix)
{
	assert(type == ZLimbType::Skin);
	assert(skinSegmentType == ZLimbSkinType::SkinType_4);

	if (skinSegment == 0) {
		return "NULL";
	}

	uint32_t skinSegmentOffset = Seg2Filespace(skinSegment, parent->baseAddress);

	string struct_800A5E28_Str;
	Declaration* decl = parent->GetDeclaration(skinSegmentOffset);
	if (decl == nullptr) {
		struct_800A5E28_Str = StringHelper::Sprintf("%sSkinLimb_%s_%06X", prefix.c_str(), Struct_800A5E28::GetSourceTypeName().c_str(), skinSegmentOffset);

		segmentStruct.PreGenSourceFiles(prefix);
		string entryStr = segmentStruct.GetSourceOutputCode(prefix);

		parent->AddDeclaration(
			skinSegmentOffset, DeclarationAlignment::None, 
			Struct_800A5E28::GetRawDataSize(), Struct_800A5E28::GetSourceTypeName(), 
			struct_800A5E28_Str, entryStr);
	}
	else {
		struct_800A5E28_Str = decl->varName;
	}

	return struct_800A5E28_Str;
}

std::string ZLimb::GetSourceOutputCodeSkin(const std::string& prefix)
{
	assert(type == ZLimbType::Skin);

	string skinSegmentStr = "NULL";

	if (skinSegment != 0) {
		switch (skinSegmentType) {
		case ZLimbSkinType::SkinType_4:
			skinSegmentStr = "&" + GetSourceOutputCodeSkin_Type_4(prefix);
			break;
		case ZLimbSkinType::SkinType_DList:
			skinSegmentStr = GetLimbDListSourceOutputCode(prefix, "Skin", skinSegment);
			break;
		default:
			fprintf(stderr, "ZLimb::GetSourceOutputCodeSkinType: Error in '%s'.\n\t Unknown segment type for SkinLimb: '%i'. \n\tPlease report this.\n", name.c_str(), static_cast<int32_t>(skinSegmentType));
		case ZLimbSkinType::SkinType_0:
		case ZLimbSkinType::SkinType_5:
			fprintf(stderr, "ZLimb::GetSourceOutputCodeSkinType: Error in '%s'.\n\t Segment type for SkinLimb not implemented: '%i'.\n", name.c_str(), static_cast<int32_t>(skinSegmentType));
			skinSegmentStr = StringHelper::Sprintf("0x%08X", skinSegment);
			break;
		}
	}

	string entryStr = StringHelper::Sprintf("    0x%02X, %s\n",
		skinSegmentType, skinSegmentStr.c_str());

	return entryStr;
}
