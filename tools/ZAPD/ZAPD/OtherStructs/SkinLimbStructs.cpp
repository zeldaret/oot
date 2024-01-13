#include "SkinLimbStructs.h"

#include "Globals.h"
#include "Utils/BitConverter.h"
#include "Utils/StringHelper.h"
#include "ZDisplayList.h"
#include "ZFile.h"

/* SkinVertex */

SkinVertex::SkinVertex(ZFile* nParent) : ZResource(nParent)
{
}

void SkinVertex::ParseRawData()
{
	const auto& rawData = parent->GetRawData();

	index = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0x00);
	s = BitConverter::ToInt16BE(rawData, rawDataIndex + 0x02);
	t = BitConverter::ToInt16BE(rawData, rawDataIndex + 0x04);
	normX = BitConverter::ToInt8BE(rawData, rawDataIndex + 0x06);
	normY = BitConverter::ToInt8BE(rawData, rawDataIndex + 0x07);
	normZ = BitConverter::ToInt8BE(rawData, rawDataIndex + 0x08);
	alpha = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x09);
}

std::string SkinVertex::GetBodySourceCode() const
{
	return StringHelper::Sprintf("0x%02X, %i, %i, %i, %i, %i, 0x%02X", index, s, t, normX, normY,
	                             normZ, alpha);
}

std::string SkinVertex::GetSourceTypeName() const
{
	return "SkinVertex";
}

ZResourceType SkinVertex::GetResourceType() const
{
	// TODO
	return ZResourceType::Error;
}

size_t SkinVertex::GetRawDataSize() const
{
	return 0x0A;
}

/* SkinTransformation */

SkinTransformation::SkinTransformation(ZFile* nParent) : ZResource(nParent)
{
}

void SkinTransformation::ParseRawData()
{
	const auto& rawData = parent->GetRawData();

	limbIndex = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x00);
	x = BitConverter::ToInt16BE(rawData, rawDataIndex + 0x02);
	y = BitConverter::ToInt16BE(rawData, rawDataIndex + 0x04);
	z = BitConverter::ToInt16BE(rawData, rawDataIndex + 0x06);
	scale = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x08);
}

std::string SkinTransformation::GetBodySourceCode() const
{
	return StringHelper::Sprintf("0x%02X, %i, %i, %i, 0x%02X", limbIndex, x, y, z, scale);
}

std::string SkinTransformation::GetSourceTypeName() const
{
	return "SkinTransformation";
}

ZResourceType SkinTransformation::GetResourceType() const
{
	// TODO
	return ZResourceType::Error;
}

size_t SkinTransformation::GetRawDataSize() const
{
	return 0x0A;
}

/* SkinLimbModif */

SkinLimbModif::SkinLimbModif(ZFile* nParent) : ZResource(nParent)
{
}

void SkinLimbModif::ParseRawData()
{
	const auto& rawData = parent->GetRawData();

	vtxCount = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0x00);
	transformCount = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0x02);
	unk_4 = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0x04);
	skinVertices = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x08);
	limbTransformations = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x0C);

	if (skinVertices != 0 && GETSEGNUM(skinVertices) == parent->segment)
	{
		uint32_t unk_8_Offset = Seg2Filespace(skinVertices, parent->baseAddress);

		skinVertices_arr.reserve(vtxCount);
		for (size_t i = 0; i < vtxCount; i++)
		{
			SkinVertex skinVertices_data(parent);
			skinVertices_data.ExtractFromFile(unk_8_Offset);
			skinVertices_arr.push_back(skinVertices_data);

			unk_8_Offset += skinVertices_data.GetRawDataSize();
		}
	}

	if (limbTransformations != 0 && GETSEGNUM(skinVertices) == parent->segment)
	{
		uint32_t unk_C_Offset = Seg2Filespace(limbTransformations, parent->baseAddress);

		limbTransformations_arr.reserve(transformCount);
		for (size_t i = 0; i < transformCount; i++)
		{
			SkinTransformation limbTransformations_data(parent);
			limbTransformations_data.ExtractFromFile(unk_C_Offset);
			limbTransformations_arr.push_back(limbTransformations_data);

			unk_C_Offset += limbTransformations_data.GetRawDataSize();
		}
	}
}

