#include "ZBlob.h"
#include "File.h"
#include "ZFile.h"
#include "BitConverter.h"
#include "Path.h"
#include "StringHelper.h"

using namespace tinyxml2;
using namespace std;

ZBlob::ZBlob() : ZResource()
{

}

ZBlob::ZBlob(std::vector<uint8_t> nRawData, int nRawDataIndex, int size, std::string nName) : ZBlob()
{
	rawDataIndex = nRawDataIndex;
	rawData = vector<uint8_t>(nRawData.data() + rawDataIndex, nRawData.data() + rawDataIndex + size);
	name = nName;
}

ZBlob* ZBlob::ExtractFromXML(XMLElement* reader, vector<uint8_t> nRawData, int nRawDataIndex, string nRelPath)
{
	ZBlob* blob = new ZBlob();

	blob->rawDataIndex = nRawDataIndex;

	blob->ParseXML(reader);
	int size = strtol(reader->Attribute("Size"), NULL, 16);
	blob->rawData = vector<uint8_t>(nRawData.data() + blob->rawDataIndex, nRawData.data() + blob->rawDataIndex + size);
	blob->relativePath = nRelPath;

	return blob;
}

ZBlob* ZBlob::BuildFromXML(XMLElement* reader, string inFolder, bool readFile)
{
	ZBlob* blob = new ZBlob();

	blob->ParseXML(reader);

	if (readFile)
		blob->rawData = File::ReadAllBytes(inFolder + "/" + blob->name + ".bin");

	return blob;
}

ZBlob* ZBlob::FromFile(string filePath)
{
	int comp;
	ZBlob* blob = new ZBlob();
	blob->name = StringHelper::Split(Path::GetFileNameWithoutExtension(filePath), ".")[0];
	blob->rawData = File::ReadAllBytes(filePath);

	return blob;
}

string ZBlob::GetSourceOutputCode(std::string prefix)
{
	sourceOutput = "";
	//sourceOutput += StringHelper::Sprintf("u8 %s_%s[] = \n{\n", prefix.c_str(), name.c_str());

	for (int i = 0; i < rawData.size(); i += 1)
	{
		if (i % 16 == 0)
			sourceOutput += "\t";

		sourceOutput += StringHelper::Sprintf("0x%02X, ", rawData[i]);

		if (i % 16 == 15)
			sourceOutput += "\n";
	}

	//sourceOutput += "};\n";

	return sourceOutput;
}

string ZBlob::GetSourceOutputHeader(std::string prefix)
{
	return StringHelper::Sprintf("extern u8 %s[];\n", name.c_str());
}

void ZBlob::Save(string outFolder)
{
	//printf("NAME = %s\n", name.c_str());
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

ZResourceType ZBlob::GetResourceType()
{
	return ZResourceType::Blob;
}
