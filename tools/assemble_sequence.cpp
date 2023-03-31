#include <filesystem>
#include <unordered_set>
#include <exception>
#include <iostream>
#include <sstream>
#include <string>
#include <string_view>
#include <fstream>
#include <vector>
#include <map>
#include <cassert>

using namespace std;

bool tryLoadFile(string_view filename, ifstream* outStream);

// TODO: validate this? probably needs more explicit section annotations in the seq script
enum class SectionType {
	Meta,
	Seq,
	Chan,
	Layer,
	Unused,
	Table,
	Array,
	Filter,
	Envelope,
	Buffer
};

static const map<SectionType, string> SectionName {
	{ SectionType::Meta, "metadata" },
	{ SectionType::Seq, "sequence" },
	{ SectionType::Chan, "channel" },
	{ SectionType::Layer, "layer" },
	{ SectionType::Unused, "unused" },
	{ SectionType::Table, "table" },
	{ SectionType::Array, "array" },
	{ SectionType::Filter, "filter" },
	{ SectionType::Envelope, "envelope" },
	{ SectionType::Buffer, "buffer" },
};

enum class Arg {
	var,
	varlong,
	s8,
	u8,
	u8OrVar,
	s16,
	u16,
	u16OrAddr,
	addr,
	reladdr8,
	reladdr16,
	bits3,
	bits4,
	bits6,
	optu8
};

struct Command {
	initializer_list<SectionType> validSections;
	uint8_t opcode;
	const char* mnemonic;
	initializer_list<Arg> args;
};

