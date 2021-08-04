#include "ZPath.h"

#include "BitConverter.h"
#include "Globals.h"
#include "StringHelper.h"
#include "ZFile.h"

REGISTER_ZFILENODE(Path, ZPath);

ZPath::ZPath(ZFile* nParent) : ZResource(nParent)
{
	numPaths = 1;
	RegisterOptionalAttribute("NumPaths", "1");
}

void ZPath::ExtractFromXML(tinyxml2::XMLElement* reader, uint32_t nRawDataIndex)
{
	ZResource::ExtractFromXML(reader, nRawDataIndex);

	parent->AddDeclarationArray(rawDataIndex, DeclarationAlignment::Align4, pathways.size() * 8,
	                            GetSourceTypeName(), name, pathways.size(), "");
}

void ZPath::ParseXML(tinyxml2::XMLElement* reader)
{
	ZResource::ParseXML(reader);

	numPaths = StringHelper::StrToL(registeredAttributes.at("NumPaths").value);

	if (numPaths < 1)
		throw std::runtime_error(
			StringHelper::Sprintf("ZPath::ParseXML: Fatal error in '%s'.\n"
		                          "\t Invalid value for attribute 'NumPaths': '%i'\n",
		                          name.c_str(), numPaths));
}

void ZPath::ParseRawData()
{
	ZResource::ParseRawData();

	uint32_t currentPtr = rawDataIndex;

	for (size_t pathIndex = 0; pathIndex < numPaths; pathIndex++)
	{
		PathwayEntry path(parent);
		path.SetRawDataIndex(currentPtr);
		path.ParseRawData();

		if (path.GetListAddress() == 0)
			break;

		currentPtr += path.GetRawDataSize();
		pathways.push_back(path);
	}
}

void ZPath::DeclareReferences(const std::string& prefix)
{
	ZResource::DeclareReferences(prefix);

	for (auto& entry : pathways)
		entry.DeclareReferences(prefix);
}

std::string ZPath::GetBodySourceCode() const
{
	std::string declaration = "";

	size_t index = 0;
	for (const auto& entry : pathways)
	{
		declaration += StringHelper::Sprintf("\t{ %s },", entry.GetBodySourceCode().c_str());

		if (index < pathways.size() - 1)
			declaration += "\n";

		index++;
	}

	return declaration;
}

std::string ZPath::GetSourceOutputCode(const std::string& prefix)
{
	std::string declaration = GetBodySourceCode();

	Declaration* decl = parent->GetDeclaration(rawDataIndex);
	if (decl == nullptr || decl->isPlaceholder)
		parent->AddDeclarationArray(rawDataIndex, DeclarationAlignment::Align4, pathways.size() * 8,
		                            GetSourceTypeName(), name, pathways.size(), declaration);
	else
		decl->text = declaration;

	return "";
}

std::string ZPath::GetSourceTypeName() const
{
	return "Path";
}

ZResourceType ZPath::GetResourceType() const
{
	return ZResourceType::Path;
}

size_t ZPath::GetRawDataSize() const
{
	return pathways.size() * pathways.at(0).GetRawDataSize();
}

void ZPath::SetNumPaths(uint32_t nNumPaths)
{
	numPaths = nNumPaths;
}

/* PathwayEntry */

PathwayEntry::PathwayEntry(ZFile* nParent) : ZResource(nParent)
{
}

void PathwayEntry::ParseRawData()
{
	ZResource::ParseRawData();
	auto parentRawData = parent->GetRawData();
	numPoints = parentRawData.at(rawDataIndex + 0);
	unk1 = parentRawData.at(rawDataIndex + 1);
	unk2 = BitConverter::ToInt16BE(parentRawData, rawDataIndex + 2);
	listSegmentAddress = BitConverter::ToInt32BE(parentRawData, rawDataIndex + 4);

	uint32_t currentPtr = GETSEGOFFSET(listSegmentAddress);

	for (int32_t i = 0; i < numPoints; i++)
	{
		ZVector vec(parent);
		vec.SetRawDataIndex(currentPtr);
		vec.SetScalarType(ZScalarType::ZSCALAR_S16);
		vec.SetDimensions(3);
		vec.ParseRawData();

		currentPtr += vec.GetRawDataSize();
		points.push_back(vec);
	}
}

void PathwayEntry::DeclareReferences(const std::string& prefix)
{
	ZResource::DeclareReferences(prefix);
	if (points.empty())
		return;

	std::string declaration = "";

	size_t index = 0;
	for (const auto& point : points)
	{
		declaration += StringHelper::Sprintf("\t%s,", point.GetBodySourceCode().c_str());

		if (index < points.size() - 1)
			declaration += "\n";

		index++;
	}

	Declaration* decl = parent->GetDeclaration(GETSEGOFFSET(listSegmentAddress));
	if (decl == nullptr)
	{
		parent->AddDeclarationArray(GETSEGOFFSET(listSegmentAddress), DeclarationAlignment::Align4,
		                            DeclarationPadding::Pad4, points.size() * 6,
		                            points.at(0).GetSourceTypeName(),
		                            StringHelper::Sprintf("%sPathwayList0x%06X", prefix.c_str(),
		                                                  GETSEGOFFSET(listSegmentAddress)),
		                            points.size(), declaration);
	}
	else
		decl->text = declaration;
}

std::string PathwayEntry::GetBodySourceCode() const
{
	std::string declaration = "";
	std::string listName = parent->GetDeclarationPtrName(listSegmentAddress);

	if (Globals::Instance->game == ZGame::MM_RETAIL)
		declaration +=
			StringHelper::Sprintf("%i, %i, %i, %s", numPoints, unk1, unk2, listName.c_str());
	else
		declaration += StringHelper::Sprintf("%i, %s", numPoints, listName.c_str());

	return declaration;
}

std::string PathwayEntry::GetSourceTypeName() const
{
	return "Path";
}

ZResourceType PathwayEntry::GetResourceType() const
{
	return ZResourceType::Path;
}

size_t PathwayEntry::GetRawDataSize() const
{
	return 0x08;
}

segptr_t PathwayEntry::GetListAddress() const
{
	return listSegmentAddress;
}