void SkinLimbModif::DeclareReferences(const std::string& prefix)
{
	std::string varPrefix = prefix;
	if (name != "")
		varPrefix = name;

	if (skinVertices != 0 && GETSEGNUM(skinVertices) == parent->segment)
	{
		const auto& res = skinVertices_arr.at(0);
		std::string unk_8_Str = res.GetDefaultName(varPrefix);

		size_t arrayItemCnt = skinVertices_arr.size();
		std::string entryStr = "";

		for (size_t i = 0; i < arrayItemCnt; i++)
		{
			auto& child = skinVertices_arr[i];
			child.DeclareReferences(varPrefix);
			entryStr += StringHelper::Sprintf("\t{ %s },", child.GetBodySourceCode().c_str());

			if (i < arrayItemCnt - 1)
				entryStr += "\n";
		}

		uint32_t skinVertices_Offset = Seg2Filespace(skinVertices, parent->baseAddress);
		Declaration* decl = parent->GetDeclaration(skinVertices_Offset);
		if (decl == nullptr)
		{
			parent->AddDeclarationArray(skinVertices_Offset, res.GetDeclarationAlignment(),
			                            arrayItemCnt * res.GetRawDataSize(),
			                            res.GetSourceTypeName(), unk_8_Str, arrayItemCnt, entryStr);
		}
		else
			decl->declBody = entryStr;
	}

	if (limbTransformations != 0 && GETSEGNUM(limbTransformations) == parent->segment)
	{
		const auto& res = limbTransformations_arr.at(0);
		std::string unk_C_Str = res.GetDefaultName(varPrefix);

		size_t arrayItemCnt = limbTransformations_arr.size();
		std::string entryStr = "";

		for (size_t i = 0; i < arrayItemCnt; i++)
		{
			auto& child = limbTransformations_arr[i];
			child.DeclareReferences(varPrefix);
			entryStr += StringHelper::Sprintf("\t{ %s },", child.GetBodySourceCode().c_str());

			if (i < arrayItemCnt - 1)
				entryStr += "\n";
		}

		uint32_t unk_C_Offset = Seg2Filespace(limbTransformations, parent->baseAddress);
		Declaration* decl = parent->GetDeclaration(unk_C_Offset);
		if (decl == nullptr)
		{
			parent->AddDeclarationArray(unk_C_Offset, res.GetDeclarationAlignment(),
			                            arrayItemCnt * res.GetRawDataSize(),
			                            res.GetSourceTypeName(), unk_C_Str, arrayItemCnt, entryStr);
		}
		else
			decl->declBody = entryStr;
	}
}

std::string SkinLimbModif::GetBodySourceCode() const
{
	std::string skinVertices_Str;
	std::string unk_C_Str;
	Globals::Instance->GetSegmentedPtrName(skinVertices, parent, "SkinVertex", skinVertices_Str);
	Globals::Instance->GetSegmentedPtrName(limbTransformations, parent, "SkinTransformation",
	                                       unk_C_Str);

	std::string entryStr = StringHelper::Sprintf("\n\t\tARRAY_COUNTU(%s), ARRAY_COUNTU(%s),\n",
	                                             skinVertices_Str.c_str(), unk_C_Str.c_str());
	entryStr += StringHelper::Sprintf("\t\t%i, %s, %s\n\t", unk_4, skinVertices_Str.c_str(),
	                                  unk_C_Str.c_str());

	return entryStr;
}

std::string SkinLimbModif::GetSourceTypeName() const
{
	return "SkinLimbModif";
}

ZResourceType SkinLimbModif::GetResourceType() const
{
	// TODO
	return ZResourceType::Error;
}

size_t SkinLimbModif::GetRawDataSize() const
{
	return 0x10;
}

/* SkinAnimatedLimbData */

SkinAnimatedLimbData::SkinAnimatedLimbData(ZFile* nParent) : ZResource(nParent)
{
}

