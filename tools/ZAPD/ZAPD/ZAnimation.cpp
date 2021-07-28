#include "ZAnimation.h"
#include <utility>
#include "BitConverter.h"
#include "File.h"
#include "Globals.h"
#include "HighLevel/HLAnimationIntermediette.h"
#include "StringHelper.h"
#include "ZFile.h"

REGISTER_ZFILENODE(Animation, ZNormalAnimation);
REGISTER_ZFILENODE(PlayerAnimation, ZLinkAnimation);
REGISTER_ZFILENODE(CurveAnimation, ZCurveAnimation);
REGISTER_ZFILENODE(LegacyAnimation, ZLegacyAnimation);

ZAnimation::ZAnimation(ZFile* nParent) : ZResource(nParent)
{
	frameCount = 0;
}

void ZAnimation::ParseRawData()
{
	ZResource::ParseRawData();

	frameCount = BitConverter::ToInt16BE(parent->GetRawData(), rawDataIndex + 0);
}

void ZAnimation::Save(const fs::path& outFolder)
{
	if (Globals::Instance->testMode)
	{
		HLAnimationIntermediette* anim = HLAnimationIntermediette::FromZAnimation(this);
		std::string xml = anim->OutputXML();
		File::WriteAllText(outFolder / (name + ".anmi"), xml);

		delete anim;
	}
}

std::string ZAnimation::GetSourceOutputCode(const std::string& prefix)
{
	return "";
}

ZResourceType ZAnimation::GetResourceType() const
{
	return ZResourceType::Animation;
}

ZNormalAnimation::ZNormalAnimation(ZFile* nParent) : ZAnimation(nParent)
{
	rotationValues = std::vector<uint16_t>();
	rotationIndices = std::vector<RotationIndex>();
	limit = 0;
}

std::string ZNormalAnimation::GetSourceOutputCode(const std::string& prefix)
{
	if (parent != nullptr)
	{
		std::string defaultPrefix = name.c_str();
		defaultPrefix.replace(0, 1, "s");  // replace g prefix with s for local variables

		std::string headerStr = StringHelper::Sprintf("\n\t{ %i },\n", frameCount);
		headerStr += StringHelper::Sprintf("\t%sFrameData,\n", defaultPrefix.c_str());
		headerStr += StringHelper::Sprintf("\t%sJointIndices,\n", defaultPrefix.c_str());
		headerStr += StringHelper::Sprintf("\t%i\n", limit);
		parent->AddDeclaration(rawDataIndex, DeclarationAlignment::None, GetRawDataSize(),
		                       GetSourceTypeName(), StringHelper::Sprintf("%s", name.c_str()),
		                       headerStr);

		std::string indicesStr = "";
		std::string valuesStr = "    ";
		const uint8_t lineLength = 14;
		const uint8_t offset = 0;

		for (size_t i = 0; i < rotationValues.size(); i++)
		{
			valuesStr += StringHelper::Sprintf("0x%04X, ", rotationValues[i]);

			if ((i - offset + 1) % lineLength == 0)
				valuesStr += "\n    ";
		}

		for (size_t i = 0; i < rotationIndices.size(); i++)
		{
			indicesStr +=
				StringHelper::Sprintf("    { 0x%04X, 0x%04X, 0x%04X },", rotationIndices[i].x,
			                          rotationIndices[i].y, rotationIndices[i].z);

			if (i != (rotationIndices.size() - 1))
				indicesStr += "\n";
		}

		parent->AddDeclarationArray(rotationValuesSeg, DeclarationAlignment::Align16,
		                            rotationValues.size() * 2, "static s16",
		                            StringHelper::Sprintf("%sFrameData", defaultPrefix.c_str()),
		                            rotationValues.size(), valuesStr);

		parent->AddDeclarationArray(rotationIndicesSeg, DeclarationAlignment::Align16,
		                            rotationIndices.size() * 6, "static JointIndex",
		                            StringHelper::Sprintf("%sJointIndices", defaultPrefix.c_str()),
		                            rotationIndices.size(), indicesStr);
	}

	return "";
}

