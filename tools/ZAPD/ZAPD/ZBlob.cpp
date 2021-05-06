#include "ZBlob.h"
#include "BitConverter.h"
#include "File.h"
#include "Path.h"
#include "StringHelper.h"
#include "ZFile.h"

using namespace tinyxml2;
using namespace std;

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
		vector<uint8_t>(nRawData.data() + rawDataIndex, nRawData.data() + rawDataIndex + size);
	name = std::move(nName);
}

void ZBlob::ExtractFromXML(tinyxml2::XMLElement* reader, const std::vector<uint8_t>& nRawData,
                           const uint32_t nRawDataIndex, const std::string& nRelPath)
{
	rawDataIndex = nRawDataIndex;

	ParseXML(reader);
	long size = strtol(reader->Attribute("Size"), NULL, 16);
	rawData =
		vector<uint8_t>(nRawData.data() + rawDataIndex, nRawData.data() + rawDataIndex + size);
	relativePath = std::move(nRelPath);
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

string ZBlob::GetSourceOutputCode(const std::string& prefix)
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

string ZBlob::GetSourceOutputHeader(const std::string& prefix)
{
	return StringHelper::Sprintf("extern u8 %s[];\n", name.c_str());
}

void ZBlob::Save(const std::string& outFolder)
{
	File::WriteAllBytes(outFolder + "/" + name + ".bin", rawData);
}

bool ZBlob::IsExternalResource()
{
	return true;
}

string ZBlob::GetExternalExtension()
{
	return "bin";
}

std::string ZBlob::GetSourceTypeName()
{
	return "u8";
}

ZResourceType ZBlob::GetResourceType()
{
	return ZResourceType::Blob;
}
