#include "ZSkeleton.h"
#include "BitConverter.h"
#include "StringHelper.h"
#include "HighLevel/HLModelIntermediette.h"

using namespace std;
using namespace tinyxml2;

ZLimbStandard::ZLimbStandard()
{
	name = "";
	transX = 0;
	transY = 0;
	transZ = 0;
	childIndex = 0;
	siblingIndex = 0;
	dListPtr = 0;
	children = vector<ZLimbStandard*>();
}

ZLimbStandard* ZLimbStandard::FromXML(XMLElement* reader, vector<uint8_t> nRawData, int rawDataIndex, string nRelPath, ZFile* parent)
{
	ZLimbType limbType = ZLimbType::Standard;
	string limbName = reader->Attribute("Name");
	int limbAddress = strtol(StringHelper::Split(reader->Attribute("Offset"), "0x")[1].c_str(), NULL, 16);

	if (string(reader->Attribute("Type")) == "LOD")
		limbType = ZLimbType::LOD;

	ZLimbStandard* limb = ZLimbStandard::FromRawData(nRawData, rawDataIndex);
	limb->ParseXML(reader);
	limb->parent = parent;
	limb->name = limbName;
	limb->address = limbAddress;

	limb->parent->AddDeclaration(limb->address, DeclarationAlignment::None, 12, "SkelLimbEntry", StringHelper::Sprintf("%s", limbName.c_str(), limb->address), "");

	return limb;
}

ZLimbStandard* ZLimbStandard::FromRawData(std::vector<uint8_t> nRawData, int rawDataIndex)
{
	ZLimbStandard* limb = new ZLimbStandard();

	limb->address = rawDataIndex;

	limb->transX = BitConverter::ToInt16BE(nRawData, rawDataIndex + 0);
	limb->transY = BitConverter::ToInt16BE(nRawData, rawDataIndex + 2);
	limb->transZ = BitConverter::ToInt16BE(nRawData, rawDataIndex + 4);
	
	limb->childIndex = nRawData[rawDataIndex + 6];
	limb->siblingIndex = nRawData[rawDataIndex + 7];
	
	limb->dListPtr = BitConverter::ToInt32BE(nRawData, rawDataIndex + 8) & 0x00FFFFFF;

	return limb;
}

string ZLimbStandard::GetSourceOutputCode(string prefix)
{
	string dListStr = dListPtr == 0 ? "NULL" : StringHelper::Sprintf("%s", parent->GetVarName(dListPtr).c_str());

	string entryStr = StringHelper::Sprintf("\t{ %i, %i, %i }, %i, %i, %s",
		transX, transY, transZ, childIndex, siblingIndex, dListStr.c_str());

	Declaration* decl = parent->GetDeclaration(address);
	decl->text = entryStr;

	return "";
}

int ZLimbStandard::GetRawDataSize()
{
	return 12;
}

ZSkeleton::ZSkeleton() : ZResource()
{
	limbs = vector<ZLimbStandard*>();
}

void ZSkeleton::GenerateHLIntermediette(HLFileIntermediette& hlFile)
{
	HLModelIntermediette* mdl = (HLModelIntermediette*)&hlFile;
	HLModelIntermediette::FromZSkeleton(mdl, this);
	//mdl->blocks.push_back(new HLTerminator());
}

ZSkeleton* ZSkeleton::FromXML(XMLElement* reader, vector<uint8_t> nRawData, int rawDataIndex, string nRelPath, ZFile* nParent)
{
	ZSkeleton* skeleton = new ZSkeleton();
	skeleton->name = reader->Attribute("Name");
	skeleton->parent = nParent;
	ZLimbType limbType = ZLimbType::Standard;
	ZSkeletonType skeletonType = ZSkeletonType::Normal;
	int limbCount = 0;

	skeleton->rawData = nRawData;
	skeleton->rawDataIndex = rawDataIndex;

	if (string(reader->Attribute("Type")) == "Flex")
		skeletonType = ZSkeletonType::Flex;
	else if (string(reader->Attribute("Type")) == "Skin")
		skeletonType = ZSkeletonType::Skin;
	else if (string(reader->Attribute("Type")) != "Normal")
	{
		// TODO: Print some error here...
	}

	skeleton->type = skeletonType;

	if (string(reader->Attribute("LimbType")) == "LOD")
		limbType = ZLimbType::LOD;

	limbCount = nRawData[rawDataIndex + 4];
	skeleton->dListCount = nRawData[rawDataIndex + 8];

	ZLimbStandard* currentLimb = nullptr;

	uint32_t ptr = (uint32_t)BitConverter::ToInt32BE(nRawData, rawDataIndex) & 0x00FFFFFF;

	for (int i = 0; i < limbCount; i++)
	{
		uint32_t ptr2 = (uint32_t)BitConverter::ToInt32BE(nRawData, ptr) & 0x00FFFFFF;

		if (limbType == ZLimbType::Standard)
		{
			ZLimbStandard* limb = ZLimbStandard::FromRawData(nRawData, ptr2);
			skeleton->limbs.push_back(limb);
		}
		else
		{
			ZLimbLOD* limb = ZLimbLOD::FromRawData(nRawData, ptr2);
			skeleton->limbs.push_back(limb);
		}

		ptr += 4;
	}

	return skeleton;
}