void SkinAnimatedLimbData::ParseRawData()
{
	const auto& rawData = parent->GetRawData();

	totalVtxCount = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0x00);
	limbModifCount = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0x02);
	limbModifications = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x04);
	dlist = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x08);

	if (limbModifications != 0 && GETSEGNUM(limbModifications) == parent->segment)
	{
		uint32_t limbModifications_Offset = Seg2Filespace(limbModifications, parent->baseAddress);

		limbModifications_arr.reserve(limbModifCount);
		for (size_t i = 0; i < limbModifCount; i++)
		{
			SkinLimbModif limbModifications_data(parent);
			limbModifications_data.ExtractFromFile(limbModifications_Offset);
			limbModifications_arr.push_back(limbModifications_data);

			limbModifications_Offset += limbModifications_data.GetRawDataSize();
		}
	}
}

void SkinAnimatedLimbData::DeclareReferences(const std::string& prefix)
{
	std::string varPrefix = prefix;
	if (name != "")
		varPrefix = name;

	ZResource::DeclareReferences(varPrefix);

	if (limbModifications != SEGMENTED_NULL && GETSEGNUM(limbModifications) == parent->segment)
	{
		const auto& res = limbModifications_arr.at(0);
		std::string limbModifications_Str = res.GetDefaultName(varPrefix);

		size_t arrayItemCnt = limbModifications_arr.size();
		std::string entryStr = "";

		for (size_t i = 0; i < arrayItemCnt; i++)
		{
			auto& child = limbModifications_arr[i];
			child.DeclareReferences(varPrefix);
			entryStr += StringHelper::Sprintf("\t{ %s },", child.GetBodySourceCode().c_str());

			if (i < arrayItemCnt - 1)
				entryStr += "\n";
		}

		uint32_t limbModifications_Offset = Seg2Filespace(limbModifications, parent->baseAddress);
		Declaration* decl = parent->GetDeclaration(limbModifications_Offset);
		if (decl == nullptr)
		{
			parent->AddDeclarationArray(limbModifications_Offset, res.GetDeclarationAlignment(),
			                            arrayItemCnt * res.GetRawDataSize(),
			                            res.GetSourceTypeName(), limbModifications_Str,
			                            arrayItemCnt, entryStr);
		}
		else
			decl->declBody = entryStr;
	}

	if (dlist != SEGMENTED_NULL && GETSEGNUM(dlist) == parent->segment)
	{
		uint32_t dlist_Offset = Seg2Filespace(dlist, parent->baseAddress);

		int32_t dlistLength = ZDisplayList::GetDListLength(
			parent->GetRawData(), dlist_Offset,
			Globals::Instance->game == ZGame::OOT_SW97 ? DListType::F3DEX : DListType::F3DZEX);
		ZDisplayList* dlist_data = new ZDisplayList(parent);
		dlist_data->ExtractFromBinary(dlist_Offset, dlistLength);

		std::string dListStr =
			StringHelper::Sprintf("%sSkinLimbDL_%06X", varPrefix.c_str(), dlist_Offset);
		dlist_data->SetName(dListStr);
		dlist_data->DeclareVar(varPrefix, "");
		dlist_data->DeclareReferences(varPrefix);
		parent->AddResource(dlist_data);
	}
}

std::string SkinAnimatedLimbData::GetBodySourceCode() const
{
	std::string limbModifications_Str;
	std::string dlist_Str;
	Globals::Instance->GetSegmentedPtrName(limbModifications, parent, "SkinLimbModif",
	                                       limbModifications_Str);
	Globals::Instance->GetSegmentedPtrName(dlist, parent, "Gfx", dlist_Str);

	std::string entryStr = "\n";
	entryStr += StringHelper::Sprintf("\t%i, ARRAY_COUNTU(%s),\n", totalVtxCount,
	                                  limbModifications_Str.c_str());
	entryStr +=
		StringHelper::Sprintf("\t%s, %s\n", limbModifications_Str.c_str(), dlist_Str.c_str());

	return entryStr;
}

std::string SkinAnimatedLimbData::GetSourceTypeName() const
{
	return "SkinAnimatedLimbData";
}

ZResourceType SkinAnimatedLimbData::GetResourceType() const
{
	// TODO
	return ZResourceType::Error;
}

size_t SkinAnimatedLimbData::GetRawDataSize() const
{
	return 0x0C;
}
