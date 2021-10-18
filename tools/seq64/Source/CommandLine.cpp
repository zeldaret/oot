/*
 * ============================================================================
 *
 * CommandLine.cpp
 * SEQ64 Command-Line Interface
 * 
 * From seq64 - Sequenced music editor for first-party N64 games
 * Copyright (C) 2014-2021 Sauraen
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

#include "CommandLine.hpp"
#include "SeqFile.hpp"

static void displayHelpText(){
    std::cout <<
    "seq64 - Sequenced music editor for first-party N64 games\n"
    "Copyright (C) 2014-2021 Sauraen, sauraen" "\x40" "gm\x61il" "\x2E" "com\n"
    "Licensed under the GPL v3, see gnu.org/licenses\n"
    "\n"
    "Arguments look like key=value or -key=value or --key=value.\n"
    "int is decimal or 0x. bool is true/false, 1/0, on/off, yes/no.\n"
    "\n"
    "Key            Value (default) Operation\n"
    "h, help, ?                     Displays this help message.\n"
    "in, input      Rel path        Specifies input file.\n"
    "out, output    Rel path        Specifies output file.\n"
    "abi, game      String          Specifies ABI definition. An ABI XML file is\n"
    "                               searched for that starts with or contains\n"
    "                               this string. E.g. \"1\", \"zelda\".\n"
    "dialect        String          Dialect for mus export. Must contain\n"
    "                               \"community\", \"canon\", or \"old\". Also\n"
    "                               must contain \"music\" or \"sfx\".\n"
    "pref           bool (true)     (MIDI import) Read .pref file next to .mid\n"
    "smartloop      bool (true)     (MIDI import) Loop body of music seq after intro\n"
    "reladdr        bool (false)    (MIDI import) Use only rel addr commands\n"
    "mutebhv        int (0x20)      (MIDI import) Mute Behavior bits (D3 20)\n"
    "mutescale      int (0x32)      (MIDI import) Mute Scale vol multiplier (D5 32)\n"
    "mastervol      int (0x58)      (MIDI import) If > 0, add master vol cmd\n"
    "usecalls       bool (true)     (MIDI import optimizer) Optimize with calls\n"
    "callonlylayer  bool (false)    (MIDI import optimizer) Calls only on note layers\n"
    "useloops       bool (true)     (MIDI import optimizer) Optimize with loops\n"
    "delta_vel      int (5)         (MIDI import optimizer) Merge if vel delta < this\n"
    "delta_gate     int (3)         (MIDI import optimizer) Merge if gate delta < this\n"
    "delta_cc       int (1)         (MIDI import optimizer) Merge if CC delta < this\n"
    "q_volpan_amp   int (2)         (MIDI import optimizer) Quantize vol curves by\n"
    "q_pitch_amp    int (1)         (MIDI import optimizer) Quantize pitch curves by\n"
    "q_other_amp    int (1)         (MIDI import optimizer) Quantize CC curves by\n"
    "ppqnmultiplier int (4)         (MIDI export) Output MIDI PPQN = this times 48\n"
    "exportformat   str (original)  (MIDI export) original, gm_ch10, gm_multi insts\n"
    "\n"
    "The operation performed (e.g. mid to com) is determined by the file\n"
    "extensions of the input and output files.\n"
    "MIDI: .mid, .midi, .rmi\n"
    "Music Macro Language assembly: .mus, .mml, .asm, .s\n"
    "Music Macro Language binary: .com, .aseq, .m64 (grudgingly), .bin, .dat\n"
    "\n"
    "The return code from seq64 is 0 for OK or warnings, 1 for errors,\n"
    "and -1 for invalid arguments or other problems before processing starts.\n"
    "\n"
    "Found a bug? Discord Sauraen" "\x23" "0047 in all major N64 ha\x63king servers\n"
    "or file an issue at https://github.com/sauraen/seq64.\n"
    ;
}

static bool isMidiFile(String filename){
    return filename.endsWithIgnoreCase(".mid") 
        || filename.endsWithIgnoreCase(".midi") 
        || filename.endsWithIgnoreCase(".rmi");
}
static bool isMusFile(String filename){
    return filename.endsWithIgnoreCase(".mus") 
        || filename.endsWithIgnoreCase(".mml") 
        || filename.endsWithIgnoreCase(".asm") 
        || filename.endsWithIgnoreCase(".s");
}
static bool isComFile(String filename){
    return filename.endsWithIgnoreCase(".com") 
        || filename.endsWithIgnoreCase(".aseq") 
        || filename.endsWithIgnoreCase(".m64") 
        || filename.endsWithIgnoreCase(".bin")
        || filename.endsWithIgnoreCase(".dat");
}
static int getOp(String filename){
    if(isMidiFile(filename)) return 0;
    if(isMusFile(filename)) return 1;
    if(isComFile(filename)) return 2;
    std::cout << "Could not detect the type (mid/mus/com) of " << filename << "!";
    return -1;
}

int seq64_cli(const StringArray &args){
    String abistr, instr, outstr;
    int dialect = -1;
    
    ValueTree midiopts("midiopts");
    midiopts.setProperty("pref", true, nullptr);
    midiopts.setProperty("smartloop", true, nullptr);
    midiopts.setProperty("reladdr", false, nullptr);
    midiopts.setProperty("mutebhv", 0x20, nullptr);
    midiopts.setProperty("mutescale", 0x32, nullptr);
    midiopts.setProperty("mastervol", 0x58, nullptr);
    midiopts.setProperty("usecalls", true, nullptr);
    midiopts.setProperty("callonlylayer", false, nullptr);
    midiopts.setProperty("useloops", true, nullptr);
    midiopts.setProperty("delta_vel", 5, nullptr);
    midiopts.setProperty("delta_gate", 3, nullptr);
    midiopts.setProperty("delta_cc", 1, nullptr);
    midiopts.setProperty("q_volpan_amp", 2, nullptr);
    midiopts.setProperty("q_pitch_amp", 1, nullptr);
    midiopts.setProperty("q_other_amp", 1, nullptr);
    midiopts.setProperty("ppqnmultiplier", 4, nullptr);
    midiopts.setProperty("exportformat", "original", nullptr);
    
    for(int a=1; a<args.size(); ++a){
        String arg = args[a];
        arg = arg.trim().trimCharactersAtStart("-").trim();
        String key = arg.upToFirstOccurrenceOf("=", false, false);
        String value = arg.fromFirstOccurrenceOf("=", false, false).unquoted();
        if(key == "h" || key == "help" || key == "?"){
            displayHelpText();
            return 0;
        }else if(key == "in" || key == "input"){
            if(!instr.isEmpty()){
                std::cout << "Error, multiple input files specified!\n";
                return -1;
            }
            if(value.isEmpty()){
                std::cout << "Error, no file specified with input argument!\n";
                return -1;
            }
            instr = value;
        }else if(key == "out" || key == "output"){
            if(!outstr.isEmpty()){
                std::cout << "Error, multiple output files specified!\n";
                return -1;
            }
            if(value.isEmpty()){
                std::cout << "Error, no file specified with output argument!\n";
                return -1;
            }
            outstr = value;
        }else if(key == "abi" || key == "game"){
            if(!abistr.isEmpty()){
                std::cout << "Error, multiple ABIs specified!\n";
                return -1;
            }
            if(value.isEmpty()){
                std::cout << "Error, no argument specified with ABI!\n";
                return -1;
            }
            abistr = value;
        }else if(key == "dialect"){
            if(value.containsIgnoreCase("community")){
                dialect = 0;
            }else if(value.containsIgnoreCase("canon")){
                dialect = 2;
            }else if(value.containsIgnoreCase("old")){
                dialect = 4;
            }else{
                std::cout << "Invalid dialect, must contain \"community\", \"canon\", or \"old\"!\n";
                return -1;
            }
            if(value.containsIgnoreCase("music")){
                dialect |= 0;
            }else if(value.containsIgnoreCase("sfx")){
                dialect |= 1;
            }else{
                std::cout << "Invalid dialect, must contain \"music\" or \"sfx\"!\n";
                return -1;
            }
        }else{
            key = key.toLowerCase();
            if(midiopts.hasProperty(key)){
                value = value.toLowerCase();
                if(midiopts.getProperty(key).isBool()){
                    if(value == "false" || value == "0" || value == "off" || value == "no"){
                        midiopts.setProperty(key, false, nullptr);
                    }else if(value == "true" || value == "1" || value == "on" || value == "yes"){
                        midiopts.setProperty(key, true, nullptr);
                    }else{
                        std::cout << "Invalid value " << value << " for boolean MIDI option " << key << "!\n";
                        return -1;
                    }
                }else if(midiopts.getProperty(key).isInt()){
                    int v;
                    if(isInt(value, false)){
                        v = value.getIntValue();
                    }else if(isHex(value, true)){
                        v = value.getHexValue32();
                    }else{
                        std::cout << "Invalid value " << value << " for integer MIDI option " << key << "!\n";
                        return -1;
                    }
                    if(v < 0 || v > 255){
                        std::cout << "Integer value " << value << " out of range 0-255 (in " << key << ")!\n";
                        return -1;
                    }
                    midiopts.setProperty(key, v, nullptr);
                }else if(key == "exportformat"){
                    if(value == "original" || value == "gm_ch10" || value == "gm_multi"){
                        midiopts.setProperty(key, value, nullptr);
                    }else{
                        std::cout << "Invalid value " << value << " for MIDI exportformat option!\n";
                        return -1;
                    }
                }
            }else{
                std::cout << "Unrecognized argument " << key << "=" << value << ", please type --help for usage\n";
                return -1;
            }
        }
    }
    
    //I/O file handling
    if(instr.isEmpty()){
        std::cout << "Error, no input file specified!\n";
        return -1;
    }
    if(outstr.isEmpty()){
        std::cout << "Error, no output file specified!\n";
        return -1;
    }
    File infile = File::getCurrentWorkingDirectory().getChildFile(instr);
    if(!infile.existsAsFile()){
        std::cout << "Input file " << infile.getFullPathName() << " does not exist!\n";
        return -1;
    }
    File outfile = File::getCurrentWorkingDirectory().getChildFile(outstr);
    if(!outfile.hasWriteAccess()){
        std::cout << "Output file " << outfile.getFullPathName() << " is invalid or doesn't have write permissions!\n";
        return -1;
    }
    
    //Op handling
    int inop = getOp(instr);
    int outop = getOp(outstr);
    if(inop < 0 || outop < 0) return -1;
    if(inop == outop){
        std::cout << "Requested conversion between an input and output of the same format, valid but useless!\n";
    }
    if(outop == 1 && dialect < 0){
        std::cout << "Requested mus output, but dialect not specified!\n";
        return -1;
    }
    
    //ABI handling
    if(abistr.isEmpty()){
        std::cout << "ABI not specified!\n";
        return -1;
    }
    StringArray abis = SeqFile::getAvailABIs();
    ValueTree abi;
    for(int i=0; !abi.isValid() && i<abis.size(); ++i){
        if(abis[i].startsWithIgnoreCase(abistr)){
            abi = SeqFile::loadABI(abis[i]);
        }
    }
    for(int i=0; !abi.isValid() && i<abis.size(); ++i){
        if(abis[i].containsIgnoreCase(abistr)){
            abi = SeqFile::loadABI(abis[i]);
        }
    }
    if(!abi.isValid()){
        std::cout << "Could not find ABI file starting with or containing \"" << abistr 
            << "\"!\nThese are the " << String(abis.size()) << " ABI files available:\n";
        for(int i=0; i<abis.size(); ++i){
            std::cout << "-- " << abis[i] << "\n";
        }
        return -1;
    }
    
    //Main processing
    SeqFile seq(abi);
    int ret;
    if(inop == 0){
        ret = seq.importMIDI(infile, midiopts);
    }else if(inop == 1){
        ret = seq.importMus(infile);
    }else{
        ret = seq.importCom(infile);
    }
    if(ret != 0 && ret != 1) return 1;
    if(outop == 0){
        ret = seq.exportMIDI(outfile, midiopts);
    }else if(outop == 1){
        ret = seq.exportMus(outfile, dialect);
    }else if(outop == 2){
        ret = seq.exportCom(outfile);
    }
    if(ret != 0 && ret != 1) return 1;
    
    //Done
    std::cout << "SEQ64 operation completed successfully\n";
    return 0;
}
