#include "ZAnimation.h"
#include "ZFile.h"
#include "BitConverter.h"
#include "StringHelper.h"
#include "File.h"
#include "HighLevel/HLAnimationIntermediette.h"
#include "Globals.h"

using namespace std;

ZAnimation::ZAnimation() : ZResource()
{
	frameCount = 0;
	rotationValues = vector<uint16_t>();
	rotationIndices = vector<RotationIndex>();
	limit = 0;
}

ZAnimation* ZAnimation::ExtractFromXML(tinyxml2::XMLElement* reader, vector<uint8_t> nRawData, int rawDataIndex, string nRelPath)
{
	ZAnimation* anim = new ZAnimation();
	anim->rawData = nRawData;
	anim->rawDataIndex = rawDataIndex;
	anim->ParseXML(reader);
	anim->ParseRawData();

	return anim;
}

void ZAnimation::ParseRawData()
{
	uint8_t* data = rawData.data();

	// Read the header
	frameCount = BitConverter::ToInt16BE(data, rawDataIndex + 0);
	rotationValuesSeg = BitConverter::ToInt32BE(data, rawDataIndex + 4) & 0x00FFFFFF;
	rotationIndicesSeg = BitConverter::ToInt32BE(data, rawDataIndex + 8) & 0x00FFFFFF;
	limit = BitConverter::ToInt16BE(data, rawDataIndex + 12);

	uint32_t currentPtr = rotationValuesSeg;

	// Read the Rotation Values
	for (int i = 0; i < ((rotationIndicesSeg - rotationValuesSeg) / 2); i++)
	{
		rotationValues.push_back(BitConverter::ToInt16BE(data, currentPtr));
		currentPtr += 2;
	}

	currentPtr = rotationIndicesSeg;

	// Read the Rotation Indices
	for (int i = 0; i < ((rawDataIndex - rotationIndicesSeg) / 6); i++)
	{
		rotationIndices.push_back(RotationIndex(BitConverter::ToInt16BE(data, currentPtr), BitConverter::ToInt16BE(data, currentPtr + 2), BitConverter::ToInt16BE(data, currentPtr + 4)));
		currentPtr += 6;
	}
}

void ZAnimation::Save(string outFolder)
{
	if (Globals::Instance->testMode)
	{
		HLAnimationIntermediette* anim = HLAnimationIntermediette::FromZAnimation(this);
		string xml = anim->OutputXML();
		File::WriteAllText(outFolder + "/" + name + ".anmi", xml);

		delete anim;
	}
}

void ZAnimation::ParseXML(tinyxml2::XMLElement* reader)
{
	ZResource::ParseXML(reader);

	name = reader->Attribute("Name");
}

string ZAnimation::GetSourceOutputCode(string prefix)
{
	if (parent != nullptr)
	{
		string headerStr = StringHelper::Sprintf("%i, %s_values, %s_indices, %i",
			frameCount, name.c_str(), name.c_str(), limit);
		parent->declarations[rawDataIndex] = new Declaration(DeclarationAlignment::None, 16, "AnimationHeader", StringHelper::Sprintf("%s", name.c_str()), false, headerStr);

		string indicesStr = "";
		string valuesStr = "\t";
		const int lineLength = 15;
		const int offset = 0;

		for (int i = 0; i < rotationValues.size(); i++)
		{
			valuesStr += StringHelper::Sprintf("0x%04X, ", rotationValues[i]);

			if ((i - offset + 1) % lineLength == 0)
				valuesStr += "\n\t";
		}

		for (int i = 0; i < rotationIndices.size(); i++)
			indicesStr += StringHelper::Sprintf("\t{ 0x%04X, 0x%04X, 0x%04X },\n", rotationIndices[i].x, rotationIndices[i].y, rotationIndices[i].z);

		parent->AddDeclarationArray(rotationValuesSeg, DeclarationAlignment::Align16, (int)rotationValues.size() * 2, "s16",
			StringHelper::Sprintf("%s_values", name.c_str()), rotationValues.size(), valuesStr);

		parent->AddDeclarationArray(rotationIndicesSeg, DeclarationAlignment::Align16, (int)rotationIndices.size() * 6, "JointIndex",
			StringHelper::Sprintf("%s_indices", name.c_str()), rotationIndices.size(), indicesStr);
	}

	return "";
}