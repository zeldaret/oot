#include "SetAnimatedMaterialList.h"

#include "BitConverter.h"
#include "Globals.h"
#include "StringHelper.h"
#include "ZFile.h"
#include "ZRoom/ZRoom.h"

SetAnimatedMaterialList::SetAnimatedMaterialList(ZFile* nParent) : ZRoomCommand(nParent)
{
}

void SetAnimatedMaterialList::ParseRawData()
{
	ZRoomCommand::ParseRawData();
	int32_t currentPtr = segmentOffset;
	bool keepGoing = true;

	do
	{
		AnimatedMaterial lastTexture(parent->GetRawData(), currentPtr);
		keepGoing = (lastTexture.segment != 0) && (lastTexture.segment > -1);
		currentPtr += 8;
		textures.push_back(lastTexture);
	} while (keepGoing);
}

void SetAnimatedMaterialList::DeclareReferences(const std::string& prefix)
{
	std::string nameStr =
		StringHelper::Sprintf("%sAnimatedMaterialList0x%06X", prefix.c_str(), segmentOffset);

	for (auto& texture : textures)
	{
		size_t declSize = 0;
		std::string declTypeName = "";
		std::string declName = StringHelper::Sprintf("%sAnimatedMaterialParams0x%06X",
		                                             prefix.c_str(), texture.segmentOffset);
		std::string declaration = "";
		size_t index = 0;

		switch (texture.type)
		{
		case 0:
		case 1:
			for (const auto& param : texture.params)
			{
				declaration += param->GenerateSourceCode(zRoom, texture.segmentOffset);

				if (index < texture.params.size() - 1)
					declaration += "\n";

				index++;
			}

			declSize = texture.params.size() * 4;
			declTypeName = "AnimatedMatTexScrollParams";

			parent->AddDeclarationArray(texture.segmentOffset, DeclarationAlignment::Align4,
			                            declSize, declTypeName, declName, texture.params.size(),
			                            declaration);
			break;
		case 2:
		case 3:
		case 4:
			declSize = texture.params.at(0)->GetParamsSize();
			declTypeName = "AnimatedMatColorParams";
			declaration = texture.params.at(0)->GenerateSourceCode(zRoom, texture.segmentOffset);

			parent->AddDeclaration(texture.segmentOffset, DeclarationAlignment::Align4, declSize,
			                       declTypeName, declName,
			                       StringHelper::Sprintf("\n\t%s\n", declaration.c_str()));
			break;
		case 5:
			declSize = texture.params.at(0)->GetParamsSize();
			declTypeName = "AnimatedMatTexCycleParams";
			declaration = texture.params.at(0)->GenerateSourceCode(zRoom, texture.segmentOffset);

			parent->AddDeclaration(texture.segmentOffset, DeclarationAlignment::Align4, declSize,
			                       declTypeName, declName,
			                       StringHelper::Sprintf("\n\t%s\n", declaration.c_str()));
			break;
		case 6:
			continue;

		default:
			throw std::runtime_error(
				StringHelper::Sprintf("Error in SetAnimatedMaterialList::DeclareReferences (%s)\n"
			                          "\t Unknown texture.type: %i\n",
			                          nameStr.c_str(), texture.type));
		}
	}

	if (!textures.empty())
	{
		std::string declaration = "";

		for (size_t i = 0; i < textures.size(); i++)
		{
			std::string textureName = parent->GetDeclarationPtrName(textures.at(i).segmentAddress);

			declaration += StringHelper::Sprintf("\t{ %2i, %2i, %s },", textures.at(i).segment,
			                                     textures.at(i).type, textureName.c_str());

			if (i + 1 < textures.size())
				declaration += "\n";
		}

		parent->AddDeclarationArray(segmentOffset, DeclarationAlignment::Align4,
		                            DeclarationPadding::Pad16, textures.size() * 8,
		                            "AnimatedMaterial", nameStr, textures.size(), declaration);
	}
}

