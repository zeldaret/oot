#pragma once

#include <cstdint>
#include <string>
#include <vector>
#include "Declaration.h"

typedef struct CsCommandListDescriptor
{
	const char* cmdMacro;
	const char* args;
} CsCommandListDescriptor;

class CutsceneSubCommandEntry
{
public:
	uint16_t base;
	uint16_t startFrame;
	uint16_t endFrame;
	uint16_t pad;

	uint32_t commandID;

	CutsceneSubCommandEntry(const std::vector<uint8_t>& rawData, offset_t rawDataIndex);
	virtual ~CutsceneSubCommandEntry() = default;

	virtual std::string GetBodySourceCode() const;

	virtual size_t GetRawSize() const;
};

class CutsceneCommand
{
public:
	uint32_t commandID;
	uint32_t commandIndex;

	uint32_t numEntries;
	std::vector<CutsceneSubCommandEntry*> entries;

	CutsceneCommand(const std::vector<uint8_t>& rawData, offset_t rawDataIndex);
	virtual ~CutsceneCommand();

	virtual std::string GetCommandMacro() const;
	virtual std::string GenerateSourceCode() const;
	virtual size_t GetCommandSize() const;

	virtual void SetCommandID(uint32_t nCommandID);
};

/**** TIME ****/

class CutsceneSubCommandEntry_SetTime : public CutsceneSubCommandEntry
{
public:
	uint8_t hour;
	uint8_t minute;

	CutsceneSubCommandEntry_SetTime(const std::vector<uint8_t>& rawData, offset_t rawDataIndex);

	std::string GetBodySourceCode() const override;

	size_t GetRawSize() const override;
};

class CutsceneCommand_Time : public CutsceneCommand
{
public:
	CutsceneCommand_Time(const std::vector<uint8_t>& rawData, offset_t rawDataIndex);

	std::string GetCommandMacro() const override;
};