const Command commands[] = {
	{ { SectionType::Seq, SectionType::Chan, SectionType::Layer }, 0xFF, "end", {} },
	{ { SectionType::Seq, SectionType::Chan }, 0xFE, "delay1", {} },
	{ { SectionType::Seq, SectionType::Chan }, 0xFD, "delay", { Arg::var } },
	{ { SectionType::Seq, SectionType::Chan, SectionType::Layer }, 0xFC, "call", { Arg::addr } },
	{ { SectionType::Seq, SectionType::Chan, SectionType::Layer }, 0xFB, "jump", { Arg::addr } },
	{ { SectionType::Seq, SectionType::Chan, SectionType::Layer }, 0xFA, "beqz", { Arg::addr } },
	{ { SectionType::Seq, SectionType::Chan, SectionType::Layer }, 0xF9, "bltz", { Arg::addr } },
	{ { SectionType::Seq, SectionType::Chan, SectionType::Layer }, 0xF8, "loop", { Arg::u8 } },
	{ { SectionType::Seq, SectionType::Chan, SectionType::Layer }, 0xF7, "loopend", {} },
	{ { SectionType::Seq, SectionType::Chan, SectionType::Layer }, 0xF6, "break", {} },
	{ { SectionType::Seq, SectionType::Chan, SectionType::Layer }, 0xF5, "bgez", { Arg::addr } },
	{ { SectionType::Seq, SectionType::Chan, SectionType::Layer }, 0xF4, "rjump", { Arg::reladdr8 } },
	{ { SectionType::Seq, SectionType::Chan, SectionType::Layer }, 0xF3, "rbeqz", { Arg::reladdr8 } },
	{ { SectionType::Seq, SectionType::Chan, SectionType::Layer }, 0xF2, "rbltz", { Arg::reladdr8 } },

	{ { SectionType::Seq }, 0xF1, "allocnotelist", { Arg::u8 } },
	{ { SectionType::Seq }, 0xF0, "freenotelist", {} },
	{ { SectionType::Seq }, 0xDF, "transpose", { Arg::s8 } },
	{ { SectionType::Seq }, 0xDE, "rtranspose", { Arg::s8 } },
	{ { SectionType::Seq }, 0xDD, "tempo", { Arg::u8 } },
	{ { SectionType::Seq }, 0xDC, "tempochg", { Arg::s8 } },
	{ { SectionType::Seq }, 0xDB, "vol", { Arg::u8 } },
	{ { SectionType::Seq }, 0xDA, "volmode", { Arg::s8 } },
	{ { SectionType::Seq }, 0xD7, "initchan", { Arg::u16 } },
	{ { SectionType::Seq }, 0xD6, "freechan", { Arg::u16 } },
	{ { SectionType::Seq }, 0xD5, "mutescale", { Arg::s8 } },
	{ { SectionType::Seq }, 0xD4, "mute", {} },
	{ { SectionType::Seq }, 0xD3, "mutebhv", { Arg::u8 } },
	{ { SectionType::Seq }, 0xD2, "ldshortvelarr", { Arg::addr } },
	{ { SectionType::Seq }, 0xD1, "ldshortgatearr", { Arg::addr } },
	{ { SectionType::Seq }, 0xD0, "notealloc", { Arg::u8 } },
	{ { SectionType::Seq }, 0xCE, "rand", { Arg::u8 } },
	{ { SectionType::Seq }, 0xCD, "dyncall", { Arg::addr } },
	{ { SectionType::Seq }, 0xCC, "ldi", { Arg::u8 } },
	{ { SectionType::Seq }, 0xC9, "and", { Arg::u8 } },
	{ { SectionType::Seq }, 0xC8, "sub", { Arg::u8 } },
	{ { SectionType::Seq }, 0xC7, "stseq", { Arg::u8, Arg::addr } },
	{ { SectionType::Seq }, 0xC6, "stop", {} },
	{ { SectionType::Seq }, 0xC5, "scriptctr", { Arg::u16 } },
	{ { SectionType::Seq }, 0xC4, "runseq", { Arg::u8, Arg::u8 } },

	{ { SectionType::Seq }, 0x00, "testchan", { Arg::bits4 } },
	{ { SectionType::Seq }, 0x40, "stopchan", { Arg::bits4 } },
	{ { SectionType::Seq }, 0x50, "subio", { Arg::bits4 } },
	{ { SectionType::Seq }, 0x60, "ldres", { Arg::bits4, Arg::u8, Arg::u8 } },
	{ { SectionType::Seq }, 0x70, "stio", { Arg::bits4 } },
	{ { SectionType::Seq }, 0x80, "ldio", { Arg::bits4 } },
	{ { SectionType::Seq }, 0x90, "ldchan", { Arg::bits4, Arg::addr } },
	{ { SectionType::Seq }, 0xA0, "rldchan", { Arg::bits4, Arg::reladdr16 } },
	{ { SectionType::Seq }, 0xB0, "ldseq", { Arg::bits4, Arg::u8, Arg::addr } },

	{ { SectionType::Chan }, 0xF1, "allocnotelist", { Arg::u8 } },
	{ { SectionType::Chan }, 0xF0, "freenotelist", {} },
	{ { SectionType::Chan }, 0xEE, "bendfine", { Arg::s8 } },
	{ { SectionType::Chan }, 0xED, "gain", { Arg::u8 } },
	{ { SectionType::Chan }, 0xEB, "fontinstr", {} },
	{ { SectionType::Chan }, 0xEA, "stop", {} },
	{ { SectionType::Chan }, 0xE9, "notepri", { Arg::u8 } },
	{ { SectionType::Chan }, 0xE8, "params", { Arg::u8, Arg::u8, Arg::u8, Arg::s8, Arg::s8, Arg::u8, Arg::u8, Arg::u8 } },  // TODO: Params for E8 to E6
	{ { SectionType::Chan }, 0xE7, "ldparams", { Arg::addr } },
	{ { SectionType::Chan }, 0xE6, "samplebook", { Arg::addr } },
	{ { SectionType::Chan }, 0xE5, "rvrbidx", { Arg::u8 } },
	{ { SectionType::Chan }, 0xE4, "dyncall", {} },
	{ { SectionType::Chan }, 0xE3, "vibdelay", { Arg::u8 } },
	{ { SectionType::Chan }, 0xE2, "vibdepthgrad", { Arg::u8, Arg::u8, Arg::u8 } },
	{ { SectionType::Chan }, 0xE1, "vibfreqgrad", { Arg::u8, Arg::u8, Arg::u8 } },
	{ { SectionType::Chan }, 0xE0, "volexp", { Arg::u8 } },
	{ { SectionType::Chan }, 0xDF, "vol", { Arg::u8 } },
	{ { SectionType::Chan }, 0xDE, "freqscale", { Arg::u16 } },
	{ { SectionType::Chan }, 0xDD, "pan", { Arg::u8 } },
	{ { SectionType::Chan }, 0xDC, "panweight", { Arg::u8 } },
	{ { SectionType::Chan }, 0xDB, "transpose", { Arg::s8 } },
	{ { SectionType::Chan }, 0xDA, "envelope", { Arg::addr } },
	{ { SectionType::Chan }, 0xD9, "releaserate", { Arg::u8 } },
	{ { SectionType::Chan }, 0xD8, "vibdepth", { Arg::u8 } },
	{ { SectionType::Chan }, 0xD7, "vibfreq", { Arg::u8 } },
//	{ { SectionType::Chan }, 0xD6, "chan_setupdatesperframe_unimplemented", { Arg::u8 } },
	{ { SectionType::Chan }, 0xD4, "reverb", { Arg::u8 } },
	{ { SectionType::Chan }, 0xD3, "bend", { Arg::s8 } },
	{ { SectionType::Chan }, 0xD2, "sustain", { Arg::u8 } },
	{ { SectionType::Chan }, 0xD1, "notealloc", { Arg::u8 } },
	{ { SectionType::Chan }, 0xD0, "effects", { Arg::u8 } },
	{ { SectionType::Chan }, 0xCF, "stptrtoseq", { Arg::addr } },
	{ { SectionType::Chan }, 0xCE, "ldptr", { Arg::u16OrAddr } },
	{ { SectionType::Chan }, 0xCD, "stopchan", { Arg::u8 } },
	{ { SectionType::Chan }, 0xCC, "ldi", { Arg::u8 } },
	{ { SectionType::Chan }, 0xCB, "ldseq", { Arg::addr } },
	{ { SectionType::Chan }, 0xCA, "mutebhv", { Arg::u8 } },
	{ { SectionType::Chan }, 0xC9, "and", { Arg::u8 } },
	{ { SectionType::Chan }, 0xC8, "sub", { Arg::u8 } },
	{ { SectionType::Chan }, 0xC7, "stseq", { Arg::u8, Arg::addr } },
	{ { SectionType::Chan }, 0xC6, "font", { Arg::u8 } },
	{ { SectionType::Chan }, 0xC5, "dyntbllookup", {} },
	{ { SectionType::Chan }, 0xC4, "noshort", {} },
	{ { SectionType::Chan }, 0xC3, "short", {} },
	{ { SectionType::Chan }, 0xC2, "dyntbl", { Arg::addr } },
	{ { SectionType::Chan }, 0xC1, "instr", { Arg::u8 } },
	{ { SectionType::Chan }, 0xBD, "randptr", { Arg::u16, Arg::u16 } },
	{ { SectionType::Chan }, 0xBC, "ptradd", { Arg::u16OrAddr } },
	{ { SectionType::Chan }, 0xBB, "unkbb", { Arg::u8, Arg::u16 } },
	{ { SectionType::Chan }, 0xBA, "randgate", { Arg::u8 } },
	{ { SectionType::Chan }, 0xB9, "randvel", { Arg::u8 } },
	{ { SectionType::Chan }, 0xB8, "rand", { Arg::u8 } },
	{ { SectionType::Chan }, 0xB7, "randtoptr", { Arg::u16OrAddr } },
	{ { SectionType::Chan }, 0xB6, "dyntblv", {} },
	{ { SectionType::Chan }, 0xB5, "dyntbltoptr", {} },
	{ { SectionType::Chan }, 0xB4, "ptrtodyntbl", {} },
	{ { SectionType::Chan }, 0xB3, "filter", { Arg::u8 } },
	{ { SectionType::Chan }, 0xB2, "ldseqtoptr", { Arg::addr } },
	{ { SectionType::Chan }, 0xB1, "freefilter", {} },
	{ { SectionType::Chan }, 0xB0, "ldfilter", { Arg::addr } },

	{ { SectionType::Chan }, 0x00, "cdelay", { Arg::bits4 } },
	{ { SectionType::Chan }, 0x10, "sample", { Arg::bits3, Arg::addr } },
	{ { SectionType::Chan }, 0x18, "sampleptr", { Arg::bits3, Arg::addr } },
	{ { SectionType::Chan }, 0x20, "ldchan", { Arg::bits4, Arg::addr } },
	{ { SectionType::Chan }, 0x30, "stcio", { Arg::bits4, Arg::u8 } },
	{ { SectionType::Chan }, 0x40, "ldcio", { Arg::bits4, Arg::u8 } },
	{ { SectionType::Chan }, 0x50, "subio", { Arg::bits4 } },
	{ { SectionType::Chan }, 0x60, "ldio", { Arg::bits4 } },
	{ { SectionType::Chan }, 0x70, "stio", { Arg::bits3 } },
	{ { SectionType::Chan }, 0x78, "rldlayer", { Arg::bits3, Arg::reladdr16 } },
	{ { SectionType::Chan }, 0x80, "testlayer", { Arg::bits3 } },
	{ { SectionType::Chan }, 0x88, "ldlayer", { Arg::bits3, Arg::addr } },
	{ { SectionType::Chan }, 0x90, "dellayer", { Arg::bits3 } },
	{ { SectionType::Chan }, 0x98, "dynldlayer", { Arg::bits3 } },

	{ { SectionType::Layer }, 0xC0, "ldelay", { Arg::var } },
	{ { SectionType::Layer }, 0xC0, "lldelay", { Arg::varlong } }, // Workaround for weirdly encoded numbers
	{ { SectionType::Layer }, 0xC1, "shortvel", { Arg::u8 } },
	{ { SectionType::Layer }, 0xC2, "transpose", { Arg::s8 } },
	{ { SectionType::Layer }, 0xC3, "shortdelay", { Arg::var } },
	{ { SectionType::Layer }, 0xC4, "legato", {} },
	{ { SectionType::Layer }, 0xC5, "nolegato", {} },
	{ { SectionType::Layer }, 0xC6, "instr", { Arg::u8 } },
	{ { SectionType::Layer }, 0xC7, "portamento", { Arg::u8, Arg::u8, Arg::u8OrVar } },
	{ { SectionType::Layer }, 0xC7, "portamentofix", { Arg::u8, Arg::u8, Arg::u8 } },
	{ { SectionType::Layer }, 0xC8, "noportamento", {} },
	{ { SectionType::Layer }, 0xC9, "shortgate", { Arg::u8 } },
	{ { SectionType::Layer }, 0xCA, "notepan", { Arg::u8 } },
	{ { SectionType::Layer }, 0xCB, "envelope", { Arg::addr, Arg::u8 } },
	{ { SectionType::Layer }, 0xCC, "nodrumpan", {} },
	{ { SectionType::Layer }, 0xCD, "stereo", { Arg::u8 } },
	{ { SectionType::Layer }, 0xCE, "bendfine", { Arg::s8 } },
	{ { SectionType::Layer }, 0xCF, "releaserate", { Arg::u8 } },

	{ { SectionType::Layer }, 0xD0, "ldshortvel", { Arg::bits4 } },
	{ { SectionType::Layer }, 0xE0, "ldshortgate", { Arg::bits4 } },

	{ { SectionType::Layer }, 0x00, "notedvg", { Arg::bits6, Arg::var, Arg::u8, Arg::u8 } },
	{ { SectionType::Layer }, 0x40, "notedv", { Arg::bits6, Arg::var, Arg::u8 } },
	{ { SectionType::Layer }, 0x40, "noteldv", { Arg::bits6, Arg::varlong, Arg::u8 } },  // Workaround for weirdly encoded numbers
	{ { SectionType::Layer }, 0x80, "notevg", { Arg::bits6, Arg::u8, Arg::u8 } },

	{ { SectionType::Layer }, 0x00, "shortdvg", { Arg::bits6, Arg::var } },
	{ { SectionType::Layer }, 0x40, "shortdv", { Arg::bits6 } },
	{ { SectionType::Layer }, 0x80, "shortvg", { Arg::bits6 } },

	{ { SectionType::Unused }, 0x80, "byte", { Arg::u8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8,
	                                           Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8 } },
	{ { SectionType::Table }, 0x80, "entry", { Arg::addr } },
	{ { SectionType::Filter }, 0x80, "filter", { Arg::s16, Arg::s16, Arg::s16, Arg::s16, Arg::s16, Arg::s16, Arg::s16, Arg::s16 } },
	{ { SectionType::Array }, 0x80, "byte", { Arg::u8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8,
	                                          Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8, Arg::optu8 } },
	{ { SectionType::Envelope }, 0x80, "point", { Arg::s16, Arg::s16 } },
	{ { SectionType::Envelope }, 0x81, "disable", {} },
	{ { SectionType::Envelope }, 0x82, "hang", {} },
	{ { SectionType::Envelope }, 0x83, "goto", { Arg::u16 } },
	{ { SectionType::Envelope }, 0x84, "restart", {} },
	{ { SectionType::Buffer }, 0x80, "space", { Arg::u16 } }
};

