#pragma once

#include <stdint.h>
#include <string>
#include <vector>
#include "ZCutscene.h"
#include "ZFile.h"
#include "tinyxml2.h"

class ZCutsceneMM : public ZCutsceneBase
{
public:
	uint32_t segmentOffset;

	ZCutsceneMM(ZFile* nParent);
	virtual ~ZCutsceneMM();

	std::string GetBodySourceCode() override;
	void DeclareVar(const std::string& prefix, const std::string& bodyStr) override;
	std::string GetSourceOutputCode(const std::string& prefix) override;
	size_t GetRawDataSize() override;
	uint32_t getSegmentOffset() override { return segmentOffset; }

	void ParseRawData() override;
	ZResourceType GetResourceType() override;

	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    const uint32_t nRawDataIndex, const std::string& nRelPath) override;

protected:
	int32_t numCommands;
	int32_t endFrame;
	std::vector<CutsceneCommand*> commands;

	std::vector<uint32_t> data;
};