size_t ZNormalAnimation::GetRawDataSize() const
{
	return 16;
}

std::string ZNormalAnimation::GetSourceTypeName() const
{
	return "AnimationHeader";
}

void ZNormalAnimation::ParseRawData()
{
	ZAnimation::ParseRawData();

	const uint8_t* data = parent->GetRawData().data();

	rotationValuesSeg = BitConverter::ToInt32BE(data, rawDataIndex + 4) & 0x00FFFFFF;
	rotationIndicesSeg = BitConverter::ToInt32BE(data, rawDataIndex + 8) & 0x00FFFFFF;
	limit = BitConverter::ToInt16BE(data, rawDataIndex + 12);

	uint32_t currentPtr = rotationValuesSeg;

	// Read the Rotation Values
	for (uint32_t i = 0; i < ((rotationIndicesSeg - rotationValuesSeg) / 2); i++)
	{
		rotationValues.push_back(BitConverter::ToInt16BE(data, currentPtr));
		currentPtr += 2;
	}

	currentPtr = rotationIndicesSeg;

	// Read the Rotation Indices
	for (uint32_t i = 0; i < ((rawDataIndex - rotationIndicesSeg) / 6); i++)
	{
		rotationIndices.push_back(RotationIndex(BitConverter::ToInt16BE(data, currentPtr),
		                                        BitConverter::ToInt16BE(data, currentPtr + 2),
		                                        BitConverter::ToInt16BE(data, currentPtr + 4)));
		currentPtr += 6;
	}
}

ZLinkAnimation::ZLinkAnimation(ZFile* nParent) : ZAnimation(nParent)
{
	segmentAddress = 0;
}

std::string ZLinkAnimation::GetSourceOutputCode(const std::string& prefix)
{
	if (parent != nullptr)
	{
		std::string segSymbol =
			segmentAddress == 0 ?
                "NULL" :
                parent->GetDeclarationName(
					segmentAddress,
					StringHelper::Sprintf("%sSeg%06X", name.c_str(), segmentAddress));
		std::string headerStr =
			StringHelper::Sprintf("\n\t{ %i },\n\t0x%08X\n", frameCount, segmentAddress);
		parent->AddDeclaration(rawDataIndex, DeclarationAlignment::None, GetRawDataSize(),
		                       GetSourceTypeName(), StringHelper::Sprintf("%s", name.c_str()),
		                       headerStr);
	}

	return "";
}

size_t ZLinkAnimation::GetRawDataSize() const
{
	return 8;
}

std::string ZLinkAnimation::GetSourceTypeName() const
{
	return "LinkAnimationHeader";
}

void ZLinkAnimation::ParseRawData()
{
	ZAnimation::ParseRawData();

	const uint8_t* data = parent->GetRawData().data();
	segmentAddress = (BitConverter::ToInt32BE(data, rawDataIndex + 4));
}

/* ZCurveAnimation */

TransformData::TransformData(ZFile* parent, const std::vector<uint8_t>& rawData,
                             uint32_t fileOffset)
	: parent(parent)
{
	unk_00 = BitConverter::ToUInt16BE(rawData, fileOffset + 0);
	unk_02 = BitConverter::ToUInt16BE(rawData, fileOffset + 2);
	unk_04 = BitConverter::ToInt16BE(rawData, fileOffset + 4);
	unk_06 = BitConverter::ToInt16BE(rawData, fileOffset + 6);
	unk_08 = BitConverter::ToFloatBE(rawData, fileOffset + 8);
}

TransformData::TransformData(ZFile* parent, const std::vector<uint8_t>& rawData,
                             uint32_t fileOffset, size_t index)
	: TransformData(parent, rawData, fileOffset + index * GetRawDataSize())
{
}

