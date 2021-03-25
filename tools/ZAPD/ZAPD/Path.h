#pragma once

#include <iostream>
#include <string>
#include "StringHelper.h"

#if __has_include(<filesystem>)
#include <filesystem>
namespace fs = std::filesystem;
#else
#include <experimental/filesystem>
namespace fs = std::experimental::filesystem;
#endif

class Path
{
public:
	static std::string GetFileNameWithoutExtension(const std::string& input)
	{
		std::vector<std::string> split = StringHelper::Split(input, "/");
		return split[split.size() - 1].substr(0, input.find_last_of("."));
	};

	static std::string GetFileNameExtension(const std::string& input)
	{
		return input.substr(input.find_last_of("."), input.length());
	};

	static std::string GetPath(const std::string& input)
	{
		std::vector<std::string> split = StringHelper::Split(input, "/");
		std::string output = "";

		for (std::string str : split)
		{
			if (str.find_last_of(".") == std::string::npos)
				output += str + "/";
		}

		return output;
	};

	static std::string GetDirectoryName(const std::string& path)
	{
		return fs::path(path).parent_path().u8string();
	};
};
