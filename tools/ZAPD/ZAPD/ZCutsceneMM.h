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
	void DeclareVar(const std::string& prefix, const std::string& bodyStr) const override;
	std::string GetSourceOutputCode(const std::string& prefix) override;
	size_t GetRawDataSize() const override;
	uint32_t getSegmentOffset() const override { return segmentOffset; }

	void ParseRawData() override;
	ZResourceType GetResourceType() const override;

	void ExtractFromXML(tinyxml2::XMLElement* reader, uint32_t nRawDataIndex) override;

protected:
	int32_t numCommands;
	int32_t endFrame;
	std::vector<CutsceneCommand*> commands;

	std::vector<uint32_t> data;
};
