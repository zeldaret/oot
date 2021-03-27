#include "ZSkeleton.h"
#include "BitConverter.h"
#include "HighLevel/HLModelIntermediette.h"
#include "StringHelper.h"

using namespace std;

ZSkeleton::ZSkeleton(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
                     int nRawDataIndex, ZFile* nParent)
{
	rawData.assign(nRawData.begin(), nRawData.end());
	rawDataIndex = nRawDataIndex;
	parent = nParent;

	ParseXML(reader);
	ParseRawData();

	string defaultPrefix = name;
	defaultPrefix.replace(0, 1, "s");  // replace g prefix with s for local variables
	uint32_t ptr = Seg2Filespace(limbsArrayAddress, parent->baseAddress);

	for (size_t i = 0; i < limbCount; i++)
	{
		uint32_t ptr2 = Seg2Filespace(BitConverter::ToUInt32BE(rawData, ptr), parent->baseAddress);

		ZLimb* limb = new ZLimb(reader, rawData, ptr2, parent);
		limb->SetName(
			StringHelper::Sprintf("%sLimb_%06X", defaultPrefix.c_str(), limb->GetFileAddress()));
		limbs.push_back(limb);

		ptr += 4;
	}
}

ZSkeleton::ZSkeleton(ZSkeletonType nType, ZLimbType nLimbType, const std::string& prefix,
                     const std::vector<uint8_t>& nRawData, int nRawDataIndex, ZFile* nParent)
{
	rawData.assign(nRawData.begin(), nRawData.end());
	rawDataIndex = nRawDataIndex;
	parent = nParent;

	name = StringHelper::Sprintf("%sSkel_%06X", prefix.c_str(), rawDataIndex);
	type = nType;
	limbType = nLimbType;

	ParseRawData();

	string defaultPrefix = name;
	defaultPrefix.replace(0, 1, "s");  // replace g prefix with s for local variables
	uint32_t ptr = Seg2Filespace(limbsArrayAddress, parent->baseAddress);

	for (size_t i = 0; i < limbCount; i++)
	{
		uint32_t ptr2 = Seg2Filespace(BitConverter::ToUInt32BE(rawData, ptr), parent->baseAddress);

		ZLimb* limb = new ZLimb(limbType, prefix, rawData, ptr2, parent);
		limbs.push_back(limb);

		ptr += 4;
	}
}

ZSkeleton::~ZSkeleton()
{
	for (auto& limb : limbs)
	{
		delete limb;
	}
}

void ZSkeleton::ParseXML(tinyxml2::XMLElement* reader)
{
	ZResource::ParseXML(reader);

	const char* skelTypeXml = reader->Attribute("Type");
	if (skelTypeXml == nullptr)
	{
		fprintf(stderr,
		        "ZSkeleton::ParseXML: Warning in '%s'.\n\t Type not found found. Defaulting to "
		        "'Normal'.\n",
		        name.c_str());
		type = ZSkeletonType::Normal;
	}
	else
	{
		string skelTypeStr(skelTypeXml);
		if (skelTypeStr == "Flex")
		{
			type = ZSkeletonType::Flex;
		}
		else if (skelTypeStr == "Curve")
		{
			type = ZSkeletonType::Curve;
		}
		else if (skelTypeStr != "Normal" && skelTypeStr != "Standard")
		{
			fprintf(stderr,
			        "ZSkeleton::ParseXML: Warning in '%s'.\n\t Invalid Type found: '%s'. "
			        "Defaulting to 'Normal'.\n",
			        name.c_str(), skelTypeXml);
			type = ZSkeletonType::Normal;
		}
	}

	const char* limbTypeXml = reader->Attribute("LimbType");
	if (limbTypeXml == nullptr)
	{
		fprintf(stderr,
		        "ZSkeleton::ParseXML: Warning in '%s'.\n\t LimbType not found found. Defaulting to "
		        "'Standard'.\n",
		        name.c_str());
		limbType = ZLimbType::Standard;
	}
	else
	{
		string limbTypeStr(limbTypeXml);
		if (limbTypeStr == "Standard")
		{
			limbType = ZLimbType::Standard;
		}
		else if (limbTypeStr == "LOD")
		{
			limbType = ZLimbType::LOD;
		}
		else if (limbTypeStr == "Skin")
		{
			limbType = ZLimbType::Skin;
		}
		else if (limbTypeStr == "Curve")
		{
			limbType = ZLimbType::Curve;
		}
		else
		{
			fprintf(stderr,
			        "ZSkeleton::ParseXML: Warning in '%s'.\n\t Invalid LimbType found: '%s'. "
			        "Defaulting to 'Standard'.\n",
			        name.c_str(), limbTypeXml);
			limbType = ZLimbType::Standard;
		}
	}
}

