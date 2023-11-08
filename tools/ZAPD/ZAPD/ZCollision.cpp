#include "ZCollision.h"
#include "ZWaterbox.h"

#include <cassert>
#include <cstdint>
#include <string>

#include "Globals.h"
#include "Utils/BitConverter.h"
#include "Utils/StringHelper.h"

REGISTER_ZFILENODE(Collision, ZCollisionHeader);

ZCollisionHeader::ZCollisionHeader(ZFile* nParent) : ZResource(nParent)
{
}

ZCollisionHeader::~ZCollisionHeader()
{
	delete camData;
}

void ZCollisionHeader::ParseRawData()
{
	const auto& rawData = parent->GetRawData();

	absMinX = BitConverter::ToInt16BE(rawData, rawDataIndex + 0);
	absMinY = BitConverter::ToInt16BE(rawData, rawDataIndex + 2);
	absMinZ = BitConverter::ToInt16BE(rawData, rawDataIndex + 4);

	absMaxX = BitConverter::ToInt16BE(rawData, rawDataIndex + 6);
	absMaxY = BitConverter::ToInt16BE(rawData, rawDataIndex + 8);
	absMaxZ = BitConverter::ToInt16BE(rawData, rawDataIndex + 10);

	numVerts = BitConverter::ToUInt16BE(rawData, rawDataIndex + 12);
	vtxAddress = BitConverter::ToInt32BE(rawData, rawDataIndex + 16);

	numPolygons = BitConverter::ToUInt16BE(rawData, rawDataIndex + 20);
	polyAddress = BitConverter::ToInt32BE(rawData, rawDataIndex + 24);
	polyTypeDefAddress = BitConverter::ToInt32BE(rawData, rawDataIndex + 28);
	camDataAddress = BitConverter::ToInt32BE(rawData, rawDataIndex + 32);

	numWaterBoxes = BitConverter::ToUInt16BE(rawData, rawDataIndex + 36);
	waterBoxAddress = BitConverter::ToInt32BE(rawData, rawDataIndex + 40);

	vtxSegmentOffset = Seg2Filespace(vtxAddress, parent->baseAddress);
	polySegmentOffset = Seg2Filespace(polyAddress, parent->baseAddress);
	polyTypeDefSegmentOffset = Seg2Filespace(polyTypeDefAddress, parent->baseAddress);
	camDataSegmentOffset = Seg2Filespace(camDataAddress, parent->baseAddress);
	waterBoxSegmentOffset = Seg2Filespace(waterBoxAddress, parent->baseAddress);

	vertices.reserve(numVerts);
	polygons.reserve(numPolygons);
	waterBoxes.reserve(numWaterBoxes);

	offset_t currentPtr = vtxSegmentOffset;

	for (uint16_t i = 0; i < numVerts; i++)
	{
		ZVector vec(parent);
		vec.ExtractFromBinary(currentPtr, ZScalarType::ZSCALAR_S16, 3);

		currentPtr += vec.GetRawDataSize();
		vertices.push_back(vec);
	}

	for (uint16_t i = 0; i < numPolygons; i++)
	{
		ZCollisionPoly poly(parent);
		poly.SetRawDataIndex(polySegmentOffset + (i * 16));
		poly.ParseRawData();
		polygons.push_back(poly);
	}

	uint16_t highestPolyType = 0;

	for (const ZCollisionPoly& poly : polygons)
	{
		if (poly.type > highestPolyType)
			highestPolyType = poly.type;
	}

	for (uint16_t i = 0; i < highestPolyType + 1; i++)
	{
		ZSurfaceType surfaceType(parent);
		surfaceType.SetRawDataIndex(polyTypeDefSegmentOffset + (i * 8));
		surfaceType.ParseRawData();
		polygonTypes.push_back(surfaceType);
	}
	// polygonTypes.push_back(
	//	BitConverter::ToUInt64BE(rawData, polyTypeDefSegmentOffset + (i * 8)));

	if (camDataAddress != SEGMENTED_NULL)
	{
		// Try to guess how many elements the CamDataList array has.
		// The "guessing algorithm" is basically a "best effort" one and it
		// is error-prone.
		// This is based mostly on observation of how CollisionHeader data is
		// usually ordered. If for some reason the data was in some other funny
		// order, this would probably break.
		// The most common ordering is:
		// - *BgCamInfo*
		// - SurfaceType
		// - CollisionPoly
		// - Vertices
		// - WaterBoxes
		// - CollisionHeader
		offset_t upperCameraBoundary = polyTypeDefSegmentOffset;
		if (upperCameraBoundary == SEGMENTED_NULL)
		{
			upperCameraBoundary = polySegmentOffset;
		}
		if (upperCameraBoundary == SEGMENTED_NULL)
		{
			upperCameraBoundary = vtxSegmentOffset;
		}
		if (upperCameraBoundary == SEGMENTED_NULL)
		{
			upperCameraBoundary = waterBoxSegmentOffset;
		}
		if (upperCameraBoundary == SEGMENTED_NULL)
		{
			upperCameraBoundary = rawDataIndex;
		}

		// Sharp Ocarina places the CamDataEntries above the list so we need to calculate the number
		// of cameras differently.
		if (upperCameraBoundary < camDataSegmentOffset)
		{
			offset_t offset = camDataSegmentOffset;
			while (rawData[offset] == 0x00 && rawData[offset + 0x4] == 0x02)
			{
				offset += 0x08;
			}
			upperCameraBoundary = offset;
		}

		camData =
			new CameraDataList(parent, name, rawData, camDataSegmentOffset, upperCameraBoundary);
	}

	for (int32_t i = 0; i < numWaterBoxes; i++)
	{
		ZWaterbox waterbox(parent);

		waterbox.SetRawDataIndex(waterBoxSegmentOffset +
		                         (i * (Globals::Instance->game == ZGame::OOT_SW97 ? 12 : 16)));
		waterbox.ParseRawData();
		waterBoxes.emplace_back(waterbox);
	}
}

