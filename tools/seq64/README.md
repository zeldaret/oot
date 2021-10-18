# SEQ64 V2 is here!

## Downloads

Click [the Releases tab](https://github.com/sauraen/seq64/releases) to download SEQ64 V2 or the legacy SEQ64 V1. Or, compile from source on Linux, WSL, Windows native, or Mac with an easy, modern CMake build system. Or, integrate as a submodule into your romhack or decomp repo!

## Impressum

seq64 - Sequenced music editor for first-party N64 games.\
Created by and Copyright (C) 2014-2021 Sauraen, sauraen@gmail.com\
Licensed under the GNU General Public License version 3 - see LICENSE.txt\
Made with the Juce 6 C++ framework under the GPL3 license

## Instructions

Click [the Wiki tab](https://github.com/sauraen/seq64/wiki) for articles on SEQ64 compilation and use.

## .com? .mus? What is all this? Where do I load a ROM?

You don't load a ROM in SEQ64 V2. `.com`, `.aseq`, and `.m64` are all the same thing (Music Macro Language binary). `.mus` is the text-based assembly language version of this same data. The rest of this README explains in more detail. If you are using an old-school toolchain which doesn't split the ROM into its constituent files, but where you just edit the whole ROM in one tool after another, use SEQ64 V1.

## Background

Certain Nintendo 64 games made by Nintendo's internal studios, including Super Mario 64, Zelda, and several others, use a music sequence format called Music Macro Language (formerly referred to as `Audioseq` after the name of the file containing the sequences in the OoT Debug ROM). This format can be thought of as a cross between MIDI and a scripting language such as Python: it contains instructions for things like playing notes, pitch bend, and selecting instruments, and also programming instructions like branches, loops, calls, memory I/O, and some basic variable manipulation. In games which use this format, not only are MIDI-like music sequences stored in this format, but the first sequence in each game handles sound effects. This sequence is a huge "program" written in this language which listens for messages from the game engine and then plays miniature sequences for each of these sound effects.

Music Macro Language exists in two forms: a text-based assembly language in files with the extension `.mus`, and a binary format used in the games with the canonical extension `.com` (community extension `.aseq`, and sometimes referred to as `.m64`, though this extension was already taken for Mupen 64 format TAS replay files). Of course, a music sequence, though not the sound effects sequence or other technical sequences, can also be represented (at least mostly) as a MIDI file, and the music in these games was originally created as MIDIs and then converted to `.mus`.

## SEQ64 V2

SEQ64 V2 converts among any of these three formats: MIDI (`.mid`), Music Macro Language assembly (`.mus`), and Music Macro Language binary (`.com`/`.aseq`). This means that existing sequences can be exported and edited--either to MIDI for music or to assembly for sound effects and technical sequences--and then re-imported into the game. Crucially, SEQ64 aims to--and succeeds in several key cases--match the game data byte-for-byte when converted from binary to assembly or MIDI and back again. This is no easy task: for example, the sound effects sequence from Ocarina of Time is over 17,000 lines long, and contains bugs (in the actual in-game version) which make the sequence technically invalid. Nevertheless, workarounds were put in place, and SEQ64 matches on `.com` -> `.mus` -> `.com` for the sound effects sequences in Super Mario 64, Star Fox 64, and Ocarina of Time.

SEQ64 V2 does NOT currently include any bank editing or MIDI instrument number conversion to General MIDI. If you need these features, please use SEQ64 V1. Future work is (at least theoretically) planned on SEQ64 to provide comprehensive sample/bank library management--we'll see if this ever ends up happening.

## SEQ64 V1

SEQ64 V1 was started in an era when romhacking tools took whole ROMs and modified certain files in them while being careful not to disrupt any other data. It got widespread use by the community, but almost exclusively for MIDI importing and then `Save Raw` (`.com`/`.aseq` export outside the ROM). At this time, the assembly version of Music Macro Language was only theorized to exist--in fact the format was only theorized to be "Music Macro Language" at all (later versions of this language were used in first-party Nintendo games as late as Skyward Sword).

SEQ64 V1 provided MIDI import (to `.com`/`.aseq`) and export (from `.com`/`.aseq`), as well as a bank editing and creation tool. It also was able to use General MIDI instrument and pitch metadata annotated by the user in the banks to export MIDIs which sound reasonable with General MIDI playback. It can still be downloaded from the Releases tab above, if you need these features.

## Format information

One key design decision of SEQ64 is that as little is hardcoded as possible. In the case of SEQ64 V2, this means the definition of the Music Macro Language format--what all the commands do, what format their parameters are, etc.--is stored in an "ABI definition" XML file. As the Music Macro Language format changed between games, these changes can be represented by swapping or editing these files, rather than editing and recompiling the program. In SEQ64 V1, each ROM had its own "RomDesc" file, including the Music Macro Language format definition as well as the bank binary format definition, the addresses of key files and tables, and program settings.

## Compatibility

The following ABI files are currently provided, and are known to be functionally complete (i.e. every command is present and binary accurate):
- Super Mario 64
- Super Mario 64 EU
- Star Fox 64
- Ocarina of Time (created/tested on V1.0, will work on all versions)

The following other games definitely use Music Macro Language. For music sequences, the ABI file listed in parentheses will probably be close enough to work. (This is untested, if this is wrong or you have more info, please contact me)
- Mario Kart 64 (SM64)
- Wave Race 64 (SM64)
- F-Zero X (SF64)
- Yoshi's Story (OoT)
- Majora's Mask (OoT)

These games have been reported to use Music Macro Language, but I have not worked with them myself.
- 1080 Snowboarding
- Lylat Wars
- Pokemon Stadium
- Pokemon Stadium 2

Games by Rare (Banjo series, Donkey Kong 64, Goldeneye, etc.) use a Rare-specific sequence format which is completely different from Music Macro Language. Other third-party games use MIDI or an embedded MIDI variant.