struct ProcessingState {
	string_view filename;
	string_view line;
	uint32_t lineNumber;
	SectionType section;

	auto tie() const { return std::tie(filename, line, lineNumber, section); }
};

inline bool operator==(const ProcessingState& lhs, const ProcessingState& rhs) {
	return lhs.tie() == rhs.tie();
}

inline bool operator!=(const ProcessingState& lhs, const ProcessingState& rhs) {
	return lhs.tie() != rhs.tie();
}

enum class ErrorLevel {
	Info,
	Warn,
	Error
};

struct ParseError {
	int32_t pos = -1;
	ErrorLevel level = ErrorLevel::Error;
	string message;

	ParseError(const string& message) : message(message) {}
	ParseError(const int32_t pos, const string& message) : pos(pos), message(message) {}
	ParseError(const ErrorLevel level, const string& message) : level(level), message(message) {}

	void output(vector<ProcessingState*> fileStack) const;
};

void ParseError::output(vector<ProcessingState*> fileStack) const {
	for (auto state : fileStack) {
		cerr << "in " << state->filename << "@" << state->lineNumber;
		if (state != fileStack.back()) {
			cerr << endl;
		}
	}
	if (pos >= 0) {
		cerr << ":" << pos;
	}
	cerr << ": ";
	switch (level) {
		case ErrorLevel::Info:
			cerr << "message";
			break;
		case ErrorLevel::Warn:
			cerr << "parse warning";
			break;
		case ErrorLevel::Error:
			cerr << "parse error";
			break;
	}
	cerr << ": " << message << endl;
	cerr << fileStack.back()->line << endl;
	if (pos >= 0)
		cerr << string(pos, '-') << "^" << endl;
}

