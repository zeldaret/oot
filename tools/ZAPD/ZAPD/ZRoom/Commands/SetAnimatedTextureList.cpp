#include "SetAnimatedTextureList.h"
#include "../../BitConverter.h"
#include "../../Globals.h"
#include "../../StringHelper.h"
#include "../../ZFile.h"
#include "../ZRoom.h"

using namespace std;

SetAnimatedTextureList::SetAnimatedTextureList(ZRoom* nZRoom, std::vector<uint8_t> rawData,
                                               uint32_t rawDataIndex)
	: ZRoomCommand(nZRoom, rawData, rawDataIndex)
{
	segmentOffset = GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4));

	{
		string declaration = "";

		int32_t currentPtr = segmentOffset;

		AnimatedTexture* lastTexture = nullptr;

		do
		{
			if (textures.size() > 0)
				declaration += "\n";

			lastTexture = new AnimatedTexture(rawData, currentPtr);
			currentPtr += 8;
			textures.push_back(lastTexture);

			string textureName =
				(lastTexture->segmentOffset != 0) ?
                    StringHelper::Sprintf("&%sAnimatedTextureParams0x%06X",
			                              zRoom->GetName().c_str(), lastTexture->segmentOffset) :
                    "NULL";

			declaration += StringHelper::Sprintf("	{ %i, %i, (u32)%s },", lastTexture->segment,
			                                     lastTexture->type, textureName.c_str());
		} while ((lastTexture->segment != 0) && (lastTexture->segment > -1));

		zRoom->parent->AddDeclarationArray(
			segmentOffset, DeclarationAlignment::None, DeclarationPadding::Pad16,
			textures.size() * 8, "AnimatedTexture",
			StringHelper::Sprintf("%sAnimatedTextureList0x%06X", zRoom->GetName().c_str(),
		                          segmentOffset),
			textures.size(), declaration);
	}

	for (AnimatedTexture* texture : textures)
	{
		string declaration = "";
		size_t index = 0;

		switch (texture->type)
		{
		case 0:
		case 1:
			for (AnitmatedTextureParams* param : texture->params)
			{
				declaration += param->GenerateSourceCode(zRoom, texture->segmentOffset);

				if (index < texture->params.size() - 1)
					declaration += "\n";

				index++;
			}

			zRoom->parent->AddDeclarationArray(
				texture->segmentOffset, DeclarationAlignment::None, DeclarationPadding::None,
				texture->params.size() * 4, "ScrollingTextureParams",
				StringHelper::Sprintf("%sAnimatedTextureParams0x%06X", zRoom->GetName().c_str(),
			                          texture->segmentOffset),
				texture->params.size(), declaration);
			break;
		case 2:
		case 3:
		case 4:
			zRoom->parent->AddDeclaration(
				texture->segmentOffset, DeclarationAlignment::Align4, DeclarationPadding::None, 16,
				"FlashingTextureParams",
				StringHelper::Sprintf("%sAnimatedTextureParams0x%06X", zRoom->GetName().c_str(),
			                          texture->segmentOffset),
				texture->params[0]->GenerateSourceCode(zRoom, texture->segmentOffset));
			break;
		case 5:
			zRoom->parent->AddDeclaration(
				texture->segmentOffset, DeclarationAlignment::Align4, DeclarationPadding::None, 12,
				"CyclingTextureParams",
				StringHelper::Sprintf("%sAnimatedTextureParams0x%06X", zRoom->GetName().c_str(),
			                          texture->segmentOffset),
				texture->params[0]->GenerateSourceCode(zRoom, texture->segmentOffset));
			break;
		case 6:
			break;
		}
	}
}

SetAnimatedTextureList::~SetAnimatedTextureList()
{
	for (AnimatedTexture* texture : textures)
		delete texture;
}

AnitmatedTextureParams::~AnitmatedTextureParams()
{
}

string SetAnimatedTextureList::GenerateSourceCodePass1(string roomName, uint32_t baseAddress)
{
	return StringHelper::Sprintf(
		"%s 0, (u32)%sAnimatedTextureList0x%06X",
		ZRoomCommand::GenerateSourceCodePass1(roomName, baseAddress).c_str(),
		zRoom->GetName().c_str(), segmentOffset);
}

size_t SetAnimatedTextureList::GetRawDataSize()
{
	size_t paramsSize = 0;
	for (AnimatedTexture* texture : textures)
	{
		for (AnitmatedTextureParams* param : texture->params)
		{
			paramsSize += param->GetParamsSize();
		}
	}

	return ZRoomCommand::GetRawDataSize() + paramsSize;
}

