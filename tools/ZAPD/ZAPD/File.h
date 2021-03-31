#pragma once

#include <fstream>
#include <iostream>
#include <stdio.h>
#include <string.h>
#include <string>
#include <vector>
#include "StringHelper.h"

class File
{
public:
	static bool Exists(const std::string& filePath)
	{
		std::ifstream file(filePath, std::ios::in | std::ios::binary | std::ios::ate);
		return file.good();
	}

	static std::vector<uint8_t> ReadAllBytes(const std::string& filePath)
	{
		std::ifstream file(filePath, std::ios::in | std::ios::binary | std::ios::ate);
		int fileSize = (int)file.tellg();
		file.seekg(0);
		char* data = new char[fileSize];
		file.read(data, fileSize);
		std::vector<uint8_t> result = std::vector<uint8_t>(data, data + fileSize);
		delete[] data;

		return result;
	};

	static std::string ReadAllText(const std::string& filePath)
	{
		std::ifstream file(filePath, std::ios::in | std::ios::binary | std::ios::ate);
		int fileSize = (int)file.tellg();
		file.seekg(0);
		char* data = new char[fileSize + 1];
		memset(data, 0, fileSize + 1);
		file.read(data, fileSize);
		std::string str = std::string((const char*)data);
		delete[] data;

		return str;
	};

	static std::vector<std::string> ReadAllLines(const std::string& filePath)
	{
		std::string text = ReadAllText(filePath);
		std::vector<std::string> lines = StringHelper::Split(text, "\n");

		return lines;
	};

	static void WriteAllBytes(const std::string& filePath, const std::vector<uint8_t>& data)
	{
		std::ofstream file(filePath, std::ios::binary);
		file.write((char*)data.data(), data.size());
	};

	static void WriteAllText(const std::string& filePath, const std::string& text)
	{
		std::ofstream file(filePath, std::ios::out);
		file.write(text.c_str(), text.size());
	}
};