bool isValidSymbolChar(char c) {
	return isalnum(c) || c == '_';
}

bool isValidSymbolStartChar(char c) {
	return isalpha(c) || c == '_';
}

bool isValidLabelChar(char c) {
	return isValidSymbolChar(c);
}

typedef map<string, int32_t, less<>> DefineMap;

class Tokenizer {
public:
	Tokenizer(string_view filename, int32_t line, string_view str) {
		this->filename = filename;
		this->lineNumber = line;
		this->str = str;
	}
	void assertEof();
	bool isEof();
	bool isLabelCharNext();
	string_view readWsSepToken();
	bool readStringLiteral(string* out);
	int32_t readInt(const DefineMap& defines) { return parseSum(defines); }
	int32_t readInt(const DefineMap& defines, string* symbolOut) { return parseAtom(defines, symbolOut); }
	pair<string_view, int32_t> readLabelWithOffset(const DefineMap& defines);
	bool consumeCommaOrEof();
	bool peekNonWs(char* out);
	void consumeRest();

private:
	string_view filename;
	int32_t lineNumber;
	string_view str;
	size_t ind = 0;

	bool peekRaw(char* out);
	bool peek(char* out);

	void consume();
	void consumeWs();
	template<typename F>
	string_view consumeWhile(const F& pred);

	int32_t toI32(int64_t n);
	int32_t parseSum(const DefineMap& defines);
	int32_t parseProd(const DefineMap& defines);
	int32_t parseAtom(const DefineMap& defines);
	int32_t parseAtom(const DefineMap& defines, string* symbolOut);
	int32_t parseNumber(char firstChar);
};

bool Tokenizer::peekRaw(char* out) {
	if (ind == str.size()) return false;
	*out = str[ind];
	return true;
}

bool Tokenizer::peek(char* out) {
	return peekRaw(out) && *out != '#';
}

bool Tokenizer::peekNonWs(char* out) {
	while (peek(out)) {
		if (isspace(*out)) consume();
		else return true;
	}
	return false;
}

void Tokenizer::assertEof() {
	consumeWs();
	char c;
	if (peek(&c)) {
		throw ParseError(ind, "extraneous data: " + string(1, c));
	}
}

bool Tokenizer::isEof() {
	consumeWs();
	char c;
	return !peek(&c);
}

bool Tokenizer::isLabelCharNext() {
	char c;
	peekNonWs(&c);
	return isValidSymbolStartChar(c);
}

void Tokenizer::consume() {
	assert(ind != str.size());
	ind++;
}

void Tokenizer::consumeWs() {
	char c;
	peekNonWs(&c);
}

void Tokenizer::consumeRest() {
	ind = str.size();
}

bool Tokenizer::consumeCommaOrEof() {
	char c;
	if (!peekNonWs(&c))
		return false;
	if (c != ',')
		throw ParseError(ind, "invalid syntax, comma expected");
	consume();
	return true;
}

template<typename F>
string_view Tokenizer::consumeWhile(const F& pred) {
	size_t start = ind;
	char c;
	while (peek(&c) && pred(c))
		consume();
	return str.substr(start, ind - start);
}

string_view Tokenizer::readWsSepToken() {
	consumeWs();
	return consumeWhile([](char c) {
		return !isspace(c);
	});
}

bool Tokenizer::readStringLiteral(string* out) {
	consumeWs();
	char c;
	if (!peek(&c) || c != '"') return false;
	consume();
	out->clear();
	for (;;) {
		if (!peekRaw(&c))
			throw ParseError(ind, "unterminated string literal");
		consume();
		if (c == '"') break;
		if (c == '\\') {
			if (!peekRaw(&c))
				throw ParseError(ind, "trailing backslash");
			consume();
			if (c == 'n') c = '\n';
			else if (c == 'r') c = '\r';
			else if (c == 't') c = '\t';
			else if (c == '0') c = '\0';
		}
		*out += c;
	}
	return true;
}

int32_t Tokenizer::toI32(int64_t n) {
	if (-0x7FFFFFFF-1 <= n && n <= 0x7FFFFFFF)
		return (int32_t)n;
	throw ParseError(ind, "arithmetic out of range");
}

int32_t Tokenizer::parseSum(const DefineMap& defines) {
	int32_t a = parseProd(defines);
	char c;
	while (peekNonWs(&c) && (c == '+' || c == '-')) {
		consume();
		int64_t b = parseProd(defines);
		a = toI32(a + b * (c == '+' ? 1 : -1));
	}
	return a;
}

int32_t Tokenizer::parseProd(const DefineMap& defines) {
	int32_t a = parseAtom(defines);
	char c;
	while (peekNonWs(&c) && c == '*') {
		consume();
		int64_t b = parseAtom(defines);
		a = toI32(a * b);
	}
	return a;
}

int32_t Tokenizer::parseAtom(const DefineMap& defines) {
	string dumpBuffer;
	return parseAtom(defines, &dumpBuffer);
}