string SetAnimatedTextureList::GenerateExterns()
{
	return "";
}

string SetAnimatedTextureList::GetCommandCName()
{
	return "SCmdTextureAnimations";
}

RoomCommand SetAnimatedTextureList::GetRoomCommand()
{
	return RoomCommand::SetAnimatedTextureList;
}

string SetAnimatedTextureList::GetSourceOutputCode(std::string prefix)
{
	return "";
}

AnimatedTexture::AnimatedTexture(std::vector<uint8_t> rawData, uint32_t rawDataIndex)
	: segment(rawData[rawDataIndex]), type(BitConverter::ToInt16BE(rawData, rawDataIndex + 2)),
	  segmentOffset(GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4)))
{
	switch (type)
	{
	case 0:
		params.push_back(new ScrollingTexture(rawData, segmentOffset));
		break;
	case 1:
		params.push_back(new ScrollingTexture(rawData, segmentOffset));
		params.push_back(new ScrollingTexture(rawData, segmentOffset + 4));
		break;
	case 2:
	case 3:
	case 4:
		params.push_back(new FlashingTexture(rawData, segmentOffset, type));
		break;
	case 5:
		params.push_back(new CyclingTextureParams(rawData, segmentOffset));
		break;
	case 6:  // Some terminator when there are no animated textures?
		break;
	}
}

AnimatedTexture::~AnimatedTexture()
{
	for (AnitmatedTextureParams* param : params)
		delete param;
}

ScrollingTexture::ScrollingTexture(std::vector<uint8_t> rawData, uint32_t rawDataIndex)
	: xStep(rawData[rawDataIndex + 0]), yStep(rawData[rawDataIndex + 1]),
	  width(rawData[rawDataIndex + 2]), height(rawData[rawDataIndex + 3])
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

FlashingTexturePrimColor::FlashingTexturePrimColor(std::vector<uint8_t> rawData, uint32_t rawDataIndex)
	: r(rawData[rawDataIndex + 0]), g(rawData[rawDataIndex + 1]), b(rawData[rawDataIndex + 2]),
	  a(rawData[rawDataIndex + 3]), lodFrac(rawData[rawDataIndex + 4])
{
}

FlashingTextureEnvColor::FlashingTextureEnvColor(std::vector<uint8_t> rawData, uint32_t rawDataIndex)
	: r(rawData[rawDataIndex + 0]), g(rawData[rawDataIndex + 1]), b(rawData[rawDataIndex + 2]),
	  a(rawData[rawDataIndex + 3])
{
}

FlashingTexture::FlashingTexture(std::vector<uint8_t> rawData, uint32_t rawDataIndex, int32_t type)
	: cycleLength(BitConverter::ToUInt16BE(rawData, rawDataIndex + 0)),
	  numKeyFrames(BitConverter::ToUInt16BE(rawData, rawDataIndex + 2)),
	  primColorSegmentOffset(GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4))),
	  envColorSegmentOffset(GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 8))),
	  keyFrameSegmentOffset(GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 12)))
{
	uint16_t length = (type == 2) ? cycleLength : numKeyFrames;

	int32_t currentPtr = primColorSegmentOffset;
	for (uint16_t i = 0; i < length; i++)
	{
		primColors.push_back(FlashingTexturePrimColor(rawData, currentPtr));
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
		string declaration = "";
		size_t index = 0;

		for (FlashingTexturePrimColor& color : primColors)
		{
			declaration += StringHelper::Sprintf("    { 0x%02X, 0x%02X, 0x%02X, 0x%02X, 0x%02X },",
			                                     color.r, color.g, color.b, color.a, color.lodFrac);

			if (index < primColors.size() - 1)
				declaration += "\n";

			index++;
		}

		zRoom->parent->AddDeclarationArray(
			primColorSegmentOffset, DeclarationAlignment::Align4, DeclarationPadding::None,
			primColors.size() * 5, "FlashingTexturePrimColor",
			StringHelper::Sprintf("%sAnimatedTexturePrimColor0x%06X", zRoom->GetName().c_str(),
		                          primColorSegmentOffset),
			primColors.size(), declaration);
	}

	if (envColorSegmentOffset != 0)
	{
		string declaration = "";
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
			envColorSegmentOffset, DeclarationAlignment::Align4, DeclarationPadding::None,
			envColors.size() * 4, "Color_RGBA8",
			StringHelper::Sprintf("%sAnimatedTextureEnvColors0x%06X", zRoom->GetName().c_str(),
		                          envColorSegmentOffset),
			envColors.size(), declaration);
	}

	if (keyFrameSegmentOffset != 0)
	{
		string declaration = "";
		size_t index = 0;

		for (uint16_t keyFrame : keyFrames)
		{
			declaration += StringHelper::Sprintf("    0x%02X,", keyFrame);

			if (index < keyFrames.size() - 1)
				declaration += "\n";

			index++;
		}

		zRoom->parent->AddDeclarationArray(keyFrameSegmentOffset, DeclarationAlignment::Align4,
		                                   DeclarationPadding::None, keyFrames.size() * 2, "u16",
		                                   StringHelper::Sprintf("%sAnimatedTextureKeyFrames0x%06X",
		                                                         zRoom->GetName().c_str(),
		                                                         keyFrameSegmentOffset),
		                                   keyFrames.size(), declaration);
	}

	return StringHelper::Sprintf(
		"%i, %i, (u32)%s, (u32)%s, (u32)%s", cycleLength, numKeyFrames,
		(primColorSegmentOffset != 0) ?
            StringHelper::Sprintf("%sAnimatedTexturePrimColor0x%06X", zRoom->GetName().c_str(),
	                              primColorSegmentOffset)
				.c_str() :
            "NULL",
		(envColorSegmentOffset != 0) ?
            StringHelper::Sprintf("%sAnimatedTextureEnvColors0x%06X", zRoom->GetName().c_str(),
	                              envColorSegmentOffset)
				.c_str() :
            "NULL",
		(keyFrameSegmentOffset != 0) ?
            StringHelper::Sprintf("%sAnimatedTextureKeyFrames0x%06X", zRoom->GetName().c_str(),
	                              keyFrameSegmentOffset)
				.c_str() :
            "NULL");
}