void ZCollisionHeader::DeclareReferences(const std::string& prefix)
{
	std::string declaration = "";
	std::string auxName = name;

	if (name == "")
		auxName = GetDefaultName(prefix);

	if (waterBoxes.size() > 0)
	{
		for (size_t i = 0; i < waterBoxes.size(); i++)
		{
			declaration +=
				StringHelper::Sprintf("\t{ %s },", waterBoxes[i].GetBodySourceCode().c_str());
			if (i + 1 < waterBoxes.size())
				declaration += "\n";
		}

		parent->AddDeclarationArray(waterBoxSegmentOffset, DeclarationAlignment::Align4,
		                            waterBoxes[0].GetRawDataSize() * waterBoxes.size(),
		                            waterBoxes[0].GetSourceTypeName().c_str(),
		                            StringHelper::Sprintf("%sWaterBoxes", auxName.c_str()),
		                            waterBoxes.size(), declaration);
	}

	if (polygons.size() > 0)
	{
		declaration.clear();

		for (size_t i = 0; i < polygons.size(); i++)
		{
			declaration += StringHelper::Sprintf("\t%s,", polygons[i].GetBodySourceCode().c_str());
			if (i + 1 < polygons.size())
				declaration += "\n";
		}

		parent->AddDeclarationArray(polySegmentOffset, DeclarationAlignment::Align4,
		                            polygons.size() * 16, polygons[0].GetSourceTypeName().c_str(),
		                            StringHelper::Sprintf("%sPolygons", auxName.c_str()),
		                            polygons.size(), declaration);
	}

	declaration.clear();
	for (const auto& polyType : polygonTypes)
	{
		declaration += StringHelper::Sprintf("\t%s,", polyType.GetBodySourceCode().c_str());
	}

	if (polyTypeDefAddress != SEGMENTED_NULL)
		parent->AddDeclarationArray(polyTypeDefSegmentOffset, DeclarationAlignment::Align4,
		                            polygonTypes.size() * 8,
		                            polygonTypes[0].GetSourceTypeName().c_str(),
		                            StringHelper::Sprintf("%sSurfaceType", auxName.c_str()),
		                            polygonTypes.size(), declaration);

	declaration.clear();

	if (vertices.size() > 0)
	{
		declaration.clear();

		for (size_t i = 0; i < vertices.size(); i++)
		{
			declaration +=
				StringHelper::Sprintf("\t{ %s },", vertices[i].GetBodySourceCode().c_str());

			if (i < vertices.size() - 1)
				declaration += "\n";
		}

		const auto& first = vertices.front();
		if (vtxAddress != 0)
			parent->AddDeclarationArray(
				vtxSegmentOffset, first.GetDeclarationAlignment(),
				vertices.size() * first.GetRawDataSize(), first.GetSourceTypeName(),
				StringHelper::Sprintf("%sVertices", auxName.c_str()), vertices.size(), declaration);
	}
}

