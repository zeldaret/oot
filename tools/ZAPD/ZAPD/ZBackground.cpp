#include "ZBackground.h"

#include "Globals.h"
#include "Utils/BitConverter.h"
#include "Utils/File.h"
#include "Utils/Path.h"
#include "Utils/StringHelper.h"
#include "ZFile.h"

REGISTER_ZFILENODE(Background, ZBackground);

#define JPEG_MARKER 0xFFD8FFE0
#define MARKER_DQT 0xFFDB
#define MARKER_EOI 0xFFD9

ZBackground::ZBackground(ZFile* nParent) : ZResource(nParent)
{
}

void ZBackground::ParseRawData()
{
	ZResource::ParseRawData();

	const auto& rawData = parent->GetRawData();
	size_t i = 0;
	while (true)
	{
		uint8_t val = rawData.at(rawDataIndex + i);
		data.push_back(val);

		if (BitConverter::ToUInt16BE(rawData, rawDataIndex + i) == MARKER_EOI)
		{
			data.push_back(rawData.at(rawDataIndex + i + 1));
			break;
		}

		i++;
	}
}

void ZBackground::ParseBinaryFile(const std::string& inFolder, bool appendOutName)
{
	fs::path filepath(inFolder);

	if (appendOutName)
		filepath = filepath / (outName + "." + GetExternalExtension());

	data = File::ReadAllBytes(filepath.string());

	// Add padding.
	data.insert(data.end(), GetRawDataSize() - data.size(), 0x00);
	CheckValidJpeg(filepath.generic_string());
}

void ZBackground::CheckValidJpeg(const std::string& filepath)
{
	std::string filename = outName;
	if (filepath != "")
	{
		filename = filepath;
	}

	uint32_t jpegMarker = BitConverter::ToUInt32BE(data, 0);
	if (jpegMarker != JPEG_MARKER)
	{
		fprintf(stderr,
		        "ZBackground::CheckValidJpeg: Warning.\n"
		        "\t Missing jpeg marker at the beginning of file: '%s'.\n"
		        "\t The game will skip this jpeg.\n",
		        filename.c_str());
	}
	if (data.at(6) != 'J' || data.at(7) != 'F' || data.at(8) != 'I' || data.at(9) != 'F' ||
	    data.at(10) != '\0')
	{
		std::string jfifIdentifier(data.begin() + 6, data.begin() + 6 + 5);
		fprintf(stderr,
		        "ZBackground::CheckValidJpeg: Warning.\n"
		        "\t Missing 'JFIF' identifier. File: '%s'.\n"
		        "\t This image may be corrupted or not be a jpeg iamge.\n"
		        "\t The identifier found was '%s'.\n",
		        filename.c_str(), jfifIdentifier.c_str());
	}
	uint8_t majorVersion = data.at(11);
	uint8_t minorVersion = data.at(12);
	if (majorVersion != 0x01 || minorVersion != 0x01)
	{
		fprintf(stderr,
		        "ZBackground::CheckValidJpeg: Warning.\n"
		        "\t Wrong JFIF version '%i.%02i'. File: '%s'.\n"
		        "\t The expected version is '1.01'. The game may not be able to decode this image "
		        "properly.\n",
		        majorVersion, minorVersion, filename.c_str());
	}
	if (BitConverter::ToUInt16BE(data, 20) != MARKER_DQT)
	{
		// This may happen when creating a custom image with Exif, XMP, thumbnail, progressive, etc.
		// enabled.
		fprintf(stderr,
		        "ZBackground::CheckValidJpeg: Warning.\n"
		        "\t There seems to be extra data before the image data in file: '%s'.\n"
		        "\t The game may not be able to decode this image properly.\n",
		        filename.c_str());
	}
	if (data.size() > GetRawDataSize())
	{
		fprintf(stderr,
		        "ZBackground::CheckValidJpeg: Warning.\n"
		        "\t The image is bigger than the screen buffer. File: '%s'.\n"
		        "\t Image size: %zu bytes.\n"
		        "\t Screen buffer size: %zu bytes.\n",
		        filename.c_str(), data.size(), GetRawDataSize());
	}
}

size_t ZBackground::GetRawDataSize() const
{
	// Jpgs use the whole sceen buffer, which is a u16 matrix.
	return Globals::Instance->cfg.bgScreenHeight * Globals::Instance->cfg.bgScreenWidth * 2;
}

Declaration* ZBackground::DeclareVar(const std::string& prefix,
                                     [[maybe_unused]] const std::string& bodyStr)
{
	std::string auxName = name;
	std::string auxOutName = outName;

	if (auxName == "")
		auxName = GetDefaultName(prefix);

	if (auxOutName == "")
		auxOutName = GetDefaultName(prefix);

	auto filepath = Globals::Instance->outputPath / fs::path(auxOutName).stem();

	std::string incStr =
		StringHelper::Sprintf("%s.%s.inc.c", filepath.c_str(), GetExternalExtension().c_str());

	Declaration* decl = parent->AddDeclarationIncludeArray(rawDataIndex, incStr, GetRawDataSize(),
	                                                       GetSourceTypeName(), auxName, 0);
	decl->arrayItemCntStr = "SCREEN_WIDTH * SCREEN_HEIGHT / 4";
	decl->staticConf = staticConf;
	return decl;
}

bool ZBackground::IsExternalResource() const
{
	return true;
}

std::string ZBackground::GetExternalExtension() const
{
	return "jpg";
}

void ZBackground::Save(const fs::path& outFolder)
{
	fs::path filepath = outFolder / (outName + "." + GetExternalExtension());
	File::WriteAllBytes(filepath.string(), data);
}

std::string ZBackground::GetBodySourceCode() const
{
	std::string bodyStr = "    ";

	for (size_t i = 0; i < data.size() / 8; ++i)
	{
		bodyStr += StringHelper::Sprintf("0x%016llX, ", BitConverter::ToUInt64BE(data, i * 8));

		if (i % 8 == 7)
			bodyStr += "\n    ";
	}

	bodyStr += "\n";

	return bodyStr;
}

std::string ZBackground::GetDefaultName(const std::string& prefix) const
{
	return StringHelper::Sprintf("%sBackground_%06X", prefix.c_str(), rawDataIndex);
}

std::string ZBackground::GetSourceTypeName() const
{
	return "u64";
}

ZResourceType ZBackground::GetResourceType() const
{
	return ZResourceType::Background;
}

DeclarationAlignment ZBackground::GetDeclarationAlignment() const
{
	return DeclarationAlignment::Align8;
}
