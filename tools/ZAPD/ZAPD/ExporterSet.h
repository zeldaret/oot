#pragma once

typedef void (*ExporterSetFunc)(ZFile*);
typedef bool (*ExporterSetFuncBool)(ZFileMode fileMode);
typedef void (*ExporterSetFuncVoid)(int argc, char* argv[], int& i);
typedef void (*ExporterSetFuncVoid2)(const std::string& buildMode, ZFileMode& fileMode);
typedef void (*ExporterSetFuncVoid3)();
typedef void (*ExporterSetResSave)(ZResource* res, BinaryWriter& writer);

class ExporterSet
{
public:
	~ExporterSet();

	std::map<ZResourceType, ZResourceExporter*> exporters;
	ExporterSetFuncVoid parseArgsFunc = nullptr;
	ExporterSetFuncVoid2 parseFileModeFunc = nullptr;
	ExporterSetFuncBool processFileModeFunc = nullptr;
	ExporterSetFunc beginFileFunc = nullptr;
	ExporterSetFunc endFileFunc = nullptr;
	ExporterSetFuncVoid3 beginXMLFunc = nullptr;
	ExporterSetFuncVoid3 endXMLFunc = nullptr;
	ExporterSetResSave resSaveFunc = nullptr;
};