std::string SetAnimatedMaterialList::GetBodySourceCode() const
{
	std::string listName = parent->GetDeclarationPtrName(cmdArg2);
	return StringHelper::Sprintf("SCENE_CMD_ANIMATED_MATERIAL_LIST(%s)", listName.c_str());
}

size_t SetAnimatedMaterialList::GetRawDataSize() const
{
	size_t paramsSize = 0;
	for (const auto& texture : textures)
	{
		for (const auto& param : texture.params)
		{
			paramsSize += param->GetParamsSize();
		}
	}

	return ZRoomCommand::GetRawDataSize() + paramsSize;
}

std::string SetAnimatedMaterialList::GetCommandCName() const
{
	return "SCmdTextureAnimations";
}

RoomCommand SetAnimatedMaterialList::GetRoomCommand() const
{
	return RoomCommand::SetAnimatedMaterialList;
}

AnimatedMaterial::AnimatedMaterial(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex)
	: segment(rawData.at(rawDataIndex)), type(BitConverter::ToInt16BE(rawData, rawDataIndex + 2))
{
	segmentAddress = BitConverter::ToInt32BE(rawData, rawDataIndex + 4);
	segmentOffset = GETSEGOFFSET(segmentAddress);

	switch (type)
	{
	case 0:
		params.push_back(std::make_shared<ScrollingTexture>(rawData, segmentOffset));
		break;
	case 1:
		params.push_back(std::make_shared<ScrollingTexture>(rawData, segmentOffset));
		params.push_back(std::make_shared<ScrollingTexture>(rawData, segmentOffset + 4));
		break;
	case 2:
	case 3:
	case 4:
		params.push_back(std::make_shared<FlashingTexture>(rawData, segmentOffset, type));
		break;
	case 5:
		params.push_back(std::make_shared<AnimatedMatTexCycleParams>(rawData, segmentOffset));
		break;
	case 6:  // Some terminator when there are no animated textures?
		break;
	}
}

ScrollingTexture::ScrollingTexture(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex)
	: xStep(rawData.at(rawDataIndex + 0)), yStep(rawData.at(rawDataIndex + 1)),
	  width(rawData.at(rawDataIndex + 2)), height(rawData.at(rawDataIndex + 3))
{
}

std::string ScrollingTexture::GenerateSourceCode(ZRoom* zRoom, uint32_t baseAddress)
{
	return StringHelper::Sprintf("    { %i, %i, 0x%02X, 0x%02X },", xStep, yStep, width, height);
}

size_t ScrollingTexture::GetParamsSize()
{
	return 4;
}

F3DPrimColor::F3DPrimColor(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex)
	: r(rawData.at(rawDataIndex + 0)), g(rawData.at(rawDataIndex + 1)),
	  b(rawData.at(rawDataIndex + 2)), a(rawData.at(rawDataIndex + 3)),
	  lodFrac(rawData.at(rawDataIndex + 4))
{
}

FlashingTextureEnvColor::FlashingTextureEnvColor(const std::vector<uint8_t>& rawData,
                                                 uint32_t rawDataIndex)
	: r(rawData.at(rawDataIndex + 0)), g(rawData.at(rawDataIndex + 1)),
	  b(rawData.at(rawDataIndex + 2)), a(rawData.at(rawDataIndex + 3))
{
}

