/*
 * ============================================================================
 *
 * Common.hpp
 * Utility functions used in all Sauraen projects
 * 
 * From seq64 - Sequenced music editor for first-party N64 games
 * Copyright (C) 2014-2020 Sauraen
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 * ============================================================================
*/

#pragma once

#ifdef SEQ64_CONSOLE_ONLY
#include "JuceHeaderConsole.hpp"
#else
#include <JuceHeader.h>
#endif

inline bool isInt(String str, bool allowNegative = true){
    str = str.trim();
    if(str.isEmpty()) return false;
    CharPointer_UTF32 s = str.toUTF32();
    for(int i=0; i<s.length(); ++s){
        if(s[i] == '-'){
            if(i != 0 || !allowNegative || s.length() == 1) return false;
            continue;
        }else if(s[i] >= '0' && s[i] <= '9'){
            continue;
        }else{
            return false;
        }
    }
    return true;
}

inline bool isHex(String str, bool allow0x = true){
    str = str.trim().toLowerCase();
    if(str.isEmpty()) return false;
    if(str.startsWith("0x") && allow0x) str = str.substring(2);
    CharPointer_UTF32 s = str.toUTF32();
    for(int i=0; i<s.length(); ++s){
        if((s[i] >= '0' && s[i] <= '9') || (s[i] >= 'a' && s[i] <= 'f')){
            continue;
        }else{
            return false;
        }
    }
    return true;
}

inline bool isDec(String str, bool allowNegative = true){
    str = str.trim();
    if(str.isEmpty()) return false;
    CharPointer_UTF32 s = str.toUTF32();
    bool decimalpoint = false;
    for(int i=0; i<s.length(); ++s){
        if(s[i] == '-'){
            if(i != 0 || !allowNegative || s.length() == 1) return false;
            continue;
        }else if(s[i] == '.'){
            if(decimalpoint || s.length() == 1) return false;
            decimalpoint = true;
            continue;
        }else if(s[i] >= '0' && s[i] <= '9'){
            continue;
        }else{
            return false;
        }
    }
    return true;
}

inline String floatToString(float f, int minDecPlaces, int maxDecPlaces){
    jassert(minDecPlaces <= maxDecPlaces);
    jassert(minDecPlaces >= 0);
    float mult = 1.0f;
    for(int i=0; i<minDecPlaces; ++i) mult *= 10.0f;
    for(int d=minDecPlaces; d<=maxDecPlaces; ++d){
        float displayedf = std::floor(f * mult) / mult;
        if(f - displayedf < 0.0001f){
            return String(f, d);
        }
        mult *= 10.0f;
    }
    return String(f, maxDecPlaces);
}

template<typename INT_TYPE> inline String hex(INT_TYPE i, int bits){
    String ret;
    while(bits > 0){
        uint8_t nybble = i & 0xF;
        if(nybble <= 9) ret = String::charToString('0' + nybble) + ret;
        else ret = String::charToString('A' + nybble - 0xA) + ret;
        i >>= 4;
        bits -= 4;
    }
    return ret;
}

inline String hex(uint8_t i) { return hex(i, 8); }
inline String hex(uint16_t i) { return hex(i, 16); }
inline String hex(uint32_t i) { return hex(i, 32); }
inline String hexauto(int i) { return hex(i, i >= 0x10000 ? 32 : i >= 0x100 ? 16 : 8); }

#define NULLSTATEMENT ((void)0)
#define REQUIRESEMICOLON do{NULLSTATEMENT;} while(false)

#ifndef SEQ64_CONSOLE_ONLY

#define FROMLOOKANDFEEL(colorType) \
    LookAndFeel::getDefaultLookAndFeel().findColour(colorType)

inline Colour LFWindowColor(){
    return FROMLOOKANDFEEL(ResizableWindow::backgroundColourId);
}
inline Colour LFWidgetColor(){
    return FROMLOOKANDFEEL(TextEditor::backgroundColourId);
}

#undef FROMLOOKANDFEEL

#define TEXTCHANGEDHANDLER_PRE \
    bool turnRed = false; \
    String text = editorThatWasChanged.getText(); \
    bool isint = isInt(text); \
    int intval = text.getIntValue(); \
    bool ishex = isHex(text); \
    int hexval = text.getHexValue32(); \
    REQUIRESEMICOLON

#define TEXTCHANGEDHANDLER_POST \
    TurnRed(&editorThatWasChanged, turnRed); \
    ignoreUnused(isint); \
    ignoreUnused(intval); \
    ignoreUnused(ishex); \
    ignoreUnused(hexval); \
    REQUIRESEMICOLON

inline void TurnRed(TextEditor *ed, bool turnRed = true){
    ed->setColour(TextEditor::backgroundColourId,
        turnRed ? Colours::red : LFWidgetColor());
    ed->repaint();
}
inline void TurnRed(const std::unique_ptr<TextEditor> &ed, bool turnRed = true){
    TurnRed(ed.get(), turnRed);
}

#endif

inline File findFile(String relpath){
    File f = File::getSpecialLocation(File::currentApplicationFile).getParentDirectory();
    while(true){
        File test = f.getChildFile(relpath);
        if(test.exists()) return test;
        if(f.isRoot()) return File();
        f = f.getParentDirectory();
    }
}
