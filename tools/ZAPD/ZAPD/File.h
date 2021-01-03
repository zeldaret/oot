#pragma once

#include <string>
#include <fstream>
#include <vector>
#include <iostream>
#include <stdio.h>
#include <string.h>
#include "StringHelper.h"

class File
{
public:
	static bool Exists(std::string filePath)
	{
		std::ifstream file(filePath, std::ios::in | std::ios::binary | std::ios::ate);
		return file.good();
	}
	
	static std::vector<uint8_t> ReadAllBytes(std::string filePath)
	{
		std::ifstream file(filePath, std::ios::in | std::ios::binary | std::ios::ate);
		int fileSize = (int)file.tellg();
		file.seekg(0);
		char* data = new char[fileSize];
		file.read(data, fileSize);
		return std::vector<uint8_t>(data, data + fileSize);
	};

	static std::string ReadAllText(std::string filePath)
	{
		std::ifstream file(filePath, std::ios::in | std::ios::binary | std::ios::ate);
		int fileSize = (int)file.tellg();
		file.seekg(0);
		char* data = new char[fileSize+1];
		memset(data, 0, fileSize + 1);
		file.read(data, fileSize);
		return std::string((const char*)data);
	};

	static std::vector<std::string> ReadAllLines(std::string filePath)
	{
		std::string text = ReadAllText(filePath);
		std::vector<std::string> lines = StringHelper::Split(text, "\n");

		return lines;
	};

	static void WriteAllBytes(std::string filePath, std::vector<uint8_t> data)
	{
		std::ofstream file(filePath, std::ios::binary);
		file.write((char*)data.data(), data.size());
	};

	static void WriteAllText(std::string filePath, std::string text)
	{
		std::ofstream file(filePath, std::ios::out);
		file.write(text.c_str(), text.size());
	}
};