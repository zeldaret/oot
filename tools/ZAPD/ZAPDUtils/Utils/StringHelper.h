#pragma once

#include <algorithm>
#include <cstdarg>
#include <cstring>
#include <numeric>
#include <string>
#include <vector>

class StringHelper
{
public:
	static std::vector<std::string> Split(std::string s, const std::string& delimiter)
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

	static std::string Strip(std::string s, const std::string& delimiter)
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

	static std::string Replace(std::string str, const std::string& from, const std::string& to)
	{
		size_t start_pos = str.find(from);

		if (start_pos == std::string::npos)
			return str;

		str.replace(start_pos, from.length(), to);
		return str;
	}

	static bool StartsWith(const std::string& s, const std::string& input)
	{
		return s.rfind(input, 0) == 0;
	}

	static bool Contains(const std::string& s, const std::string& input)
	{
		return s.find(input) != std::string::npos;
	}

	static bool EndsWith(const std::string& s, const std::string& input)
	{
		size_t inputLen = strlen(input.c_str());
		return s.rfind(input) == (s.size() - inputLen);
	}

	static std::string Sprintf(const char* format, ...)
	{
		char buffer[32768];
		// char buffer[2048];
		std::string output;
		va_list va;

		va_start(va, format);
		vsprintf(buffer, format, va);
		va_end(va);

		output = buffer;
		return output;
	}

	static std::string Implode(std::vector<std::string>& elements, const char* const separator)
	{
		return std::accumulate(std::begin(elements), std::end(elements), std::string(),
		                       [separator](std::string& ss, std::string& s) {
								   return ss.empty() ? s : ss + separator + s;
							   });
	}

	static int64_t StrToL(const std::string& str, int32_t base = 10)
	{
		return std::strtoull(str.c_str(), nullptr, base);
	}

	static std::string BoolStr(bool b) { return b ? "true" : "false"; }

	static bool HasOnlyDigits(const std::string& str)
	{
		return std::all_of(str.begin(), str.end(), ::isdigit);
	}

	static bool IsValidHex(std::string_view str)
	{
		if (str.length() < 3)
		{
			return false;
		}

		if (str[0] == '0' && (str[1] == 'x' || str[1] == 'X'))
		{
			return std::all_of(str.begin() + 2, str.end(), ::isxdigit);
		}

		return false;
	}

	static bool IsValidOffset(std::string_view str)
	{
		if (str.length() == 1)
		{
			// 0 is a valid offset
			return isdigit(str[0]);
		}

		return IsValidHex(str);
	}

	static bool IsValidHex(const std::string& str)
	{
		return IsValidHex(std::string_view(str.c_str()));
	}

	static std::string ToUpper(const std::string& str)
	{
		std::string buff = str;
		std::transform(buff.begin(), buff.end(), buff.begin(), ::toupper);
		return buff;
	}

	static bool IEquals(const std::string& a, const std::string& b)
	{
		return std::equal(a.begin(), a.end(), b.begin(), b.end(),
		                  [](char a, char b) { return tolower(a) == tolower(b); });
	}

	/**
	 * Converts a std::string formatted in camelCase into one in SCREAMING_SNAKE_CASE. Since this
	 * will mostly be used on symbols that start with either 'g' or 's', an option is included to
	 * skip these.
	 */
	static std::string camelCaseTo_SCREAMING_SNAKE_CASE(const std::string& in, bool skipSP)
	{
		std::string out = "";
		const char* ptr = in.c_str();
		char ch = *ptr;

		// Switch checks for 'g'/'s'/'\0', looks at next character if skipSP enabled and string is
		// nonempty.
		switch (ch)
		{
		case 'g':
		case 's':
			if (skipSP)
			{
				// Print it anyway if the next character is lowercase, e.g. "gameplay_keep_...".
				if (!isupper(ptr[1]))
				{
					out.push_back(toupper(ch));
				}
				if ((ch = *++ptr) == '\0')
				{
				case '\0':
					// This is reached either by the if or the case label, avoiding duplication.
					return out;
				}
			}
			[[fallthrough]];
		default:
			if (islower(ch))
			{
				out.push_back(toupper(ch));
			}
			else
			{
				out.push_back(ch);
			}
			break;
		}

		while ((ch = *++ptr) != '\0')
		{
			if (islower(ch))
			{
				out.push_back(toupper(ch));
			}
			else
			{
				if (isupper(ch) && !(isupper(ptr[1]) && isupper(ptr[-1])))
				{
					out.push_back('_');
				}
				out.push_back(ch);
			}
		}
		return out;
	}
};
