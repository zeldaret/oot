#include "ZBlob.h"
#include "BitConverter.h"
#include "File.h"
#include "Path.h"
#include "StringHelper.h"
#include "ZFile.h"

using namespace tinyxml2;

REGISTER_ZFILENODE(Blob, ZBlob);

ZBlob::ZBlob(ZFile* nParent) : ZResource(nParent)
{
	RegisterRequiredAttribute("Size");
}

// Build Source File Mode
ZBlob* ZBlob::BuildFromXML(XMLElement* reader, const std::string& inFolder, bool readFile)
{
	ZBlob* blob = new ZBlob(nullptr);

	blob->ParseXML(reader);

	if (readFile)
		blob->blobData = File::ReadAllBytes(inFolder + "/" + blob->name + ".bin");

	return blob;
}

ZBlob* ZBlob::FromFile(const std::string& filePath)
{
	ZBlob* blob = new ZBlob(nullptr);
	blob->name = StringHelper::Split(Path::GetFileNameWithoutExtension(filePath), ".")[0];
	blob->blobData = File::ReadAllBytes(filePath);

	return blob;
}

void ZBlob::ParseXML(tinyxml2::XMLElement* reader)
{
	ZResource::ParseXML(reader);

	blobSize = StringHelper::StrToL(registeredAttributes.at("Size").value, 16);
}

void ZBlob::ParseRawData()
{
	blobData.assign(parent->GetRawData().begin() + rawDataIndex,
	                parent->GetRawData().begin() + rawDataIndex + blobSize);
}

std::string ZBlob::GetSourceOutputCode(const std::string& prefix)
{
	sourceOutput = "";

	for (size_t i = 0; i < blobData.size(); i += 1)
	{
		if (i % 16 == 0)
			sourceOutput += "    ";

		sourceOutput += StringHelper::Sprintf("0x%02X, ", blobData[i]);

		if (i % 16 == 15)
			sourceOutput += "\n";
	}

	// Ensure there's always a trailing line feed to prevent dumb warnings.
	// Please don't remove this line, unless you somehow made a way to prevent
	// that warning when building the OoT repo.
	sourceOutput += "\n";

	return sourceOutput;
}

std::string ZBlob::GetSourceOutputHeader(const std::string& prefix)
{
	return StringHelper::Sprintf("extern u8 %s[];\n", name.c_str());
}

void ZBlob::Save(const fs::path& outFolder)
{
	File::WriteAllBytes(outFolder / (name + ".bin"), blobData);
}

bool ZBlob::IsExternalResource() const
{
	return true;
}

std::string ZBlob::GetExternalExtension() const
{
	return "bin";
}

std::string ZBlob::GetSourceTypeName() const
{
	return "u8";
}

ZResourceType ZBlob::GetResourceType() const
{
	return ZResourceType::Blob;
}

size_t ZBlob::GetRawDataSize() const
{
	return blobSize;
}
