#include "Cutscene_Common.h"
#include "Utils/BitConverter.h"
#include "Utils/StringHelper.h"

/* CutsceneSubCommandEntry */

CutsceneSubCommandEntry::CutsceneSubCommandEntry(const std::vector<uint8_t>& rawData,
                                                 offset_t rawDataIndex)
{
	base = BitConverter::ToUInt16BE(rawData, rawDataIndex + 0);
	startFrame = BitConverter::ToUInt16BE(rawData, rawDataIndex + 2);
	endFrame = BitConverter::ToUInt16BE(rawData, rawDataIndex + 4);
	pad = BitConverter::ToUInt16BE(rawData, rawDataIndex + 6);
}

std::string CutsceneSubCommandEntry::GetBodySourceCode() const
{
	return StringHelper::Sprintf("CMD_HH(0x%04X, 0x%04X), CMD_HH(0x%04X, 0x%04X)", base, startFrame,
	                             endFrame, pad);
}

size_t CutsceneSubCommandEntry::GetRawSize() const
{
	return 0x08;
}

/* CutsceneCommand */

CutsceneCommand::CutsceneCommand(const std::vector<uint8_t>& rawData, offset_t rawDataIndex)
{
	numEntries = BitConverter::ToUInt32BE(rawData, rawDataIndex + 0);
}

CutsceneCommand::~CutsceneCommand()
{
	for (auto entry : entries)
	{
		delete entry;
	}
}

std::string CutsceneCommand::GetCommandMacro() const
{
	return StringHelper::Sprintf("CMD_W(0x%08X), CMD_W(0x%08X)", commandID, numEntries);
}

std::string CutsceneCommand::GenerateSourceCode() const
{
	std::string result;

	result += GetCommandMacro();
	result += ",\n";

	for (auto& entry : entries)
	{
		result += "        ";
		result += entry->GetBodySourceCode();
		result += ",\n";
	}

	return result;
}

size_t CutsceneCommand::GetCommandSize() const
{
	size_t size = 0;
	if (entries.size() > 0)
	{
		size = entries.at(0)->GetRawSize() * entries.size();
	}
	else
	{
		size = 0x08 * numEntries;
	}
	return 0x08 + size;
}

void CutsceneCommand::SetCommandID(uint32_t nCommandID)
{
	commandID = nCommandID;

	for (auto& entry : entries)
	{
		entry->commandID = commandID;
	}
}

/*** TIME ****/

CutsceneSubCommandEntry_SetTime::CutsceneSubCommandEntry_SetTime(
	const std::vector<uint8_t>& rawData, offset_t rawDataIndex)
	: CutsceneSubCommandEntry(rawData, rawDataIndex)
{
	hour = BitConverter::ToUInt8BE(rawData, rawDataIndex + 6);
	minute = BitConverter::ToUInt8BE(rawData, rawDataIndex + 7);
}

std::string CutsceneSubCommandEntry_SetTime::GetBodySourceCode() const
{
	// Note: Both OoT and MM have the first argument unused
	return StringHelper::Sprintf("CS_TIME(%i, %i, %i, %i, %i)", base, startFrame, endFrame, hour,
	                             minute);
}

size_t CutsceneSubCommandEntry_SetTime::GetRawSize() const
{
	return 0x0C;
}

CutsceneCommand_Time::CutsceneCommand_Time(const std::vector<uint8_t>& rawData,
                                           offset_t rawDataIndex)
	: CutsceneCommand(rawData, rawDataIndex)
{
	rawDataIndex += 4;

	entries.reserve(numEntries);
	for (size_t i = 0; i < numEntries; i++)
	{
		auto* entry = new CutsceneSubCommandEntry_SetTime(rawData, rawDataIndex);
		entries.push_back(entry);
		rawDataIndex += entry->GetRawSize();
	}
}

std::string CutsceneCommand_Time::GetCommandMacro() const
{
	return StringHelper::Sprintf("CS_TIME_LIST(%i)", numEntries);
}