int32_t Tokenizer::parseAtom(const DefineMap& defines, string* symbolOut) {
	char c;
	if (!peekNonWs(&c))
		throw ParseError(ind, "bad math expression: empty terminal");
	if (c == '-') {
		consume();
		return toI32(-(int64_t)parseAtom(defines));
	}
	if (c == '(') {
		consume();
		int32_t a = parseSum(defines);
		if (!peekNonWs(&c) || c != ')')
			throw ParseError(ind, "bad math expression: expected )");
		consume();
		return a;
	}
	if ('0' <= c && c <= '9') {
		consume();
		return parseNumber(c);
	}

	string_view s = consumeWhile(isValidSymbolChar);
	if (s.empty())
		throw ParseError(ind, "bad math expression: unable to parse " + string(1, c));

	auto it = defines.find(s);
	if (it != defines.end()) {
		symbolOut->clear();
		for (char c : it->first)
			*symbolOut += c;
		return it->second;
	}

	throw ParseError(ind, "bad math expression: symbol " + string(s) + " not found");
}

int32_t Tokenizer::parseNumber(char firstChar) {
	int32_t radix = 10;
	char c;
	if (firstChar == '0') {
		if (!peekRaw(&c)) return 0;
		if (c == 'x' || c == 'X') {
			radix = 16;
		} else if (c == 'b' || c == 'B') {
			radix = 2;
		} else if ('0' <= c && c <= '9') {
			throw ParseError(ind, "octal literals are not supported");
		} else {
			return 0;
		}
		consume();
	}

	int32_t ret = firstChar - '0';
	bool needOne = (radix != 10);
	while (peekRaw(&c)) {
		int32_t digit;
		if ('0' <= c && c <= '9') {
			digit = c - '0';
		} else if ('a' <= c && c <= 'z') {
			digit = c - 'a' + 10;
		} else if ('A' <= c && c <= 'Z') {
			digit = c - 'A' + 10;
		} else {
			break;
		}
		if (digit >= radix)
			throw ParseError(ind, "invalid number");
		consume();
		ret = toI32((int64_t)ret * radix + digit);
		needOne = false;
	}
	if (needOne)
		throw ParseError(ind, "invalid number");
	return ret;
}

pair<string_view, int32_t> Tokenizer::readLabelWithOffset(const DefineMap& defines) {
	consumeWs();
	string_view s = consumeWhile([](char c) { return isValidLabelChar(c) || c == '@'; });
	if (s.empty())
		throw ParseError(ind, "label expected");
	if (s.compare("@") != 0 && !isValidSymbolStartChar(s[0]))
		throw ParseError(ind - s.size(), "label must start with letter or underscore");
	int32_t a = 0;
	char c;
	while (peekNonWs(&c) && (c == '+' || c == '-')) {
		consume();
		int64_t b = parseProd(defines);
		a = toI32(a + b * (c == '+' ? 1 : -1));
	}
	return {s, a};
}

struct LabelDescriptor {
	SectionType section;
	int64_t offset;
};

class Compiler {
public:
	Compiler(string_view fontpath);
	void processFile(istream& is, string_view filename);
	void applyFixups();
	void write(ostream& os);
	vector<uint8_t> getFontIds();
	map<string, LabelDescriptor, less<>> getLabels();
	uint8_t getCachePolicy();

private:
	struct Fixup {
		size_t pos;
		string label;
		int32_t offset;
		Arg arg;
		int64_t relativeTo;
		int lineNumber;
	};

	string_view fontpath;
	uint8_t cachePolicy = 2;
	vector<uint8_t> output;
	vector<Fixup> fixups;
	static const map<string_view, SectionType> labelMetaCommands;
	static const unordered_set<string_view> globalMetaCommands;
	static const map<SectionType, uint8_t> sectionAlignment;
	map<string, LabelDescriptor, less<>> labelValues;
	map<SectionType, map<string_view, Command>> commandMap;
	DefineMap definedSymbols;
	vector<ProcessingState*> fileStack;
	vector<uint8_t> fontIds;
	SectionType currentSection() { return fileStack.back()->section; }
	void changeCurrentSection(SectionType section) { fileStack.back()->section = section; }
	void info(string message) { auto p = ParseError(ErrorLevel::Info, message); p.output(fileStack); }
	void warn(string message) { auto p = ParseError(ErrorLevel::Warn, message); p.output(fileStack); }
	void assertMetaMode();
	void assertNormalMode();
	void processUseFont(Tokenizer& tk);
	void processLine(string_view line, string_view filename, int lineNumber);
	void processLabelMetaCommand(string_view cmd, Tokenizer& tk, bool noAlign);
	void processGlobalMetaCommand(string_view cmd, Tokenizer& tk, string_view filename);
	void processMetaCommand(string_view cmd, Tokenizer& tk);
	void processDataCommand(string_view mnemonic, Tokenizer& tk, int lineNumber);
	void processTrackCommand(string_view mnemonic, Tokenizer& tk, int lineNumber);
	void emitCommandArgument(Arg a, Tokenizer& tk, int32_t* valOut);
	void write(int16_t v);
	void balign(int32_t to);
};

const map<string_view, SectionType> Compiler::labelMetaCommands = {
	{ ".sequence", SectionType::Seq },
	{ ".channel", SectionType::Chan },
	{ ".layer", SectionType::Layer },
	{ ".unused", SectionType::Unused },
	{ ".table", SectionType::Table },
	{ ".array", SectionType::Array },
	{ ".filter", SectionType::Filter },
	{ ".envelope", SectionType::Envelope },
	{ ".buffer", SectionType::Buffer }
};

const map<SectionType, uint8_t> Compiler::sectionAlignment {
//	{ SectionType::Table, 2 },
	{ SectionType::Envelope, 2 },
	{ SectionType::Buffer, 16 },
	{ SectionType::Filter, 16 }
};

const unordered_set<string_view> Compiler::globalMetaCommands {
	".define",
	".include"
};

Compiler::Compiler(string_view fontpath) : fontpath(fontpath) {
	for (const Command& cmd : commands) {
		for (const SectionType section : cmd.validSections) {
			assert(!commandMap[section].count(cmd.mnemonic));
			commandMap[section][cmd.mnemonic] = cmd;
		}
	}
}

