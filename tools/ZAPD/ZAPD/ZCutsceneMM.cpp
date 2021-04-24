#include "ZCutsceneMM.h"
#include "BitConverter.h"
#include "StringHelper.h"

using namespace std;

ZCutsceneMM::ZCutsceneMM(ZFile* nParent) : ZCutsceneBase(nParent)
{
}

ZCutsceneMM::~ZCutsceneMM()
{
	for (CutsceneCommand* cmd : commands)
		delete cmd;
}

string ZCutsceneMM::GetBodySourceCode()
{
	string output = "";

	output += StringHelper::Sprintf("    CS_BEGIN_CUTSCENE(%i, %i),", numCommands, endFrame);

	for (size_t i = 0; i < data.size(); i++)
	{
		if ((i % 4) == 0)
			output += "\n    ";
		output += StringHelper::Sprintf("0x%08X,", data[i]);
	}

	return output;
}

string ZCutsceneMM::GetSourceOutputCode(const std::string& prefix)
{
	std::string bodyStr = GetBodySourceCode();

	Declaration* decl = parent->GetDeclaration(rawDataIndex);

	if (decl == nullptr)
		DeclareVar(prefix, bodyStr);
	else
		decl->text = bodyStr;

	return "";
}

void ZCutsceneMM::DeclareVar(const std::string& prefix, const std::string& bodyStr)
{
	std::string auxName = name;

	if (auxName == "")
		auxName = StringHelper::Sprintf("%sCutsceneData0x%06X", prefix.c_str(), rawDataIndex);
	// auxName = GetDefaultName(prefix, getSegmentOffset());

	parent->AddDeclarationArray(getSegmentOffset(), DeclarationAlignment::Align4, GetRawDataSize(),
	                            "s32", auxName, 0, bodyStr);
}

size_t ZCutsceneMM::GetRawDataSize()
{
	return 8 + data.size() * 4;
}

void ZCutsceneMM::ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
                                 const uint32_t nRawDataIndex, const std::string& nRelPath)
{
	ZResource::ExtractFromXML(reader, nRawData, nRawDataIndex, nRelPath);
	DeclareVar(parent->GetName(), "");
}

void ZCutsceneMM::ParseRawData()
{
	segmentOffset = rawDataIndex;

	numCommands = BitConverter::ToInt32BE(rawData, rawDataIndex + 0);
	commands = vector<CutsceneCommand*>();

	endFrame = BitConverter::ToInt32BE(rawData, rawDataIndex + 4);
	uint32_t currentPtr = rawDataIndex + 8;
	uint32_t lastData = 0;

	// TODO currently cutscenes aren't being parsed, so just consume words until we see an end
	// marker.
	do
	{
		lastData = BitConverter::ToInt32BE(rawData, currentPtr);
		data.push_back(lastData);
		currentPtr += 4;
	} while (lastData != 0xFFFFFFFF);
}

ZResourceType ZCutsceneMM::GetResourceType()
{
	return ZResourceType::Cutscene;
}
