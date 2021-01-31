#pragma once

#include <vector>
#include <string>
#include <stdint.h>
#include "ZResource.h"
#include "tinyxml2.h"

typedef enum ZScalarType {
	ZSCALAR_NONE,
	ZSCALAR_S8,
	ZSCALAR_U8,
	ZSCALAR_S16,
	ZSCALAR_U16,
	ZSCALAR_S32,
	ZSCALAR_U32,
	ZSCALAR_S64,
	ZSCALAR_U64,
	ZSCALAR_F32,
	ZSCALAR_F64
} ZScalarType;

typedef union ZScalarData {
	uint8_t u8;
	int8_t s8;
	uint16_t u16;
	int16_t s16;
	uint32_t u32;
	int32_t s32;
	uint64_t u64;
	int64_t s64;
	float f32;
	double f64;
} ZScalarData;

class ZScalar : public ZResource
{
friend class ZVector;
public:
	ZScalarData scalarData;
	ZScalarType scalarType;

	ZScalar();
	ZScalar(const ZScalarType scalarType);

	void ParseXML(tinyxml2::XMLElement* reader) override;
	std::string GetSourceTypeName() override;
	std::string GetSourceValue();
	std::string GetSourceOutputCode(const std::string& prefix) override;
	int GetRawDataSize() override;
	ZResourceType GetResourceType() override;
	bool DoesSupportArray() override;
	void ParseRawData() override;

	static ZScalar* ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData, const int rawDataIndex, const std::string& nRelPath);
	static int MapTypeToSize(const ZScalarType scalarType);
	static ZScalarType MapOutputTypeToScalarType(const std::string& type);
	static std::string MapScalarTypeToOutputType(const ZScalarType scalarType);

protected:
	void ParseRawData(const std::vector<uint8_t>& data, const int offset);
};