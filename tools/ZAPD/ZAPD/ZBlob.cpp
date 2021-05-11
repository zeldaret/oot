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
}

ZBlob::ZBlob(const std::vector<uint8_t>& nRawData, uint32_t nRawDataIndex, size_t size,
             std::string nName, ZFile* nParent)
	: ZBlob(nParent)
{
	rawDataIndex = nRawDataIndex;
	rawData =
		std::vector<uint8_t>(nRawData.data() + rawDataIndex, nRawData.data() + rawDataIndex + size);
	name = std::move(nName);
}

void ZBlob::ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
                           const uint32_t nRawDataIndex)
{
	rawDataIndex = nRawDataIndex;

	ParseXML(reader);
	long size = strtol(reader->Attribute("Size"), NULL, 16);
	rawData =
		std::vector<uint8_t>(nRawData.data() + rawDataIndex, nRawData.data() + rawDataIndex + size);
}

// Build Source File Mode
ZBlob* ZBlob::BuildFromXML(XMLElement* reader, const std::string& inFolder, bool readFile)
{
	ZBlob* blob = new ZBlob(nullptr);

	blob->ParseXML(reader);

	if (readFile)
		blob->rawData = File::ReadAllBytes(inFolder + "/" + blob->name + ".bin");

	return blob;
}

ZBlob* ZBlob::FromFile(const std::string& filePath)
{
	ZBlob* blob = new ZBlob(nullptr);
	blob->name = StringHelper::Split(Path::GetFileNameWithoutExtension(filePath), ".")[0];
	blob->rawData = File::ReadAllBytes(filePath);

	return blob;
}

std::string ZBlob::GetSourceOutputCode(const std::string& prefix)
{
	sourceOutput = "";

	for (size_t i = 0; i < rawData.size(); i += 1)
	{
		if (i % 16 == 0)
			sourceOutput += "    ";

		sourceOutput += StringHelper::Sprintf("0x%02X, ", rawData[i]);

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
	File::WriteAllBytes(outFolder / (name + ".bin"), rawData);
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
