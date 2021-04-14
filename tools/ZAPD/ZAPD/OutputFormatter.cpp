#include "OutputFormatter.h"

int OutputFormatter::Write(const char* buf, int count)
{
	for (int i = 0; i < count; i++)
	{
		char c = buf[i];

		if (c == '\n')
		{
			col = 0;
			currentIndent = nestIndent[nest];
		}
		else if (c == '\t')
		{
			int n = tabSize - (col % tabSize);
			for (int j = 0; j < n - 1; j++)
				*spaceP++ = ' ';
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
			nestIndent[nest] = col;
			currentIndent = col;
		}
		else if (c == ')')
		{
			nest--;
		}

		if (c == ' ' || c == '\t' || c == '\n')
		{
			str.append(word, wordP - word);
			wordP = word;

			*spaceP++ = c;
		}
		else
		{
			if (col > lineLimit)
			{
				str.append(1, '\n');
				str.append(currentIndent, ' ');
				col = currentIndent + 1 + (wordP - word);
			}
			else
			{
				str.append(space, spaceP - space);
			}
			spaceP = space;

			*wordP++ = c;
		}
	}

	return count;
}

OutputFormatter* OutputFormatter::Instance;

int OutputFormatter::WriteStatic(const char* buf, int count)
{
	return Instance->Write(buf, count);
}

int (*OutputFormatter::StaticWriter())(const char* buf, int count)
{
	Instance = this;
	return &WriteStatic;
}

OutputFormatter::OutputFormatter(int tabSize, int defaultIndent, int lineLimit)
	: tabSize{tabSize}, defaultIndent{defaultIndent}, lineLimit{lineLimit}, col{0}, nest{0},
	  nestIndent{defaultIndent}, currentIndent{defaultIndent}, wordP{word}, spaceP{space}
{
}

std::string OutputFormatter::GetOutput()
{
	str.append(space, spaceP - space);
	spaceP = space;

	str.append(word, wordP - word);
	wordP = word;

	return std::move(str);
}