FlashingTexture::FlashingTexture(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex,
                                 int32_t type)
	: cycleLength(BitConverter::ToUInt16BE(rawData, rawDataIndex + 0)),
	  numKeyFrames(BitConverter::ToUInt16BE(rawData, rawDataIndex + 2))
{
	uint16_t length = (type == 2) ? cycleLength : numKeyFrames;

	primColorSegmentAddr = BitConverter::ToInt32BE(rawData, rawDataIndex + 4);
	envColorSegmentAddr = BitConverter::ToInt32BE(rawData, rawDataIndex + 8);
	keyFrameSegmentAddr = BitConverter::ToInt32BE(rawData, rawDataIndex + 12);

	primColorSegmentOffset = GETSEGOFFSET(primColorSegmentAddr);
	envColorSegmentOffset = GETSEGOFFSET(envColorSegmentAddr);
	keyFrameSegmentOffset = GETSEGOFFSET(keyFrameSegmentAddr);

	int32_t currentPtr = primColorSegmentOffset;
	for (uint16_t i = 0; i < length; i++)
	{
		primColors.push_back(F3DPrimColor(rawData, currentPtr));
		currentPtr += 5;
	}

	currentPtr = envColorSegmentOffset;
	for (uint16_t i = 0; i < length; i++)
	{
		envColors.push_back(FlashingTextureEnvColor(rawData, currentPtr));
		currentPtr += 4;
	}

	currentPtr = keyFrameSegmentOffset;
	for (uint16_t i = 0; i < length; i++)
	{
		keyFrames.push_back(BitConverter::ToUInt16BE(rawData, currentPtr));
		currentPtr += 2;
	}
}

std::string FlashingTexture::GenerateSourceCode(ZRoom* zRoom, uint32_t baseAddress)
{
	if (primColorSegmentOffset != 0)
	{
		std::string declaration = "";
		size_t index = 0;

		for (F3DPrimColor& color : primColors)
		{
			declaration += StringHelper::Sprintf("    { 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X },",
			                                     color.r, color.g, color.b, color.a, color.lodFrac);

			if (index < primColors.size() - 1)
				declaration += "\n";

			index++;
		}

		zRoom->parent->AddDeclarationArray(primColorSegmentOffset, DeclarationAlignment::Align4,
		                                   primColors.size() * 5, "F3DPrimColor",
		                                   StringHelper::Sprintf("%sAnimatedMaterialPrimColor_%06X",
		                                                         zRoom->GetName().c_str(),
		                                                         primColorSegmentOffset),
		                                   primColors.size(), declaration);
	}

	if (envColorSegmentOffset != 0)
	{
		std::string declaration = "";
		size_t index = 0;

		for (FlashingTextureEnvColor& color : envColors)
		{
			declaration += StringHelper::Sprintf("    { 0x%02X, 0x%02X, 0x%02X, 0x%02X },", color.r,
			                                     color.g, color.b, color.a);

			if (index < envColors.size() - 1)
				declaration += "\n";

			index++;
		}

		zRoom->parent->AddDeclarationArray(
			envColorSegmentOffset, DeclarationAlignment::Align4, envColors.size() * 4,
			"F3DEnvColor",
			StringHelper::Sprintf("%sAnimatedMaterialEnvColors0x%06X", zRoom->GetName().c_str(),
		                          envColorSegmentOffset),
			envColors.size(), declaration);
	}

	if (keyFrameSegmentOffset != 0)
	{
		std::string declaration = "";
		size_t index = 0;

		for (uint16_t keyFrame : keyFrames)
		{
			declaration += StringHelper::Sprintf("    0x%02X,", keyFrame);

			if (index < keyFrames.size() - 1)
				declaration += "\n";

			index++;
		}

		zRoom->parent->AddDeclarationArray(
			keyFrameSegmentOffset, DeclarationAlignment::Align4, keyFrames.size() * 2, "u16",
			StringHelper::Sprintf("%sAnimatedMaterialKeyFrames0x%06X", zRoom->GetName().c_str(),
		                          keyFrameSegmentOffset),
			keyFrames.size(), declaration);
	}

	std::string primName = zRoom->parent->GetDeclarationPtrName(primColorSegmentAddr);
	std::string envName = zRoom->parent->GetDeclarationPtrName(envColorSegmentAddr);
	std::string keyName = zRoom->parent->GetDeclarationPtrName(keyFrameSegmentAddr);

	return StringHelper::Sprintf("%i, %i, %s, %s, %s", cycleLength, numKeyFrames, primName.c_str(),
	                             envName.c_str(), keyName.c_str());
}