size_t FlashingTexture::GetParamsSize()
{
	return 16;
}

CyclingTextureParams::CyclingTextureParams(std::vector<uint8_t> rawData, uint32_t rawDataIndex)
	: cycleLength(BitConverter::ToUInt16BE(rawData, rawDataIndex + 0)),
	  textureSegmentOffsetsSegmentOffset(
		  GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 4))),
	  textureIndicesSegmentOffset(GETSEGOFFSET(BitConverter::ToInt32BE(rawData, rawDataIndex + 8)))
{
	int32_t currentPtr = textureIndicesSegmentOffset;
	int32_t maxIndex = 0;

	for (uint16_t i = 0; i < cycleLength; i++)
	{
		int32_t newIndex = rawData[currentPtr];
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

std::string CyclingTextureParams::GenerateSourceCode(ZRoom* zRoom, uint32_t baseAddress)
{
	if (textureSegmentOffsetsSegmentOffset != 0)
	{
		string declaration = "";
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
			DeclarationPadding::None, textureSegmentOffsets.size() * 4, "u64*",
			StringHelper::Sprintf("%sAnimatedTextureTexSegOffsets0x%06X", zRoom->GetName().c_str(),
		                          textureSegmentOffsetsSegmentOffset),
			textureSegmentOffsets.size(), declaration);
	}

	if (textureIndicesSegmentOffset != 0)
	{
		string declaration = "";
		size_t index = 0;

		for (uint8_t textureIndex : textureIndices)
		{
			declaration += StringHelper::Sprintf("    0x%02X,", textureIndex);

			if (index < textureIndices.size() - 1)
				declaration += "\n";

			index++;
		}

		zRoom->parent->AddDeclarationArray(
			textureIndicesSegmentOffset, DeclarationAlignment::Align4, DeclarationPadding::None,
			textureIndices.size(), "u8",
			StringHelper::Sprintf("%sAnimatedTextureTexIndices0x%06X", zRoom->GetName().c_str(),
		                          textureIndicesSegmentOffset),
			textureIndices.size(), declaration);
	}

	return StringHelper::Sprintf(
		"%i, (u32)%s, (u32)%s", cycleLength,
		(textureSegmentOffsetsSegmentOffset != 0) ?
            StringHelper::Sprintf("%sAnimatedTextureTexSegOffsets0x%06X", zRoom->GetName().c_str(),
	                              textureSegmentOffsetsSegmentOffset)
				.c_str() :
            "NULL",
		(textureIndicesSegmentOffset != 0) ?
            StringHelper::Sprintf("%sAnimatedTextureTexIndices0x%06X", zRoom->GetName().c_str(),
	                              textureIndicesSegmentOffset)
				.c_str() :
            "NULL");
}

size_t CyclingTextureParams::GetParamsSize()
{
	return 12;
}
