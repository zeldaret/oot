#pragma once

#include <vector>
#include <map>
#include <string>

class OutputFormatter
{
private:
	const int tab_size;
	const int default_indent;
	const int line_limit;

	int col;
	int nest;
	int nest_indent[8];
	int current_indent;

	char word[128];
	char space[128];
	char *word_p;
	char *space_p;

	std::string str;

	int write(const char *buf, int count);

	static OutputFormatter *static_instance;
	static int write_static(const char *buf, int count);

public:
	OutputFormatter(int tab_size = 4, int default_indent = 4,
			int line_limit = 120);

	int (*static_writer())(const char *buf, int count);

	std::string get_output();
};