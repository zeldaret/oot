#pragma once

#include <array>
#include <cstdint>
#include "ZResource.h"

class ZMtx : public ZResource
{
protected:
	std::array<std::array<int32_t, 4>, 4> mtx;

public:
	// ZMtx() = default;
	ZMtx(ZFile* nParent);
	ZMtx(const std::string& prefix, const std::vector<uint8_t>& nRawData, uint32_t nRawDataIndex,
	     ZFile* nParent);
	void ParseRawData() override;
	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    uint32_t nRawDataIndex, const std::string& nRelPath) override;

	size_t GetRawDataSize() override;

	void DeclareVar(const std::string& prefix, const std::string& bodyStr);

	std::string GetBodySourceCode();
	std::string GetSourceOutputCode(const std::string& prefix) override;
	static std::string GetDefaultName(const std::string& prefix, uint32_t address);

	std::string GetSourceTypeName() override;
	ZResourceType GetResourceType() override;
};
