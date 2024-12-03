#include "ZCKeyFrame.h"

#include "Globals.h"
#include "Utils/BitConverter.h"
#include "Utils/StringHelper.h"
#include "WarningHandler.h"

REGISTER_ZFILENODE(KeyFrameSkel, ZKeyFrameSkel);
REGISTER_ZFILENODE(KeyFrameLimbList, ZKeyFrameLimbList);

ZKeyFrameSkel::ZKeyFrameSkel(ZFile* nParent) : ZResource(nParent)
{
	RegisterRequiredAttribute("LimbType");
}

ZKeyFrameSkel::~ZKeyFrameSkel()
{
}

ZKeyFrameLimb::ZKeyFrameLimb(ZFile* nParent) : ZResource(nParent)
{
}

ZKeyFrameStandardLimb::ZKeyFrameStandardLimb(ZFile* nParent) : ZKeyFrameLimb(nParent)
{
}

ZKeyFrameFlexLimb::ZKeyFrameFlexLimb(ZFile* nParent) : ZKeyFrameLimb(nParent)
{
}

ZKeyFrameLimbList::ZKeyFrameLimbList(ZFile* nParent) : ZResource(nParent)
{
	RegisterRequiredAttribute("LimbType");
	RegisterRequiredAttribute("LimbCount");
}

ZKeyFrameLimbList::ZKeyFrameLimbList(ZFile* nParent, uint32_t limbCount, ZKeyframeSkelType type)
	: ZResource(nParent)
{
	numLimbs = limbCount;
	limbType = type;
}

ZKeyFrameLimbList::~ZKeyFrameLimbList()
{
	for (const auto l : limbs)
		delete l;
}

void ZKeyFrameSkel::ParseXML(tinyxml2::XMLElement* reader)
{
	ZResource::ParseXML(reader);

	std::string limbTypeStr = registeredAttributes.at("LimbType").value;

	limbType = ZKeyFrameLimbList::ParseLimbTypeStr(limbTypeStr);
	if (limbType == ZKeyframeSkelType::Error)
		HANDLE_ERROR_RESOURCE(
			WarningType::InvalidXML, parent, this, rawDataIndex, "Invalid limb type",
			StringHelper::Sprintf("Invalid limb type. Was expecting 'Flex' or 'Normal'. Got %s.",
		                          limbTypeStr.c_str()));
}
void ZKeyFrameLimbList::ParseXML(tinyxml2::XMLElement* reader)
{
	ZResource::ParseXML(reader);

	std::string limbTypeStr = registeredAttributes.at("LimbType").value;
	std::string numLimbStr = registeredAttributes.at("LimbCount").value;

	limbType = ParseLimbTypeStr(limbTypeStr);

	if (limbType == ZKeyframeSkelType::Error)
		HANDLE_ERROR_RESOURCE(
			WarningType::InvalidXML, parent, this, rawDataIndex, "Invalid limb type",
			StringHelper::Sprintf("Invalid limb type. Was expecting 'Flex' or 'Normal'. Got %s.",
		                          limbTypeStr.c_str()));

	numLimbs = (uint8_t)StringHelper::StrToL(numLimbStr);
}

void ZKeyFrameSkel::ParseRawData()
{
	ZResource::ParseRawData();

	const auto& rawData = parent->GetRawData();
	limbCount = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0);
	dListCount = BitConverter::ToUInt8BE(rawData, rawDataIndex + 1);
	limbsPtr = BitConverter::ToUInt32BE(rawData, rawDataIndex + 4);

	limbList = std::make_unique<ZKeyFrameLimbList>(parent, limbCount, limbType);
	limbList->SetRawDataIndex(GETSEGOFFSET(limbsPtr));
	limbList->ParseRawData();
}

void ZKeyFrameSkel::DeclareReferences(const std::string& prefix)
{
	std::string defaultPrefix = name;
	std::string declaration;

	if (defaultPrefix == "")
		defaultPrefix = prefix;

	ZResource::DeclareReferences(defaultPrefix);
	declaration += limbList->GetBodySourceCode();
	parent->AddDeclarationArray(
		GETSEGOFFSET(limbsPtr), DeclarationAlignment::Align4, limbList->GetRawDataSize(),
		limbList->GetSourceTypeName(),
		StringHelper::Sprintf("%s_KeyFrameLimbs_%06X", prefix.c_str(), rawDataIndex),
		limbList->limbs.size(), declaration);
}

std::string ZKeyFrameSkel::GetBodySourceCode() const
{
	std::string limbStr;

	if (limbType == ZKeyframeSkelType::Normal)
		Globals::Instance->GetSegmentedPtrName(limbsPtr, parent, "KeyFrameStandardLimb", limbStr);
	else
		Globals::Instance->GetSegmentedPtrName(limbsPtr, parent, "KeyFrameFlexLimb", limbStr);

	return StringHelper::Sprintf("\n\t0x%02X, 0x%02X, %s\n", limbCount, dListCount,
	                             limbStr.c_str());
}

size_t ZKeyFrameSkel::GetRawDataSize() const
{
	return 0x8;
}

std::string ZKeyFrameSkel::GetSourceTypeName() const
{
	switch (limbType)
	{
		case ZKeyframeSkelType::Normal:
			return "KeyFrameSkeleton";

		case ZKeyframeSkelType::Flex:
			return "KeyFrameFlexSkeleton";

		default:
			return "KeyFrameSkeleton";
	}
}