void Compiler::processFile(istream& in, string_view filename) {
	string line;
	int lineNumber = 0;
	ProcessingState fileState;

	fileState.filename = filename;
	fileState.section = SectionType::Meta;
	fileState.lineNumber = lineNumber;
	fileStack.emplace_back(&fileState);

	while (getline(in, line)) {
		lineNumber++;
		try {
			processLine(line, filename, lineNumber);
		} catch (const ParseError& e) {
			e.output(fileStack);
			
			exit(1);
		}
	}

	fileStack.pop_back();
}

void Compiler::applyFixups() {
	for (const Fixup& f : fixups) {
		int64_t target;
		if (f.label == "@") {
			target = f.relativeTo;
		} else {
			auto it = labelValues.find(f.label);
			if (it == labelValues.end()) {
				cerr << "Error: on line " << f.lineNumber
					<< ": reference to undefined label " << f.label << endl;
				exit(1);
			}
			target = it->second.offset;
		}
		target += f.offset;

		int32_t minTarget, maxTarget;

		switch (f.arg) {
			case Arg::reladdr8:
				target -= f.relativeTo;
				minTarget = -0x80;
				maxTarget = 0x7F;
				output[f.pos] = (uint8_t)(target & 0xFF);
				break;
			case Arg::reladdr16:
				target -= f.relativeTo;
				minTarget = -0x8000;
				maxTarget = 0x7FFF;
				output[f.pos] = (uint8_t)((target & 0xFF00) >> 8);
				output[f.pos + 1] = (uint8_t)(target & 0xFF);
				break;
			case Arg::addr:
			case Arg::u16OrAddr:
				minTarget = 0;
				maxTarget = 0xFFFF;
				output[f.pos] = (uint8_t)((target & 0xFF00) >> 8);
				output[f.pos + 1] = (uint8_t)(target & 0xFF);
				break;
			default:
				assert(!"bad fixup arg type");
		}

		if (target < minTarget || target >= maxTarget) {
			cerr << "Error: on line " << f.lineNumber
				<< ": reference to " << f.label << " which is too far away" << endl;
			exit(1);
		}
	}
}

vector<uint8_t> Compiler::getFontIds() {
	return fontIds;
}

uint8_t Compiler::getCachePolicy() {
	return cachePolicy;
}

map<string, LabelDescriptor, less<>> Compiler::getLabels() {
	return labelValues;
}

void Compiler::write(ostream& os) {
	os.write((const char*)output.data(), output.size());
}

void Compiler::assertNormalMode() {
	if (currentSection() == SectionType::Meta) {
		throw ParseError("command cannot be used in metadata section");
	}
}

void Compiler::assertMetaMode() {
	if (currentSection() != SectionType::Meta) {
		throw ParseError("command can only be used in metadata section");
	}
}

void Compiler::processLine(string_view line, string_view filename, int lineNumber) {
	static bool overrideAlignment = false;
	auto currentState = fileStack.back();
	currentState->line = line;
	currentState->lineNumber = lineNumber;

	Tokenizer tk(filename, lineNumber, line);

	string_view cmd = tk.readWsSepToken();

	if (cmd.empty()) return;

	if (labelMetaCommands.count(cmd)) {
		processLabelMetaCommand(cmd, tk, overrideAlignment);
		return;
	}

	if (globalMetaCommands.count(cmd)) {
		processGlobalMetaCommand(cmd, tk, filename);
		return;
	}

	// This needs to be done after processing label metacommands.
	if (overrideAlignment)
		overrideAlignment = false;

	if (cmd.compare(".balign") == 0) {
		int32_t width = tk.readInt(definedSymbols);
		balign(width);
		overrideAlignment = true;
		return;
	}

	switch (currentSection()) {
		case SectionType::Meta:
			processMetaCommand(cmd, tk);
			break;
		case SectionType::Seq:
		case SectionType::Chan:
		case SectionType::Layer:
			processTrackCommand(cmd, tk, lineNumber);
			break;
		case SectionType::Array:
		case SectionType::Table:
		case SectionType::Buffer:
		case SectionType::Filter:
		case SectionType::Envelope:
		case SectionType::Unused:
			processDataCommand(cmd, tk, lineNumber);
			break;
	}

	tk.assertEof();
}

void Compiler::processGlobalMetaCommand(string_view cmd, Tokenizer& tk, string_view filename) {
	if (cmd == ".include") {
		string dir = filesystem::path(filename).parent_path();
		string includedFilename;
		if (!tk.readStringLiteral(&includedFilename))
			throw ParseError("expected string literal");
		if (dir[dir.size() - 1] != '/')
			dir += '/';
		includedFilename = dir + includedFilename;
		ifstream fin(includedFilename);
		if (!fin) {
			throw ParseError("failed to open " + includedFilename);
		}
		processFile(fin, includedFilename);
	} else if (cmd == ".define") {
		string sym(tk.readWsSepToken());
		if (sym.empty())
			throw ParseError(".define without argument");
		for (char c : sym) {
			if (!isValidSymbolChar(c))
				throw ParseError("invalid define name " + sym);
		}
		if ('0' <= sym[0] && sym[0] <= '9')
			throw ParseError("invalid define name " + sym + " (cannot start with a digit)");
		definedSymbols[sym] = tk.readInt(definedSymbols);
	}
}

void Compiler::processLabelMetaCommand(string_view cmd, Tokenizer& tk, bool noAlign) {
	auto requestedSection = labelMetaCommands.at(cmd);
	auto labelName = tk.readWsSepToken();

	if (labelName.empty())
		throw ParseError("empty label not allowed");
	for (char c : labelName) {
		if (!isValidLabelChar(c))
			throw ParseError("invalid label name");
	}
	if (labelValues.count(labelName))
		throw ParseError("label " + string(labelName) + " defined twice");

	if (currentSection() == SectionType::Meta && fileStack.size() < 2) {
		if (requestedSection != SectionType::Seq) {
			throw ParseError("sequence section must be defined first");
		}
	}

	changeCurrentSection(requestedSection);

	if (sectionAlignment.count(currentSection()) && !noAlign) {
		balign(sectionAlignment.at(currentSection()));
	}

	LabelDescriptor desc;
	desc.offset = (int64_t)output.size();
	desc.section = requestedSection;

	labelValues[string(labelName)] = desc;
}

