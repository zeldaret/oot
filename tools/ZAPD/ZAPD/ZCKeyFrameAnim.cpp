#include "ZCkeyFrameAnim.h"
#include "ZCKeyFrame.h"
#include "Globals.h"

#include "Utils/BitConverter.h"

REGISTER_ZFILENODE(KeyFrameAnimation, ZKeyFrameAnim);

ZKeyFrameAnim::ZKeyFrameAnim(ZFile* nParent) : ZResource(nParent)
{
	RegisterRequiredAttribute("Skel");
}

ZKeyFrameAnim::~ZKeyFrameAnim()
{
}

void ZKeyFrameAnim::ParseXML(tinyxml2::XMLElement* reader)
{
	ZResource::ParseXML(reader);

	std::string skelAddrStr = registeredAttributes.at("Skel").value;
	skelOffset = (offset_t)StringHelper::StrToL(skelAddrStr, 16);
}

void ZKeyFrameAnim::DeclareReferencesLate(const std::string& prefix)
{
	std::string defaultPrefix = name;
	std::string declaration;

	if (defaultPrefix == "")
		defaultPrefix = prefix;

	ZResource::DeclareReferences(defaultPrefix);

	declaration += "\t";

	if (skel->limbType == ZKeyframeSkelType::Normal)
	{
		for (const auto b : bitFlags)
		{
			declaration += StringHelper::Sprintf("0x%02X, ", b);
			parent->AddDeclarationArray(
				GETSEGOFFSET(bitFlagsAddr), DeclarationAlignment::Align4, bitFlags.size(), "u8",
				StringHelper::Sprintf("%s_bitFlags_%06X", prefix.c_str(), rawDataIndex),
				bitFlags.size(), declaration);
		}
	}
	else
	{
		for (const auto b : bitFlagsFlex)
		{
			declaration += StringHelper::Sprintf("0x%04X, ", b);
			parent->AddDeclarationArray(
				GETSEGOFFSET(bitFlagsAddr), DeclarationAlignment::Align4, bitFlagsFlex.size() * 2,
				"u16", StringHelper::Sprintf("%s_flexBitFlags_%06X", prefix.c_str(), rawDataIndex),
				bitFlagsFlex.size(), declaration);
		}
	}
	declaration.clear();

	for (const auto kf : keyFrames)
	{
		declaration +=
			StringHelper::Sprintf(" \t { %i, %i, %i, },\n", kf.frame, kf.value, kf.velocity);
	}
	// Remove last new line to prevent an extra line after the last element
	declaration = declaration.substr(0, declaration.length() - 1);
	parent->AddDeclarationArray(
		GETSEGOFFSET(keyFramesAddr), DeclarationAlignment::Align4, keyFrames.size() * 6, "KeyFrame",
		StringHelper::Sprintf("%s_KeyFrame_%06X", prefix.c_str(), rawDataIndex), keyFrames.size(),
		declaration);

	declaration.clear();

	declaration += "\t";

	for (const auto kfNum : kfNums)
	{
		declaration += StringHelper::Sprintf("0x%04X, ", kfNum);
	}

	parent->AddDeclarationArray(
		GETSEGOFFSET(kfNumsAddr), DeclarationAlignment::Align4, kfNums.size() * 2, "s16",
		StringHelper::Sprintf("%s_kfNums_%06X", prefix.c_str(), rawDataIndex), kfNums.size(),
		declaration);
	declaration += "\n";

	declaration.clear();

	declaration += "\t";

	for (const auto pv : presetValues)
	{
		declaration += StringHelper::Sprintf("0x%04X, ", pv);
	}
	declaration += "\n";
	parent->AddDeclarationArray(
	GETSEGOFFSET(presentValuesAddr), DeclarationAlignment::Align4, presetValues.size() * 2,
	"s16", StringHelper::Sprintf("%s_presetValues_%06X", prefix.c_str(), rawDataIndex),
	presetValues.size(), declaration);

}

