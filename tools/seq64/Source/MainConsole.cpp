/*
 * ============================================================================
 *
 * MainConsole.cpp
 * Main function for command-line version.
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

#include "Common.hpp"
#include "CommandLine.hpp"

int main(int argc, char **argv){
    StringArray s;
    for(int i=0; i<argc; ++i){
        s.add(String(argv[i]));
    }
    return seq64_cli(s);
}