void Compiler::processMetaCommand(string_view cmd, Tokenizer& tk) {
	if (cmd == ".desc") {
		// Descriptors are ignored by the assembler.  We'll read in the string and then skip the remainder
		// of the line.
        string meta;
		assertMetaMode();
		tk.readWsSepToken();
		tk.readStringLiteral(&meta);
	} else if (cmd == ".usefont") {
		assertMetaMode();
		processUseFont(tk);
	} else if (cmd == ".cache") {
		assertMetaMode();
		cachePolicy = tk.readInt(definedSymbols);
	} else {
		throw ParseError("unrecognized command: " + string(cmd));
	}
}

void Compiler::processUseFont(Tokenizer& tk) {
	string symbol;
	int32_t fontid = tk.readInt(definedSymbols, &symbol);
	fontIds.emplace_back(fontid);

	// Font symbols are only loaded if fontpath is set.
	if (!fontpath.empty()) {
		string path = string(fontpath) + "/" + std::to_string(fontid) + ".inc";
		if (filesystem::is_regular_file(path)) {
			ifstream fin;
			istream* in = &fin;
			bool loaded = tryLoadFile(path, &fin);
			if (loaded) {
				processFile(*in, path);
				fin.close();
				return;
			}
		}

		if (!symbol.empty()) {
			path = string(fontpath) + "/" + symbol + ".inc";
			if (filesystem::is_regular_file(path)) {
				ifstream fin;
				istream* in = &fin;
				bool loaded = tryLoadFile(path, &fin);
				if (loaded) {
					processFile(*in, path);
					fin.close();
					return;
				}
			}
		}

		throw ParseError("Could not find soundfont include file for " + (symbol.empty() ? std::to_string(fontid) : symbol));
	}
}

void Compiler::processDataCommand(string_view mnemonic, Tokenizer& tk, int32_t lineNumber) {
	auto cmd = commandMap[currentSection()][mnemonic];

	if (cmd.mnemonic == NULL) {
		throw ParseError("command " + string(mnemonic) + " is invalid for section " + SectionName.at(currentSection()));
	}

	// Certain commands output additional bytes beyond just the arguments.  We'll handle those cases here first.
	if (mnemonic.compare("space") == 0) {
		auto amount = tk.readInt(definedSymbols);
		if (amount < 0) {
			throw ParseError("space cannot be negative");
		}
		for (auto i = 0; i < amount; i++) {
			output.push_back(0);
		}
		return;
	}

	if (currentSection() == SectionType::Envelope && mnemonic.compare("point") != 0) {
		if (mnemonic.compare("disable") == 0) {
			write(0);
			write(0);
		} else if (mnemonic.compare("hang") == 0) {
			write(-1);
			write(0);
		} else if (mnemonic.compare("goto") == 0) {
			write(-2);
		} else if (mnemonic.compare("restart") == 0) {
			write(-3);
			write(0);
		}
	}

	bool firstArg = true;
	size_t fixupsInd = fixups.size();

	for (Arg a : cmd.args) {
		if (!firstArg && !tk.consumeCommaOrEof() && a != Arg::optu8) {
			throw ParseError("too few arguments");
		}
		if (a == Arg::optu8) {
			if (tk.isEof()) {
				break;
			}
			a = Arg::u8;
		}
		emitCommandArgument(a, tk, nullptr);
		firstArg = false;
	}
	while (fixupsInd < fixups.size()) {
		Fixup& f = fixups[fixupsInd++];
		f.relativeTo = (int64_t)output.size();
		f.lineNumber = lineNumber;
	}
}

void Compiler::processTrackCommand(string_view mnemonic, Tokenizer& tk, int lineNumber) {
	auto cmd = commandMap[currentSection()][mnemonic];
	if (cmd.mnemonic == NULL) {
		throw ParseError("command " + string(mnemonic) + " is invalid for section " + SectionName.at(currentSection()));
	}
	size_t firstInd = output.size();
	output.push_back(cmd.opcode);
	bool first = true, needLoBits = false;
	int32_t firstVal = 0;
	size_t fixupsInd = fixups.size();
	for (Arg a : cmd.args) {
		if (!first) {
			if (!tk.consumeCommaOrEof() && a != Arg::optu8)
				throw ParseError("too few arguments");
		}
		if (a == Arg::u8OrVar)
			a = firstVal & 0x80 ? Arg::u8 : Arg::var;
		if (a == Arg::bits3 || a == Arg::bits4 || a == Arg::bits6)
			needLoBits = true;
		if (a == Arg::optu8) {
			if (tk.isEof()) {
				break;
			}
			a = Arg::u8;
		}
		emitCommandArgument(a, tk, first ? &firstVal : nullptr);
		first = false;
	}
	char c;
	if (tk.peekNonWs(&c) && c == ',')
		throw ParseError("too many arguments");
	if (needLoBits)
		output[firstInd] = (uint8_t)(output[firstInd] | firstVal);
	while (fixupsInd < fixups.size()) {
		Fixup& f = fixups[fixupsInd++];
		f.relativeTo = (int64_t)output.size();
		f.lineNumber = lineNumber;
	}
}