std::string ZCollisionHeader::GetBodySourceCode() const
{
	std::string declaration = "";

	declaration += "\n";

	declaration += StringHelper::Sprintf("\t{ %i, %i, %i },\n", absMinX, absMinY, absMinZ);
	declaration += StringHelper::Sprintf("\t{ %i, %i, %i },\n", absMaxX, absMaxY, absMaxZ);

	std::string vtxName;
	Globals::Instance->GetSegmentedPtrName(vtxAddress, parent, "Vec3s", vtxName);

	if (numVerts > 0)
		declaration +=
			StringHelper::Sprintf("\tARRAY_COUNT(%s), %s,\n", vtxName.c_str(), vtxName.c_str());
	else
		declaration += StringHelper::Sprintf("\t%i, %s,\n", numVerts, vtxName.c_str());

	std::string polyName;
	Globals::Instance->GetSegmentedPtrName(polyAddress, parent, "CollisionPoly", polyName);

	if (numPolygons > 0)
		declaration +=
			StringHelper::Sprintf("\tARRAY_COUNT(%s), %s,\n", polyName.c_str(), polyName.c_str());
	else
		declaration += StringHelper::Sprintf("\t%i, %s,\n", numPolygons, polyName.c_str());

	std::string surfaceName;
	Globals::Instance->GetSegmentedPtrName(polyTypeDefAddress, parent, "SurfaceType", surfaceName);
	declaration += StringHelper::Sprintf("\t%s,\n", surfaceName.c_str());

	std::string camName;
	Globals::Instance->GetSegmentedPtrName(camDataAddress, parent, "BgCamInfo", camName);
	declaration += StringHelper::Sprintf("\t%s,\n", camName.c_str());

	std::string waterBoxName;
	Globals::Instance->GetSegmentedPtrName(waterBoxAddress, parent, "WaterBox", waterBoxName);

	if (numWaterBoxes > 0)
		declaration += StringHelper::Sprintf("\tARRAY_COUNT(%s), %s\n", waterBoxName.c_str(),
		                                     waterBoxName.c_str());
	else
		declaration += StringHelper::Sprintf("\t%i, %s\n", numWaterBoxes, waterBoxName.c_str());

	return declaration;
}

std::string ZCollisionHeader::GetDefaultName(const std::string& prefix) const
{
	return StringHelper::Sprintf("%sCol_%06X", prefix.c_str(), rawDataIndex);
}

std::string ZCollisionHeader::GetSourceTypeName() const
{
	return "CollisionHeader";
}

ZResourceType ZCollisionHeader::GetResourceType() const
{
	return ZResourceType::CollisionHeader;
}

size_t ZCollisionHeader::GetRawDataSize() const
{
	return 44;
}

