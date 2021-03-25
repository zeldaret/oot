#include "OutputFormatter.h"

int OutputFormatter::write(const char* buf, int count)
{
	for (int i = 0; i < count; i++)
	{
		char c = buf[i];

		if (c == '\n')
		{
			col = 0;
			current_indent = nest_indent[nest];
		}
		else if (c == '\t')
		{
			int n = tab_size - (col % tab_size);
			for (int j = 0; j < n - 1; j++)
				*space_p++ = ' ';
			c = ' ';
			col += n;
		}
		else
		{
			col++;
		}

		if (c == '(')
		{
			nest++;
			nest_indent[nest] = col;
			current_indent = col;
		}
		else if (c == ')')
		{
			nest--;
		}

		if (c == ' ' || c == '\t' || c == '\n')
		{
			str.append(word, word_p - word);
			word_p = word;

			*space_p++ = c;
		}
		else
		{
			if (col > line_limit)
			{
				str.append(1, '\n');
				str.append(current_indent, ' ');
				col = current_indent + 1 + (word_p - word);
			}
			else
			{
				str.append(space, space_p - space);
			}
			space_p = space;

			*word_p++ = c;
		}
	}

	return count;
}

OutputFormatter* OutputFormatter::static_instance;

int OutputFormatter::write_static(const char* buf, int count)
{
	return static_instance->write(buf, count);
}

int (*OutputFormatter::static_writer())(const char* buf, int count)
{
	static_instance = this;
	return &write_static;
}

OutputFormatter::OutputFormatter(int tab_size, int default_indent, int line_limit)
	: tab_size{tab_size}, default_indent{default_indent}, line_limit{line_limit}, col{0}, nest{0},
	  nest_indent{default_indent}, current_indent{default_indent}, word_p{word}, space_p{space}
{
}

std::string OutputFormatter::get_output()
{
	str.append(space, space_p - space);
	space_p = space;

	str.append(word, word_p - word);
	word_p = word;

	return std::move(str);
}
