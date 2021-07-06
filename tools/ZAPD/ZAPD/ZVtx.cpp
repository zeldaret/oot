#include "ZVtx.h"
#include "BitConverter.h"
#include "StringHelper.h"
#include "ZFile.h"

REGISTER_ZFILENODE(Vtx, ZVtx);

ZVtx::ZVtx(ZFile* nParent) : ZResource(nParent)
{
	x = 0;
	y = 0;
	z = 0;
	flag = 0;
	s = 0;
	t = 0;
	r = 0;
	g = 0;
	b = 0;
	a = 0;
}

void ZVtx::ParseRawData()
{
	x = BitConverter::ToInt16BE(rawData, rawDataIndex + 0);
	y = BitConverter::ToInt16BE(rawData, rawDataIndex + 2);
	z = BitConverter::ToInt16BE(rawData, rawDataIndex + 4);
	flag = BitConverter::ToInt16BE(rawData, rawDataIndex + 6);
	s = BitConverter::ToInt16BE(rawData, rawDataIndex + 8);
	t = BitConverter::ToInt16BE(rawData, rawDataIndex + 10);
	r = rawData[rawDataIndex + 12];
	g = rawData[rawDataIndex + 13];
	b = rawData[rawDataIndex + 14];
	a = rawData[rawDataIndex + 15];
}

std::string ZVtx::GetBodySourceCode() const
{
	return StringHelper::Sprintf("VTX(%i, %i, %i, %i, %i, %i, %i, %i, %i)", x, y, z, s, t, r, g, b,
	                             a);
}

std::string ZVtx::GetSourceOutputCode(const std::string& prefix)
{
	std::string output = GetBodySourceCode();

	if (parent != nullptr)
	{
		Declaration* decl =
			parent->AddDeclaration(rawDataIndex, DeclarationAlignment::Align16, GetRawDataSize(),
		                           GetSourceTypeName(), name, output);
		decl->isExternal = true;
	}

	return "";
}

size_t ZVtx::GetRawDataSize() const
{
	return 16;
}

bool ZVtx::DoesSupportArray() const
{
	return true;
}

ZResourceType ZVtx::GetResourceType() const
{
	return ZResourceType::Vertex;
}

bool ZVtx::IsExternalResource() const
{
	return true;
}

std::string ZVtx::GetSourceTypeName() const
{
	return "Vtx";
}

std::string ZVtx::GetExternalExtension() const
{
	return "vtx";
}