std::string TransformData::GetBody(const std::string& prefix) const
{
	return StringHelper::Sprintf("0x%04X, 0x%04X, %i, %i, %ff", unk_00, unk_02, unk_04, unk_06,
	                             unk_08);
}

size_t TransformData::GetRawDataSize() const
{
	return 0x0C;
}

std::string TransformData::GetSourceTypeName()
{
	return "TransformData";
}

ZCurveAnimation::ZCurveAnimation(ZFile* nParent) : ZAnimation(nParent)
{
	RegisterOptionalAttribute("SkelOffset");
}

void ZCurveAnimation::ParseXML(tinyxml2::XMLElement* reader)
{
	ZAnimation::ParseXML(reader);

	std::string skelOffsetXml = registeredAttributes.at("SkelOffset").value;
	if (skelOffsetXml == "")
	{
		throw std::runtime_error(
			StringHelper::Sprintf("ZCurveAnimation::ParseXML: Fatal error in '%s'.\n"
		                          "\t Missing 'SkelOffset' attribute in ZCurveAnimation.\n"
		                          "\t You need to provide the offset of the curve skeleton.",
		                          name.c_str()));
	}
	skelOffset = StringHelper::StrToL(skelOffsetXml, 0);
}

void ZCurveAnimation::ParseRawData()
{
	ZAnimation::ParseRawData();

	const auto& rawData = parent->GetRawData();
	refIndex = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0);
	transformData = BitConverter::ToUInt32BE(rawData, rawDataIndex + 4);
	copyValues = BitConverter::ToUInt32BE(rawData, rawDataIndex + 8);
	unk_0C = BitConverter::ToInt16BE(rawData, rawDataIndex + 12);
	unk_10 = BitConverter::ToInt16BE(rawData, rawDataIndex + 14);

	limbCount =
		BitConverter::ToUInt8BE(rawData, Seg2Filespace(skelOffset, parent->baseAddress) + 4);

	size_t transformDataSize = 0;
	size_t copyValuesSize = 0;
	if (refIndex != 0)
	{
		uint32_t refIndexOffset = Seg2Filespace(refIndex, parent->baseAddress);
		for (size_t i = 0; i < 3 * 3 * limbCount; i++)
		{
			uint8_t ref = BitConverter::ToUInt8BE(rawData, refIndexOffset + i);
			if (ref == 0)
				copyValuesSize++;
			else
				transformDataSize += ref;

			refIndexArr.emplace_back(ref);
		}
	}

	if (transformData != 0)
	{
		uint32_t transformDataOffset = Seg2Filespace(transformData, parent->baseAddress);

		for (size_t i = 0; i < transformDataSize; i++)
			transformDataArr.emplace_back(parent, rawData, transformDataOffset, i);
	}

	if (copyValues != 0)
	{
		uint32_t copyValuesOffset = Seg2Filespace(copyValues, parent->baseAddress);

		for (size_t i = 0; i < copyValuesSize; i++)
			copyValuesArr.emplace_back(BitConverter::ToInt16BE(rawData, copyValuesOffset + i * 2));
	}
}

void ZCurveAnimation::ExtractFromXML(tinyxml2::XMLElement* reader, uint32_t nRawDataIndex)
{
	ZResource::ExtractFromXML(reader, nRawDataIndex);

	parent->AddDeclaration(rawDataIndex, DeclarationAlignment::Align16, GetRawDataSize(),
	                       GetSourceTypeName(), name, "");
}