ZResourceType ZKeyFrameSkel::GetResourceType() const
{
	return ZResourceType::KeyFrameSkel;
}

size_t ZKeyFrameStandardLimb::GetRawDataSize() const
{
	return 0xC;
}

size_t ZKeyFrameFlexLimb::GetRawDataSize() const
{
	return 0x8;
}

size_t ZKeyFrameLimbList::GetRawDataSize() const
{
	size_t limbSize;
	if (limbType == ZKeyframeSkelType::Flex)
		limbSize = 0x8;
	else
		limbSize = 0xC;

	return limbSize * numLimbs;
}

ZKeyframeSkelType ZKeyFrameLimbList::ParseLimbTypeStr(const std::string& typeStr)
{
	if (typeStr == "Flex")
		return ZKeyframeSkelType::Flex;
	else if (typeStr == "Normal")
		return ZKeyframeSkelType::Normal;
	else
		return ZKeyframeSkelType::Error;
}

void ZKeyFrameLimb::ParseRawData()
{
	const auto& rawData = parent->GetRawData();

	dlist = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x0);
	numChildren = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x4);
	flags = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x5);
}

void ZKeyFrameStandardLimb::ParseRawData()
{
	const auto& rawData = parent->GetRawData();

	ZKeyFrameLimb::ParseRawData();
	translation.x = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0x6);
	translation.y = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0x8);
	translation.z = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0xA);
}

void ZKeyFrameFlexLimb::ParseRawData()
{
	const auto& rawData = parent->GetRawData();

	ZKeyFrameLimb::ParseRawData();
	callbackIndex = BitConverter::ToUInt8BE(rawData, rawDataIndex + 0x6);
}

void ZKeyFrameLimbList::ParseRawData()
{
	limbs.reserve(numLimbs);
	rawDataIndex = GetRawDataIndex();

	for (uint32_t i = 0; i < numLimbs; i++)
	{
		ZKeyFrameLimb* limb;
		if (limbType == ZKeyframeSkelType::Flex)
			limb = new ZKeyFrameFlexLimb(parent);
		else
			limb = new ZKeyFrameStandardLimb(parent);

		limb->SetRawDataIndex(rawDataIndex + (offset_t)(i * limb->GetRawDataSize()));
		limb->ParseRawData();
		limbs.push_back(limb);
	}
}

std::string ZKeyFrameLimbList::GetBodySourceCode() const
{
	std::string declaration;

	for (const auto l : limbs)
		declaration += StringHelper::Sprintf("\t{ %s },\n", l->GetBodySourceCode().c_str());
	// Remove last newline
	return declaration.substr(0, declaration.length() - 1);
}

std::string ZKeyFrameStandardLimb::GetBodySourceCode() const
{
	std::string declaration;
	std::string dlString;

	Globals::Instance->GetSegmentedArrayIndexedName(dlist, 8, parent, "Gfx", dlString);

	declaration +=
		StringHelper::Sprintf("%s, 0x%02X, 0x%02X, { 0x%04X, 0x%04X, 0x%04X},", dlString.c_str(),
	                          numChildren, flags, translation.x, translation.y, translation.z);
	return declaration;
}

std::string ZKeyFrameFlexLimb::GetBodySourceCode() const
{
	std::string declaration;

	std::string dlString;

	Globals::Instance->GetSegmentedArrayIndexedName(dlist, 8, parent, "Gfx", dlString);

	declaration += StringHelper::Sprintf("%s, 0x%02X, 0x%02X, 0x%02X", dlString.c_str(),
	                                     numChildren, flags, callbackIndex);
	return declaration;
}

std::string ZKeyFrameStandardLimb::GetSourceTypeName() const
{
	return "KeyFrameStandardLimb";
}

std::string ZKeyFrameFlexLimb::GetSourceTypeName() const
{
	return "KeyFrameFlexLimb";
}

std::string ZKeyFrameLimbList::GetSourceTypeName() const
{
	switch (limbType)
	{
	case ZKeyframeSkelType::Flex:
		return "KeyFrameFlexLimb";
	case ZKeyframeSkelType::Normal:
		return "KeyFrameStandardLimb";
	default:
		HANDLE_ERROR_RESOURCE(WarningType::InvalidXML, parent, this, rawDataIndex,
		                      "Invalid limb type", "");
		break;
	}
}

ZResourceType ZKeyFrameStandardLimb::GetResourceType() const
{
	return ZResourceType::KeyFrameStandardLimb;
}

ZResourceType ZKeyFrameFlexLimb::GetResourceType() const
{
	return ZResourceType::KeyFrameFlexLimb;
}

ZResourceType ZKeyFrameLimbList::GetResourceType() const
{
	switch (limbType)
	{
	case ZKeyframeSkelType::Flex:
		return ZResourceType::KeyFrameFlexLimb;
	case ZKeyframeSkelType::Normal:
		return ZResourceType::KeyFrameStandardLimb;
	default:
		HANDLE_ERROR_RESOURCE(WarningType::InvalidXML, parent, this, rawDataIndex,
		                      "Invalid limb type", "");
		break;
	}
}
