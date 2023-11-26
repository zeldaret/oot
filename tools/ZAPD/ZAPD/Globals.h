#pragma once

#include <map>
#include <string>
#include <vector>
#include "GameConfig.h"
#include "ZFile.h"
#include "ExporterSet.h"

class ZRoom;

enum class VerbosityLevel
{
	VERBOSITY_SILENT,
	VERBOSITY_INFO,
	VERBOSITY_DEBUG
};

class Globals
{
public:
	static Globals* Instance;

	bool genSourceFile;  // Used for extraction
	bool useExternalResources;
	bool testMode;  // Enables certain experimental features
	bool outputCrc = false;
	bool profile;  // Measure performance of certain operations
	bool useLegacyZDList;
	VerbosityLevel verbosity;  // ZAPD outputs additional information
	ZFileMode fileMode;
	fs::path baseRomPath, inputPath, outputPath, sourceOutputPath, cfgPath;
	TextureType texType;
	ZGame game;
	GameConfig cfg;
	bool verboseUnaccounted = false;
	bool gccCompat = false;
	bool forceStatic = false;
	bool forceUnaccountedStatic = false;

	std::vector<ZFile*> files;
	std::vector<ZFile*> externalFiles;
	std::vector<int32_t> segments;

	std::string currentExporter;
	static std::map<std::string, ExporterSet*>& GetExporterMap();
	static void AddExporter(std::string exporterName, ExporterSet* exporterSet);

	Globals();
	~Globals();

	void AddSegment(int32_t segment, ZFile* file);
	bool HasSegment(int32_t segment);

	ZResourceExporter* GetExporter(ZResourceType resType);
	ExporterSet* GetExporterSet();

	/**
	 * Search in every file (and the symbol map) for the `segAddress` passed as parameter.
	 * If the segment of `currentFile` is the same segment of `segAddress`, then that file will be
	 * used only, otherwise, the search will be performed in every other file.
	 * The name of that variable will be stored in the `declName` parameter.
	 * Returns `true` if the address is found. `false` otherwise,
	 * in which case `declName` will be set to the address formatted as a pointer.
	 */
	bool GetSegmentedPtrName(segptr_t segAddress, ZFile* currentFile,
	                         const std::string& expectedType, std::string& declName,
	                         bool warnIfNotFound = true);

	bool GetSegmentedArrayIndexedName(segptr_t segAddress, size_t elementSize, ZFile* currentFile,
	                                  const std::string& expectedType, std::string& declName,
	                                  bool warnIfNotFound = true);

	// TODO: consider moving to another place
	void WarnHardcodedPointer(segptr_t segAddress, ZFile* currentFile, ZResource* res,
	                          offset_t currentOffset);
};