void ZCurveAnimation::DeclareReferences(const std::string& prefix)
{
	if (refIndex != 0)
	{
		uint32_t refIndexOffset = Seg2Filespace(refIndex, parent->baseAddress);
		std::string refIndexStr =
			StringHelper::Sprintf("%sCurveAnime_%s_%06X", prefix.c_str(), "Ref", refIndexOffset);

		std::string entryStr = "    ";
		uint16_t arrayItemCnt = refIndexArr.size();

		size_t i = 0;
		for (auto& child : refIndexArr)
		{
			entryStr += StringHelper::Sprintf("0x%02X, %s", child, (i++ % 8 == 7) ? "\n    " : "");
		}

		Declaration* decl = parent->GetDeclaration(refIndexOffset);
		if (decl == nullptr)
		{
			parent->AddDeclarationArray(refIndexOffset, DeclarationAlignment::None,
			                            arrayItemCnt * 1, "u8", refIndexStr, arrayItemCnt,
			                            entryStr);
		}
		else
		{
			decl->text = entryStr;
		}
	}

	if (transformData != 0)
	{
		uint32_t transformDataOffset = Seg2Filespace(transformData, parent->baseAddress);
		std::string transformDataStr = StringHelper::Sprintf(
			"%sCurveAnime_%s_%06X", prefix.c_str(),
			transformDataArr.at(0).GetSourceTypeName().c_str(), transformDataOffset);

		std::string entryStr = "";
		uint16_t arrayItemCnt = transformDataArr.size();

		size_t i = 0;
		for (auto& child : transformDataArr)
		{
			entryStr += StringHelper::Sprintf("    { %s },%s", child.GetBody(prefix).c_str(),
			                                  (++i < arrayItemCnt) ? "\n" : "");
		}

		Declaration* decl = parent->GetDeclaration(transformDataOffset);
		if (decl == nullptr)
		{
			parent->AddDeclarationArray(transformDataOffset, DeclarationAlignment::None,
			                            arrayItemCnt * transformDataArr.at(0).GetRawDataSize(),
			                            transformDataArr.at(0).GetSourceTypeName(),
			                            transformDataStr, arrayItemCnt, entryStr);
		}
		else
		{
			decl->text = entryStr;
		}
	}

	if (copyValues != 0)
	{
		uint32_t copyValuesOffset = Seg2Filespace(copyValues, parent->baseAddress);
		std::string copyValuesStr =
			StringHelper::Sprintf("%sCurveAnime_%s_%06X", prefix.c_str(), "Copy", copyValuesOffset);

		std::string entryStr = "    ";
		uint16_t arrayItemCnt = copyValuesArr.size();

		size_t i = 0;
		for (auto& child : copyValuesArr)
		{
			entryStr += StringHelper::Sprintf("% 6i, %s", child, (i++ % 8 == 7) ? "\n    " : "");
		}

		Declaration* decl = parent->GetDeclaration(copyValuesOffset);
		if (decl == nullptr)
		{
			parent->AddDeclarationArray(copyValuesOffset, DeclarationAlignment::None,
			                            arrayItemCnt * 2, "s16", copyValuesStr, arrayItemCnt,
			                            entryStr);
		}
		else
		{
			decl->text = entryStr;
		}
	}
}

size_t ZCurveAnimation::GetRawDataSize() const
{
	return 0x10;
}