void ZSkeleton::ParseRawData()
{
	ZResource::ParseRawData();

	limbsArrayAddress = BitConverter::ToUInt32BE(rawData, rawDataIndex);
	limbCount = BitConverter::ToUInt8BE(rawData, rawDataIndex + 4);
	dListCount = BitConverter::ToUInt8BE(rawData, rawDataIndex + 8);
}

ZSkeleton* ZSkeleton::FromXML(tinyxml2::XMLElement* reader, vector<uint8_t> nRawData,
                              int rawDataIndex, string nRelPath, ZFile* nParent)
{
	ZSkeleton* skeleton = new ZSkeleton(reader, nRawData, rawDataIndex, nParent);
	skeleton->relativePath = std::move(nRelPath);

	skeleton->parent->AddDeclaration(skeleton->rawDataIndex, DeclarationAlignment::Align16,
	                                 skeleton->GetRawDataSize(), skeleton->GetSourceTypeName(),
	                                 skeleton->name, "");

	return skeleton;
}

void ZSkeleton::Save(const std::string& outFolder)
{
}

void ZSkeleton::GenerateHLIntermediette(HLFileIntermediette& hlFile)
{
	HLModelIntermediette* mdl = (HLModelIntermediette*)&hlFile;
	HLModelIntermediette::FromZSkeleton(mdl, this);
	// mdl->blocks.push_back(new HLTerminator());
}

int ZSkeleton::GetRawDataSize()
{
	switch (type)
	{
	case ZSkeletonType::Flex:
		return 0xC;
	case ZSkeletonType::Normal:
	case ZSkeletonType::Curve:
	default:
		return 0x8;
	}
}

std::string ZSkeleton::GetSourceOutputCode(const std::string& prefix)
{
	if (parent == nullptr)
	{
		return "";
	}

	string defaultPrefix = name.c_str();
	defaultPrefix.replace(0, 1, "s");  // replace g prefix with s for local variables

	for (auto& limb : limbs)
	{
		limb->GetSourceOutputCode(defaultPrefix);
	}

	uint32_t ptr = Seg2Filespace(limbsArrayAddress, parent->baseAddress);
	if (!parent->HasDeclaration(ptr))
	{
		// Table
		string tblStr = "";

		for (size_t i = 0; i < limbs.size(); i++)
		{
			ZLimb* limb = limbs.at(i);

			string decl = StringHelper::Sprintf(
				"    &%s,", parent->GetDeclarationName(limb->GetFileAddress()).c_str());
			if (i != (limbs.size() - 1))
			{
				decl += "\n";
			}

			tblStr += decl;
		}

		parent->AddDeclarationArray(ptr, DeclarationAlignment::None, 4 * limbCount, "static void*",
		                            StringHelper::Sprintf("%sLimbs", defaultPrefix.c_str()),
		                            limbCount, tblStr);
	}

	string headerStr;
	switch (type)
	{
	case ZSkeletonType::Normal:
	case ZSkeletonType::Curve:
		headerStr = StringHelper::Sprintf("%sLimbs, %i", defaultPrefix.c_str(), limbCount);
		break;
	case ZSkeletonType::Flex:
		headerStr =
			StringHelper::Sprintf("%sLimbs, %i, %i", defaultPrefix.c_str(), limbCount, dListCount);
		break;
	}

	Declaration* decl = parent->GetDeclaration(GetAddress());
	if (decl == nullptr)
	{
		parent->AddDeclaration(GetAddress(), DeclarationAlignment::Align16, GetRawDataSize(),
		                       GetSourceTypeName(), name, headerStr);
	}
	else
	{
		decl->text = headerStr;
	}

	return "";
}

std::string ZSkeleton::GetSourceTypeName()
{
	switch (type)
	{
	case ZSkeletonType::Normal:
		return "SkeletonHeader";
	case ZSkeletonType::Flex:
		return "FlexSkeletonHeader";
	case ZSkeletonType::Curve:
		return "SkelCurveLimbList";
	}
	return "SkeletonHeader";
}

ZResourceType ZSkeleton::GetResourceType()
{
	return ZResourceType::Skeleton;
}

segptr_t ZSkeleton::GetAddress()
{
	return rawDataIndex;
}

uint8_t ZSkeleton::GetLimbCount()
{
	return limbCount;
}
