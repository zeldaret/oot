#pragma once

#include <string>
#include <vector>
#include <stdarg.h>
#include <string.h>

class StringHelper
{
public:
	static std::vector<std::string> Split(std::string s, std::string delimiter)
	{
		std::vector<std::string> result;

		size_t pos = 0;
		std::string token;

		while ((pos = s.find(delimiter)) != std::string::npos)
		{
			token = s.substr(0, pos);
			result.push_back(token);
			s.erase(0, pos + delimiter.length());
		}

		if (s.length() != 0)
			result.push_back(s);

		return result;
	}

	static std::string Strip(std::string s, std::string delimiter)
	{
		size_t pos = 0;
		std::string token;

		while ((pos = s.find(delimiter)) != std::string::npos)
		{
			token = s.substr(0, pos);
			s.erase(pos, pos + delimiter.length());
		}

		return s;
	}

	static bool StartsWith(std::string s, std::string input)
	{
		return s.rfind(input, 0) == 0;
	}

	static bool Contains(std::string s, std::string input)
	{
		return s.find(input) != std::string::npos;
	}

	static bool EndsWith(std::string s, std::string input)
	{
		int inputLen = strlen(input.c_str());
		return s.rfind(input) == (s.size() - inputLen);
	}

	static std::string Sprintf(const char* format, ...)
	{
		char buffer[32768];
		//char buffer[2048];
		std::string output = "";
		va_list va;

		va_start(va, format);
		vsprintf(buffer, format, va);
		va_end(va);

		output = buffer;
		return output;
	}
};