// ParseRawDataLate is used because we need to make sure the flex skel has been processed first.
void ZKeyFrameAnim::ParseRawDataLate()
{
	const auto& rawData = parent->GetRawData();

	skel = static_cast<ZKeyFrameSkel*>(parent->FindResource(skelOffset));
	size_t numLimbs = skel->limbCount;

	bitFlagsAddr = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x0);
	keyFramesAddr = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x4);
	kfNumsAddr = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x8);
	presentValuesAddr = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0xC);

	uint32_t kfNumsSize = 0;
	uint32_t presetValuesSize = 0;
	uint32_t keyFramesCount = 0;
	if (skel->limbType == ZKeyframeSkelType::Normal)
	{
		bitFlags.reserve(numLimbs);
		for (size_t i = 0; i < numLimbs; i++)
		{
			uint8_t e = BitConverter::ToUInt8BE(rawData, GETSEGOFFSET(bitFlagsAddr) + i);
			bitFlags.push_back(e);
			kfNumsSize += GetSetBits((uint8_t)(e & 0b111111));
			presetValuesSize += GetSetBits((uint8_t)((e ^ 0xFF) & 0b111111));
		}
	}
	else
	{
		bitFlagsFlex.reserve(numLimbs);
		for (size_t i = 0; i < numLimbs; i++)
		{
			uint16_t e = BitConverter::ToUInt16BE(rawData, GETSEGOFFSET(bitFlagsAddr) + (i * 2));
			bitFlagsFlex.push_back(e);
			kfNumsSize += GetSetBits((uint16_t)(e & 0b111111111));
			presetValuesSize += GetSetBits((uint16_t)((e ^ 0xFFFF) & 0b111111111));
		}
	}

	kfNums.reserve(kfNumsSize);
	for (uint32_t i = 0; i < kfNumsSize; i++)
	{
		int16_t kfNum = BitConverter::ToUInt16BE(rawData, GETSEGOFFSET(kfNumsAddr) + (i * 2));
		keyFramesCount += kfNum;
		kfNums.push_back(kfNum);
	}

	keyFrames.reserve(keyFramesCount);
	for (uint32_t i = 0; i < keyFramesCount; i++)
	{
		KeyFrame kf;
		kf.frame = BitConverter::ToInt16BE(rawData, (GETSEGOFFSET(keyFramesAddr) + 0) + (i * 6));
		kf.value = BitConverter::ToInt16BE(rawData, (GETSEGOFFSET(keyFramesAddr) + 2) + (i * 6));
		kf.velocity = BitConverter::ToInt16BE(rawData, (GETSEGOFFSET(keyFramesAddr) + 4) + (i * 6));
		keyFrames.push_back(kf);
	}

	presetValues.reserve(presetValuesSize);
	for (uint32_t i = 0; i < presetValuesSize; i++)
	{
		presetValues.push_back(
			BitConverter::ToInt16BE(rawData, GETSEGOFFSET(presentValuesAddr) + (i * 2)));
	}

	unk_10 = BitConverter::ToInt16BE(rawData, GETSEGOFFSET(rawDataIndex) + 0x10);
	duration = BitConverter::ToInt16BE(rawData, GETSEGOFFSET(rawDataIndex) + 0x12);
}

std::string ZKeyFrameAnim::GetBodySourceCode() const
{
	std::string declaration;

	std::string bitFlagsStr;
	std::string keyFrameStr;
	std::string kfNumsStr;
	std::string presetValuesStr;

	Globals::Instance->GetSegmentedPtrName(bitFlagsAddr, parent, "", bitFlagsStr);
	Globals::Instance->GetSegmentedPtrName(keyFramesAddr, parent, "", keyFrameStr);
	Globals::Instance->GetSegmentedPtrName(kfNumsAddr, parent, "", kfNumsStr);
	Globals::Instance->GetSegmentedPtrName(presentValuesAddr, parent, "", presetValuesStr);

	return StringHelper::Sprintf("\n\t%s, %s, %s, %s, 0x%04X, 0x%04X\n", bitFlagsStr.c_str(),
	                             keyFrameStr.c_str(), kfNumsStr.c_str(), presetValuesStr.c_str(),
	                             unk_10, duration);
}

std::string ZKeyFrameAnim::GetSourceTypeName() const
{
	return "KeyFrameAnimation";
}

ZResourceType ZKeyFrameAnim::GetResourceType() const
{
	return ZResourceType::KeyFrameAnimation;
}

size_t ZKeyFrameAnim::GetRawDataSize() const
{
	return 0x14;
}

template <typename T>
uint32_t ZKeyFrameAnim::GetSetBits(T data) const
{
	uint32_t num = 0;

	for (size_t i = 0; i < sizeof(T) * 8; i++)
	{
		if ((data >> i) & 1)
			num++;
	}

	return num;
}