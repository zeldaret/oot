#pragma once

#include <map>
#include <string>
#include <vector>

class OutputFormatter
{
private:
	const int tabSize;
	const int defaultIndent;
	const int lineLimit;

	int col;
	int nest;
	int nestIndent[8];
	int currentIndent;

	char word[128];
	char space[128];
	char* wordP;
	char* spaceP;

	std::string str;

	int Write(const char* buf, int count);

	static OutputFormatter* Instance;
	static int WriteStatic(const char* buf, int count);

public:
	OutputFormatter(int tabSize = 4, int defaultIndent = 4, int lineLimit = 120);

	int (*StaticWriter())(const char* buf, int count);

	std::string GetOutput();
};