std::string ZSkeleton::GetSourceOutputCode(std::string prefix)
{
	if (parent != nullptr)
	{
		for (int i = 0; i < limbs.size(); i++)
		{
			ZLimbStandard* limb = limbs[i];

			string dListStr = limb->dListPtr == 0 ? "NULL" : StringHelper::Sprintf("%s", parent->GetVarName(limb->dListPtr).c_str());

			string entryStr = StringHelper::Sprintf("\t{ %i, %i, %i }, %i, %i, %s",
				limb->transX, limb->transY, limb->transZ, limb->childIndex, limb->siblingIndex, dListStr.c_str());

			string limbName = StringHelper::Sprintf("%s_limb_%04X", name.c_str(), limb->address);

			if (parent->HasDeclaration(limb->address))
				limbName = parent->GetDeclarationName(limb->address);

			parent->AddDeclaration(limb->address, DeclarationAlignment::None, 12, "StandardLimb", limbName, entryStr);
		}

		// Table
		string tblStr = "";

		for (int i = 0; i < limbs.size(); i++)
		{
			ZLimbStandard* limb = limbs[i];

			//string decl = StringHelper::Sprintf("\t&_%s_limb_%04X,\n", prefix.c_str(), limb->address);
			string decl = "";

			if (parent->HasDeclaration(limb->address))
				decl = StringHelper::Sprintf("\t&%s,\n", parent->GetDeclarationName(limb->address).c_str());

			tblStr += decl;
		}

		uint32_t ptr = (uint32_t)BitConverter::ToInt32BE(rawData, rawDataIndex) & 0x00FFFFFF;

		if (!parent->HasDeclaration(ptr))
		{
			parent->AddDeclarationArray(ptr, DeclarationAlignment::None, 4 * limbs.size(),
				"StandardLimb*", StringHelper::Sprintf("%s_limbs", name.c_str()), limbs.size(), tblStr);
		}

		if (type == ZSkeletonType::Normal)
		{
			string headerStr = StringHelper::Sprintf("%s_limbs, %i", name.c_str(), limbs.size());
			parent->AddDeclaration(rawDataIndex, DeclarationAlignment::Align16, 8,
				"SkeletonHeader", StringHelper::Sprintf("%s", name.c_str()), headerStr);
		}
		else
		{
			string headerStr = StringHelper::Sprintf("%s_limbs, %i, %i", name.c_str(), limbs.size(), dListCount);
			parent->AddDeclaration(rawDataIndex, DeclarationAlignment::Align16, 12,
				"FlexSkeletonHeader", StringHelper::Sprintf("%s", name.c_str()), headerStr);
		}
	}

	return "";
}

void ZSkeleton::Save(string outFolder)
{

}

ZLimbLOD::ZLimbLOD() : ZLimbStandard()
{
	farDListPtr = 0;
}

ZLimbLOD* ZLimbLOD::FromRawData(vector<uint8_t> nRawData, int rawDataIndex)
{
	ZLimbLOD* limb = new ZLimbLOD();

	limb->address = rawDataIndex;

	limb->transX = BitConverter::ToInt16BE(nRawData, rawDataIndex + 0);
	limb->transY = BitConverter::ToInt16BE(nRawData, rawDataIndex + 2);
	limb->transZ = BitConverter::ToInt16BE(nRawData, rawDataIndex + 4);

	limb->childIndex = nRawData[rawDataIndex + 6];
	limb->siblingIndex = nRawData[rawDataIndex + 7];

	limb->dListPtr = BitConverter::ToInt32BE(nRawData, rawDataIndex + 8) & 0x00FFFFFF;
	limb->farDListPtr = BitConverter::ToInt32BE(nRawData, rawDataIndex + 12) & 0x00FFFFFF;

	return limb;
}

string ZLimbLOD::GetSourceOutputCode(string prefix)
{
	return std::string();
}

int ZLimbLOD::GetRawDataSize()
{
	return 16;
}
