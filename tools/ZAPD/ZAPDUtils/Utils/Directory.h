#pragma once

#include <iostream>
#include <string>
#include <vector>

#ifdef USE_BOOST_FS
#include <boost/filesystem.hpp>
namespace fs = boost::filesystem;
#elif __has_include(<filesystem>)
#include <filesystem>
namespace fs = std::filesystem;
#else
#include <experimental/filesystem>
namespace fs = std::experimental::filesystem;
#endif

#include "StringHelper.h"

class Directory
{
public:
#ifdef USE_BOOST_FS
	static std::string GetCurrentDirectory()
	{
		return fs::current_path().string();
	}
#else
	static std::string GetCurrentDirectory()
	{
		return fs::current_path().u8string();
	}
#endif

	static bool Exists(const fs::path& path)
	{
		return fs::exists(path);
	}

	static void CreateDirectory(const std::string& path)
	{
		std::string curPath;
		std::vector<std::string> split = StringHelper::Split(path, "/");

		for (std::string s : split)
		{
			curPath += s + "/";

			if (!Exists(curPath))
				fs::create_directory(curPath);
		}

		// fs::create_directory(path);
	}
};