CameraDataList::CameraDataList(ZFile* parent, const std::string& prefix,
                               const std::vector<uint8_t>& rawData, offset_t rawDataIndex,
                               offset_t upperCameraBoundary)
{
	std::string declaration;

	// Parse CameraDataEntries
	size_t numElements = (upperCameraBoundary - rawDataIndex) / 8;
	assert(numElements < 10000);

	offset_t cameraPosDataSeg = rawDataIndex;
	uint32_t numDataTotal;
	uint32_t cameraPosDataSegEnd = rawDataIndex;
	bool isSharpOcarina = false;

	for (size_t i = 0; i < numElements; i++)
	{
		CameraDataEntry entry;

		entry.cameraSType =
			BitConverter::ToInt16BE(rawData, rawDataIndex + (entries.size() * 8) + 0);
		entry.numData = BitConverter::ToInt16BE(rawData, rawDataIndex + (entries.size() * 8) + 2);
		entry.cameraPosDataSeg =
			BitConverter::ToInt32BE(rawData, rawDataIndex + (entries.size() * 8) + 4);

		if (entry.cameraPosDataSeg != 0 && GETSEGNUM(entry.cameraPosDataSeg) != SEGMENT_SCENE)
		{
			cameraPosDataSeg = rawDataIndex + (entries.size() * 8);
			break;
		}

		if (rawDataIndex > GETSEGOFFSET(entry.cameraPosDataSeg))
		{
			if (entry.cameraPosDataSeg != 0 &&
			    cameraPosDataSeg > GETSEGOFFSET(entry.cameraPosDataSeg))
				cameraPosDataSeg = GETSEGOFFSET(entry.cameraPosDataSeg);
		}
		else
		{
			// Sharp Ocarina will place the cam data after the list as opposed to the original maps
			// which have it before.
			isSharpOcarina = true;
			cameraPosDataSeg = rawDataIndex + (numElements * 0x8);
			if (cameraPosDataSegEnd < GETSEGOFFSET(entry.cameraPosDataSeg))
				cameraPosDataSegEnd = GETSEGOFFSET(entry.cameraPosDataSeg);
		}

		entries.emplace_back(entry);
	}

	// Setting cameraPosDataAddr to rawDataIndex give a pos list length of 0
	uint32_t cameraPosDataOffset = GETSEGOFFSET(cameraPosDataSeg);
	for (size_t i = 0; i < entries.size(); i++)
	{
		char camSegLine[2048];

		if (entries[i].cameraPosDataSeg != 0)
		{
			uint32_t index =
				(GETSEGOFFSET(entries[i].cameraPosDataSeg) - cameraPosDataOffset) / 0x6;
			snprintf(camSegLine, 2048, "&%sCamPosData[%i]", prefix.c_str(), index);
		}
		else
			snprintf(camSegLine, 2048, "NULL");

		declaration +=
			StringHelper::Sprintf("    { 0x%04X, %i, %s },", entries[i].cameraSType,
		                          entries[i].numData, camSegLine, rawDataIndex + (i * 8));

		if (i < entries.size() - 1)
			declaration += "\n";
	}

	parent->AddDeclarationArray(
		rawDataIndex, DeclarationAlignment::Align4, entries.size() * 8, "BgCamInfo",
		StringHelper::Sprintf("%sCamDataList", prefix.c_str(), rawDataIndex), entries.size(),
		declaration);

	if (!isSharpOcarina)
		numDataTotal = (rawDataIndex - cameraPosDataOffset) / 0x6;
	else
		numDataTotal = ((cameraPosDataSegEnd - cameraPosDataSeg) + 18) / 0x6;

	if (numDataTotal > 0)
	{
		declaration.clear();
		cameraPositionData.reserve(numDataTotal);
		for (uint32_t i = 0; i < numDataTotal; i++)
		{
			CameraPositionData data = CameraPositionData(rawData, cameraPosDataOffset + (i * 6));

			declaration += StringHelper::Sprintf("\t{ %6i, %6i, %6i },", data.x, data.y, data.z);
			cameraPositionData.emplace_back(data);
			if (i + 1 < numDataTotal)
				declaration += "\n";
		}

		uint32_t cameraPosDataIndex = GETSEGOFFSET(cameraPosDataSeg);
		uint32_t entrySize = numDataTotal * 0x6;
		parent->AddDeclarationArray(cameraPosDataIndex, DeclarationAlignment::Align4, entrySize,
		                            "Vec3s", StringHelper::Sprintf("%sCamPosData", prefix.c_str()),
		                            numDataTotal, declaration);
	}
}

CameraDataList::~CameraDataList()
{
}

CameraPositionData::CameraPositionData(const std::vector<uint8_t>& rawData, uint32_t rawDataIndex)
{
	x = BitConverter::ToInt16BE(rawData, rawDataIndex + 0);
	y = BitConverter::ToInt16BE(rawData, rawDataIndex + 2);
	z = BitConverter::ToInt16BE(rawData, rawDataIndex + 4);
}
