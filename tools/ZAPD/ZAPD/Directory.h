#pragma once

#include <string>
#include <iostream>

#if defined(_MSC_VER) || defined(__clang__)
#include <filesystem>
namespace fs = std::filesystem;
#else
#include <experimental/filesystem>
namespace fs = std::experimental::filesystem;
#endif

class Directory
{
public:
	static std::string GetCurrentDirectory()
	{
		return fs::current_path().u8string();
	}

	static bool Exists(std::string path)
	{
		return fs::exists(fs::path(path));
	}

	static void CreateDirectory(std::string path)
	{
		fs::create_directory(path);
	}
};