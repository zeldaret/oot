#pragma once

#include <cstdint>
#include <string>
#include <vector>
#include <memory>

#include "ZFile.h"

class ZKeyFrameLimb;

struct Vec3s
{
	int16_t x;
	int16_t y;
	int16_t z;
};

enum class ZKeyframeSkelType
{
	Normal,
	Flex,
	Error,
};

class ZKeyFrameLimbList : public ZResource
{
public:
	ZKeyFrameLimbList();
	ZKeyFrameLimbList(ZFile* nParent);
	ZKeyFrameLimbList(ZFile* nParent, uint32_t limbCount, ZKeyframeSkelType type);

	~ZKeyFrameLimbList();

	void ParseRawData() override;

	std::string GetBodySourceCode() const override;
	void ParseXML(tinyxml2::XMLElement* reader) override;

	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;

	size_t GetRawDataSize() const override;

	static ZKeyframeSkelType ParseLimbTypeStr(const std::string& typeStr);

	std::vector<ZKeyFrameLimb*> limbs;
	ZKeyframeSkelType limbType;
	uint8_t numLimbs;
};

class ZKeyFrameLimb : public ZResource
{
public:
	segptr_t dlist;
	uint8_t numChildren;
	uint8_t flags;

	ZKeyFrameLimb(ZFile* nParent);
	void ParseRawData() override;
};

class ZKeyFrameStandardLimb : public ZKeyFrameLimb
{
public:
	Vec3s translation;

	ZKeyFrameStandardLimb(ZFile* nParent);
	void ParseRawData() override;

	std::string GetBodySourceCode() const override;


	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;

	size_t GetRawDataSize() const override;
};

class ZKeyFrameFlexLimb : public ZKeyFrameLimb
{
public:
	uint8_t callbackIndex;

	ZKeyFrameFlexLimb(ZFile* nParent);
	// void ParseXML(tinyxml2::XMLElement* reader) override;
	void ParseRawData() override;

	std::string GetBodySourceCode() const override;

	// std::string GetSourceOutputHeader(const std::string& prefix) override;

	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;

	size_t GetRawDataSize() const override;
};

class ZKeyFrameSkel : public ZResource
{
public:
	std::unique_ptr<ZKeyFrameLimbList> limbList;
	segptr_t limbsPtr;
	ZKeyframeSkelType limbType;
	uint8_t limbCount;
	uint8_t dListCount;

	ZKeyFrameSkel(ZFile* nParent);
	~ZKeyFrameSkel();

	void ParseXML(tinyxml2::XMLElement* reader) override;
	void ParseRawData() override;
	void DeclareReferences(const std::string& prefix) override;

	std::string GetBodySourceCode() const override;

	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;

	size_t GetRawDataSize() const override;
};