std::string ZCurveAnimation::GetSourceOutputCode(const std::string& prefix)
{
	std::string bodyStr = "";
	uint32_t address = Seg2Filespace(rawDataIndex, parent->baseAddress);

	std::string refIndexStr = "NULL";
	if (refIndex != 0)
	{
		uint32_t refIndexOffset = Seg2Filespace(refIndex, parent->baseAddress);
		Declaration* decl = parent->GetDeclaration(refIndexOffset);
		if (decl == nullptr)
		{
			refIndexStr = StringHelper::Sprintf("%sCurveAnime_%s_%06X", prefix.c_str(), "Ref",
			                                    refIndexOffset);
		}
		else
		{
			refIndexStr = decl->varName;
		}
	}

	std::string transformDataStr = "NULL";
	if (transformData != 0)
	{
		uint32_t transformDataOffset = Seg2Filespace(transformData, parent->baseAddress);
		Declaration* decl = parent->GetDeclaration(transformDataOffset);
		if (decl == nullptr)
		{
			transformDataStr = StringHelper::Sprintf(
				"%sCurveAnime_%s_%06X", prefix.c_str(),
				transformDataArr.at(0).GetSourceTypeName().c_str(), transformDataOffset);
		}
		else
		{
			transformDataStr = decl->varName;
		}
	}

	std::string copyValuesStr = "NULL";
	if (copyValues != 0)
	{
		uint32_t copyValuesOffset = Seg2Filespace(copyValues, parent->baseAddress);
		Declaration* decl = parent->GetDeclaration(copyValuesOffset);
		if (decl == nullptr)
		{
			copyValuesStr = StringHelper::Sprintf("%sCurveAnime_%s_%06X", prefix.c_str(), "Copy",
			                                      copyValuesOffset);
		}
		else
		{
			copyValuesStr = decl->varName;
		}
	}

	bodyStr =
		StringHelper::Sprintf("\n    %s,\n    %s,\n    %s,\n    %i, %i\n", refIndexStr.c_str(),
	                          transformDataStr.c_str(), copyValuesStr.c_str(), unk_0C, unk_10);

	Declaration* decl = parent->GetDeclaration(address);
	if (decl == nullptr)
	{
		parent->AddDeclaration(address, DeclarationAlignment::None, GetRawDataSize(),
		                       GetSourceTypeName(), name, bodyStr);
	}
	else
	{
		decl->text = bodyStr;
	}

	return "";
}

std::string ZCurveAnimation::GetSourceTypeName() const
{
	return "TransformUpdateIndex";
}

/* ZLegacyAnimation */

ZLegacyAnimation::ZLegacyAnimation(ZFile* nParent) : ZAnimation(nParent)
{
}

void ZLegacyAnimation::ExtractFromXML(tinyxml2::XMLElement* reader, uint32_t nRawDataIndex)
{
	ZAnimation::ExtractFromXML(reader, nRawDataIndex);

	parent->AddDeclaration(rawDataIndex, DeclarationAlignment::Align4, GetRawDataSize(),
	                       GetSourceTypeName(), name, "");
}

void ZLegacyAnimation::ParseRawData()
{
	ZAnimation::ParseRawData();

	const auto& rawData = parent->GetRawData();
	limbCount = BitConverter::ToInt16BE(rawData, rawDataIndex + 0x02);
	frameData = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x04);
	jointKey = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0x08);

	if (GETSEGNUM(frameData) == parent->segment && GETSEGNUM(jointKey) == parent->segment)
	{
		uint32_t frameDataOffset = Seg2Filespace(frameData, parent->baseAddress);
		uint32_t jointKeyOffset = Seg2Filespace(jointKey, parent->baseAddress);

		uint32_t ptr = frameDataOffset;
		for (size_t i = 0; i < (jointKeyOffset - frameDataOffset) / 2; i++)
		{
			frameDataArray.push_back(BitConverter::ToUInt16BE(rawData, ptr));
			ptr += 2;
		}

		ptr = jointKeyOffset;
		for (int32_t i = 0; i < limbCount + 1; i++)
		{
			JointKey key(parent);
			key.ExtractFromFile(ptr);

			jointKeyArray.push_back(key);
			ptr += key.GetRawDataSize();
		}
	}
}