size_t FlashingTexture::GetParamsSize()
{
	return 16;
}

AnimatedMatTexCycleParams::AnimatedMatTexCycleParams(const std::vector<uint8_t>& rawData,
                                                     uint32_t rawDataIndex)
	: cycleLength(BitConverter::ToUInt16BE(rawData, rawDataIndex + 0))
{
	textureSegmentOffsetsSegmentAddress = BitConverter::ToInt32BE(rawData, rawDataIndex + 4);
	textureIndicesSegmentAddress = BitConverter::ToInt32BE(rawData, rawDataIndex + 8);

	textureSegmentOffsetsSegmentOffset = GETSEGOFFSET(textureSegmentOffsetsSegmentAddress);
	textureIndicesSegmentOffset = GETSEGOFFSET(textureIndicesSegmentAddress);

	int32_t currentPtr = textureIndicesSegmentOffset;
	int32_t maxIndex = 0;

	for (uint16_t i = 0; i < cycleLength; i++)
	{
		uint8_t newIndex = rawData.at(currentPtr);
		textureIndices.push_back(newIndex);
		currentPtr++;
		if (newIndex > maxIndex)
			maxIndex = newIndex;
	}

	currentPtr = textureSegmentOffsetsSegmentOffset;
	for (int32_t i = 0; i < maxIndex + 1; i++)
	{
		textureSegmentOffsets.push_back(GETSEGOFFSET(BitConverter::ToInt32BE(rawData, currentPtr)));
		currentPtr += 4;
	}
}

std::string AnimatedMatTexCycleParams::GenerateSourceCode(ZRoom* zRoom, uint32_t baseAddress)
{
	if (textureSegmentOffsetsSegmentOffset != 0)
	{
		std::string declaration = "";
		size_t index = 0;

		for (uint32_t offset : textureSegmentOffsets)
		{
			declaration +=
				StringHelper::Sprintf("    %sTex_%06X,", zRoom->GetName().c_str(), offset);

			if (index < textureSegmentOffsets.size() - 1)
				declaration += "\n";

			index++;
		}

		zRoom->parent->AddDeclarationArray(
			textureSegmentOffsetsSegmentOffset, DeclarationAlignment::Align4,
			textureSegmentOffsets.size() * 4, "u64*",
			StringHelper::Sprintf("%sAnimatedMaterialTexSegOffsets0x%06X", zRoom->GetName().c_str(),
		                          textureSegmentOffsetsSegmentOffset),
			textureSegmentOffsets.size(), declaration);
	}

	if (textureIndicesSegmentOffset != 0)
	{
		std::string declaration = "";
		size_t index = 0;

		for (uint8_t textureIndex : textureIndices)
		{
			declaration += StringHelper::Sprintf("    0x%02X,", textureIndex);

			if (index < textureIndices.size() - 1)
				declaration += "\n";

			index++;
		}

		zRoom->parent->AddDeclarationArray(
			textureIndicesSegmentOffset, DeclarationAlignment::Align4, textureIndices.size(), "u8",
			StringHelper::Sprintf("%sAnimatedMaterialTexIndices0x%06X", zRoom->GetName().c_str(),
		                          textureIndicesSegmentOffset),
			textureIndices.size(), declaration);
	}

	std::string segmName =
		zRoom->parent->GetDeclarationPtrName(textureSegmentOffsetsSegmentAddress);
	std::string indexesName = zRoom->parent->GetDeclarationPtrName(textureIndicesSegmentAddress);

	return StringHelper::Sprintf("%i, %s, %s", cycleLength, segmName.c_str(), indexesName.c_str());
}

size_t AnimatedMatTexCycleParams::GetParamsSize()
{
	return 12;
}
