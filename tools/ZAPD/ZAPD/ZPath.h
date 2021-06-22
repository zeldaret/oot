#pragma once

#include "ZResource.h"
#include "ZVector.h"

class PathwayEntry : public ZResource
{
public:
	PathwayEntry(ZFile* nParent);

	void ParseRawData() override;
	void DeclareReferences(const std::string& prefix) override;

	std::string GetBodySourceCode() const;

	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;

	size_t GetRawDataSize() const;
	segptr_t GetListAddress() const;

protected:
	int32_t numPoints;
	int8_t unk1;   // (MM Only)
	int16_t unk2;  // (MM Only)
	segptr_t listSegmentAddress;
	std::vector<ZVector> points;
};

class ZPath : public ZResource
{
public:
	ZPath(ZFile* nParent);

	void ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
	                    const uint32_t nRawDataIndex);

	void ParseXML(tinyxml2::XMLElement* reader) override;
	void ParseRawData() override;
	void DeclareReferences(const std::string& prefix) override;

	std::string GetBodySourceCode() const;
	std::string GetSourceOutputCode(const std::string& prefix) override;

	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;

	size_t GetRawDataSize() const override;
	void SetNumPaths(uint32_t nNumPaths);

protected:
	uint32_t numPaths;
	std::vector<PathwayEntry> pathways;
};