void Compiler::emitCommandArgument(Arg a, Tokenizer& tk, int32_t* valOut) {
	if (a == Arg::addr || a == Arg::reladdr8 || a == Arg::reladdr16 || (a == Arg::u16OrAddr && tk.isLabelCharNext())) {
		string_view label;
		int32_t offset;
		tie(label, offset) = tk.readLabelWithOffset(definedSymbols);
		fixups.push_back({
			output.size(), string(label), offset, a, 0, 0
		});
		output.push_back(0);
		if (a == Arg::addr || a == Arg::reladdr16 || a == Arg::u16OrAddr)
			output.push_back(0);
		return;
	}
	int32_t v = tk.readInt(definedSymbols);
	int32_t minTarget;
	int32_t maxTarget;
	switch (a) {
		case Arg::s8:
			minTarget = -128;
			maxTarget = 127;
			break;
		case Arg::u8:
			minTarget = 0;
			maxTarget = 255;
			break;
		case Arg::s16:
			minTarget = -32768;
			maxTarget = 32767;
			break;
		case Arg::u16:
		case Arg::u16OrAddr:
			minTarget = 0;
			maxTarget = 65535;
			break;
		case Arg::var:
		case Arg::varlong:
			minTarget = 0;
			maxTarget = 32767;
			break;
		case Arg::bits3:
			minTarget = 0;
			maxTarget = 7;
			break;
		case Arg::bits4:
			minTarget = 0;
			maxTarget = 15;
			break;
		case Arg::bits6:
			minTarget = 0;
			maxTarget = 63;
			break;
		default:
			throw ParseError("invalid argument type " + std::to_string(static_cast<uint32_t>(a)));
	}

	if (v < minTarget) {
		warn("value out of range (" + std::to_string(v) + " < " + std::to_string(minTarget) + "), truncating");
	}
	if (v > maxTarget) {
		warn("value out of range (" + std::to_string(v) + " > " + std::to_string(maxTarget) + "), truncating");
	}

	if (a == Arg::s8 || a == Arg::u8) {
		v &= 0xFF;
		output.push_back((uint8_t)v);
	} else if (a == Arg::s16 || a == Arg::u16 || a == Arg::u16OrAddr) {
		v &= 0xFFFF;
		output.push_back((uint8_t)(v >> 8));
		output.push_back((uint8_t)(v & 0xFF));
	} else if (a == Arg::var) {
		v &= 0x7FFF;
		if (v < 0x80) {
			output.push_back((uint8_t)v);
		} else {
			output.push_back((uint8_t)(v >> 8 | 0x80));
			output.push_back((uint8_t)(v & 0xFF));
		}
	} else if (a == Arg::varlong) {
		v &= 0x7FFF;
		output.push_back((uint8_t)(v >> 8 | 0x80));
		output.push_back((uint8_t)(v & 0xFF));
	} else if (a == Arg::bits3 || a == Arg::bits4 || a == Arg::bits6) {
		int32_t mask = (a == Arg::bits3 ? 7 : a == Arg::bits4 ? 15 : 63);
		v &= mask;
		assert(valOut);
	}
	if (valOut)
		*valOut = v;
}

void Compiler::write(int16_t v) {
	output.push_back((uint8_t)((v & 0xFF00) >> 8));
	output.push_back((uint8_t)(v & 0xFF));
}

void Compiler::balign(int32_t to) {
	if (to <= 0) throw ParseError(".balign argument must be positive");
	if (to & (to - 1)) throw ParseError(".balign argument must be a power of two");
	while (output.size() & (to - 1)) {
		output.push_back(0);
	}
}

bool tryLoadFile(string_view filename, ifstream* outStream) {
	outStream->open(string(filename));

	return !outStream->fail();
}

int main(int argc, char** argv) {
	bool printHelp = false;
	bool printFonts = false;
	bool printLabels = false;
	char optParams = '\0';
	string fontpath;
	string cwd = filesystem::current_path();
	vector<string> positionalArgs;
	for (int i = 1; i < argc; i++) {
		string arg = argv[i];
		if (optParams == 'f') {
			fontpath = arg;
			optParams = '\0';
			continue;
		}

		if (optParams != '\0') {
			cerr << "Missing required parameter" << endl;
			printHelp = true;
			break;
		}
		if (arg == "--help" || arg == "-h") {
			printHelp = true;
		} else if (arg == "--print-fonts") {
			printFonts = true;
		} else if (arg == "--font-path") {
			optParams = 'f';
		} else if (arg == "--write-labels") {
			printLabels = true;
		} else if (!arg.empty() && arg[0] == '-') {
			cerr << "Unrecognized command line flag " << arg << endl;
			return 1;
		} else {
			positionalArgs.push_back(move(arg));
		}
	}

	if (optParams != '\0') {
		cerr << "Missing required parameter" << endl;
		printHelp = true;
	}

	if (printHelp || positionalArgs.size() != 2) {
		cerr << "Usage: " << argv[0] << " [--print-fonts] [--font-path <path>] infile.seq outfile.bin" << endl;
		return 1;
	}

	string filename = positionalArgs[0];
	Compiler c(fontpath);
	ifstream fin;
	istream* is;
	bool loaded;

	loaded = tryLoadFile("include/sequence.inc", &fin);
	if (!loaded) {
		loaded = tryLoadFile("sequence.inc", &fin);
		if (!loaded) {
			cerr << "Warning: sequence.inc not found! Default symbols will not exist while parsing music file." << endl;
		}
	}

	if (loaded) {
		is = &fin;
		c.processFile(*is, "sequence.inc");
		fin.close();
	}

	if (filename == "-") {
		filename = "<stdin>";
		is = &cin;
	}

	loaded = tryLoadFile(filename, &fin);
	if (!loaded) {
		cerr << "Failed to open " << filename << endl;
		return 1;
	}

	is = &fin;
	c.processFile(*is, filename);
	c.applyFixups();

	fin.close();

	string outFilename = positionalArgs[1];

	ofstream fout(outFilename, ios::binary);
	c.write(fout);
	if (!fout) {
		cerr << "Failed to write to output file" << endl;
		return 1;
	}

	if (printFonts) {
		cout << "Cache=" << std::to_string(c.getCachePolicy()) << endl;
		for (uint8_t id : c.getFontIds()) {
			cout << std::to_string(id) << endl;
		}
	}

	if (printLabels) {
		ofstream of("labels.txt");
		for (auto element : c.getLabels()) {
			ostringstream buf;
			buf << SectionName.at(element.second.section) << " label called " << element.first << " is located at offset 0x" << std::hex << element.second.offset << endl;
			of << buf.str();
		}
	}

	return 0;
}
