#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "ZResource.h"

enum class ZLimbSkinType
{
	SkinType_Null,			// SkinLimb segment = NULL
	SkinType_Animated = 4,	// SkinLimb segment = SkinAnimatedLimbData*
	SkinType_Normal = 11,	// SkinLimb segment = Gfx*
};

class SkinVertex : public ZResource
{
public:
	SkinVertex(ZFile* nParent);

	void ParseRawData() override;

	std::string GetBodySourceCode() const override;

	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;

	size_t GetRawDataSize() const override;

protected:
	uint16_t index;
	int16_t s;
	int16_t t;
	int8_t normX;
	int8_t normY;
	int8_t normZ;
	uint8_t alpha;
};

class SkinTransformation : public ZResource
{
public:
	SkinTransformation(ZFile* nParent);

	void ParseRawData() override;

	std::string GetBodySourceCode() const override;

	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;

	size_t GetRawDataSize() const override;

protected:
	uint8_t limbIndex;
	int16_t x;
	int16_t y;
	int16_t z;
	uint8_t scale;
};

class SkinLimbModif : public ZResource
{
public:
	SkinLimbModif(ZFile* nParent);

	void ParseRawData() override;
	void DeclareReferences(const std::string& prefix) override;

	std::string GetBodySourceCode() const override;

	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;

	size_t GetRawDataSize() const override;

protected:
	uint16_t vtxCount;				// Number of vertices in this modif entry
	uint16_t transformCount;		// Length of limbTransformations
	uint16_t unk_4;					// 0 or 1, used as an index for limbTransformations
	segptr_t skinVertices;			// SkinVertex*
	segptr_t limbTransformations;	// SkinTransformation*

	std::vector<SkinVertex> skinVertices_arr;
	std::vector<SkinTransformation> limbTransformations_arr;
};

class SkinAnimatedLimbData : public ZResource
{
public:
	SkinAnimatedLimbData(ZFile* nParent);

	void ParseRawData() override;
	void DeclareReferences(const std::string& prefix) override;

	std::string GetBodySourceCode() const override;

	std::string GetSourceTypeName() const override;
	ZResourceType GetResourceType() const override;

	size_t GetRawDataSize() const override;

protected:
	uint16_t totalVtxCount;
	uint16_t limbModifCount;	// Length of limbModifications
	segptr_t limbModifications;	// SkinLimbModif*
	segptr_t dlist;				// Gfx*

	std::vector<SkinLimbModif> limbModifications_arr;
	// ZDisplayList* unk_8_dlist = nullptr;
};