void ZLegacyAnimation::DeclareReferences(const std::string& prefix)
{
	std::string varPrefix = prefix;
	if (name != "")
		varPrefix = name;

	ZAnimation::DeclareReferences(varPrefix);

	if (!frameDataArray.empty())
	{
		uint32_t frameDataOffset = Seg2Filespace(frameData, parent->baseAddress);
		if (GETSEGNUM(frameData) == parent->segment && !parent->HasDeclaration(frameDataOffset))
		{
			std::string frameDataBody = "\t";

			for (size_t i = 0; i < frameDataArray.size(); i++)
			{
				frameDataBody += StringHelper::Sprintf("0x%04X, ", frameDataArray[i]);

				if (i % 8 == 7 && i + 1 < frameDataArray.size())
					frameDataBody += "\n\t";
			}

			std::string frameDataName = StringHelper::Sprintf("%sFrameData", varPrefix.c_str());
			parent->AddDeclarationArray(frameDataOffset, DeclarationAlignment::Align4,
			                            frameDataArray.size() * 2, "s16", frameDataName,
			                            frameDataArray.size(), frameDataBody);
		}
	}

	if (!jointKeyArray.empty())
	{
		uint32_t jointKeyOffset = Seg2Filespace(jointKey, parent->baseAddress);
		if (GETSEGNUM(jointKey) == parent->segment && !parent->HasDeclaration(jointKeyOffset))
		{
			const auto res = jointKeyArray.at(0);
			std::string jointKeyBody = "";

			for (size_t i = 0; i < jointKeyArray.size(); i++)
			{
				jointKeyBody += StringHelper::Sprintf("\t{ %s },",
				                                      jointKeyArray[i].GetBodySourceCode().c_str());

				if (i + 1 < jointKeyArray.size())
					jointKeyBody += "\n";
			}

			std::string jointKeyName = StringHelper::Sprintf("%sJointKey", varPrefix.c_str());
			parent->AddDeclarationArray(jointKeyOffset, DeclarationAlignment::Align4,
			                            jointKeyArray.size() * res.GetRawDataSize(),
			                            res.GetSourceTypeName(), jointKeyName, jointKeyArray.size(),
			                            jointKeyBody);
		}
	}
}

std::string ZLegacyAnimation::GetBodySourceCode() const
{
	std::string body = "\n";

	std::string frameDataName = parent->GetDeclarationPtrName(frameData);
	std::string jointKeyName = parent->GetDeclarationPtrName(jointKey);

	body += StringHelper::Sprintf("\t%i, %i,\n", frameCount, limbCount);
	body += StringHelper::Sprintf("\t%s,\n", frameDataName.c_str());
	body += StringHelper::Sprintf("\t%s\n", jointKeyName.c_str());

	return body;
}

std::string ZLegacyAnimation::GetSourceOutputCode(const std::string& prefix)
{
	std::string body = GetBodySourceCode();

	Declaration* decl = parent->GetDeclaration(rawDataIndex);
	if (decl == nullptr || decl->isPlaceholder)
		parent->AddDeclaration(rawDataIndex, DeclarationAlignment::Align4, GetRawDataSize(),
		                       GetSourceTypeName(), name, body);
	else
		decl->text = body;

	return "";
}

std::string ZLegacyAnimation::GetSourceTypeName() const
{
	return "LegacyAnimationHeader";
}

size_t ZLegacyAnimation::GetRawDataSize() const
{
	return 0x0C;
}

JointKey::JointKey(ZFile* nParent) : ZResource(nParent)
{
}

void JointKey::ParseRawData()
{
	ZResource::ParseRawData();

	const auto& rawData = parent->GetRawData();
	xMax = BitConverter::ToInt16BE(rawData, rawDataIndex + 0x00);
	x = BitConverter::ToInt16BE(rawData, rawDataIndex + 0x02);
	yMax = BitConverter::ToInt16BE(rawData, rawDataIndex + 0x04);
	y = BitConverter::ToInt16BE(rawData, rawDataIndex + 0x06);
	zMax = BitConverter::ToInt16BE(rawData, rawDataIndex + 0x08);
	z = BitConverter::ToInt16BE(rawData, rawDataIndex + 0x0A);
}

std::string JointKey::GetBodySourceCode() const
{
	return StringHelper::Sprintf("%6i, %6i, %6i, %6i, %6i, %6i", xMax, x, yMax, y, zMax, z);
}

std::string JointKey::GetSourceTypeName() const
{
	return "JointKey";
}

ZResourceType JointKey::GetResourceType() const
{
	// TODO
	return ZResourceType::Error;
}

size_t JointKey::GetRawDataSize() const
{
	return 0x0C;
}
