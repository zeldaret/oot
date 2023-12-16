# Music Macro Language

Ocarina of Time contains a number of files known as **sequences**.  These sequences typically represent the music that plays during regular gameplay, such as Hyrule Field's theme or the Fire Temple background music.  These sequences are comparable to General MIDI version 1 with some noticeable differences, but the language that composes these sequences is much more complex and can support more programmatic uses.  Ocarina of Time in particular uses this language in innovative ways, which are described later in this document.

Note that if you have not read the documentation describing how the audio subsystem works in Ocarina of Time, it's *strongly* recommended that you read that document first, as it provides a high-level description of how the audio library works and its different components.  It will be assumed that you are familiar with the terms and concepts introduced in that document here.

The macro language is very similar conceptually to an assembly language or tracker file, with the ability to loop, change parameters and configuration settings, switch between soundfonts, interact with the game engine to allow for dynamic changes, and randomization.

## Structure of a Sequence

Generally, a sequence is composed in three major sections: descriptor, track, and data.  Each of these sections is different from the other, and in some cases they may be interleaved with each other.  For example, if a sequence has multiple subsequences embedded inside it, those subsequences may contain their own data sections.

### Primitives and Labels

Sequences may contain primitives, such as text and integers, which can be used as parameters for instructions or entries.

**Strings**: A series of Unicode characters enclosed by quotation marks.  For example: `"this is a string"`.

**Integers**: Numerical values without a fractional component.  For most usages, the integer must be within a certain supported range (as documented).  An integer can be written in decimal, hexadecimal, or binary, whichever feels most appropriate.  For example: `123`, `0x7B`, or `0b01111011`.

**Labels** allow you to provide a label for a certain subsection of the track code or data values.  They are defined using a related metacommand (documented in the next section), which specifies the label type.  Labels may consist of a series of Unicode letters or numbers, as well as underscores and periods.  You may then reference that label in your track code or data where the label type is accepted (as documented).  You can also use relative offsets around a label if you want to adjust where you're pointing to relative to the location of the label.

All label names must be unique.  If you define the same label in multiple locations of the sequence, this will result in an error.  Note that this applies across label types; for example, a channel label called `percussion` prevents a note layer label from being called `percussion`.

For example, this illustrates the usage of labels to reference a channel label:
```
ldchan 1, chan1_script
end

.channel chan1_script
... various channel instructions ...
```

The following illustrates the usage of label offsets to allow rewriting a parameter to a command:
```
stseq 5, notecmd+1   # Changes the pitch played by the notedvg command
...
.layer notecmd
notedvg 0, 10, 127   # The first parameter here will be changed to 5
```

### Comments and Metainstructions

Comments allow you to provide information that may be valuable to those who read the sequence contents directly.  These can provide documentation or explain more complex logic used in the sequence and are particularly useful for more complex, programmatic sequences.

A comment always starts with a # character.  This may appear anywhere in a line, and all text after the # will be ignored by editors or parsers.  These comments will not be saved or stored in the binary representation of a sequence.  They are purely for documentation purposes only.

Metainstructions are instructions that are read by the editor or parser, but do not get stored in the resultant binary file directly.  The following metainstructions are supported by the parser provided by `assemble_sequence`.  Other tools may support additional metainstructions, but these are always supported by all tools.

**.define** *symbol* *value*

**Description:** Defines a symbol that may be used elsewhere in the sequence script.  The symbol may consist of any Unicode letter, number, or underscores.  The value must be a primitive value.  Symbols must be defined only once in a sequence, their names are considered globals.

**Parameters:**

* `symbol` - The symbol being defined in the sequence.
* `value` - A primitive that the symbol represents.

**Example:**
```
.define IO_PORT_FXID 0   # Defines a symbol called IO_PORT_FXID with a value of 0.

ldio IO_PORT_IO          # Loads a value from IO port 0.
```

**.include** *filename*

**Description:** Defines a sequence file to be included into this sequence.  When processing, this will embed the contents of that file precisely where it's included with the `.include` directive.  The filename provided must be a path relative to this sequence file and enclosed with double quotes.  Note that care must be taken not to include the same file multiple times, or to have two or more files include each other in a way that would result in an infinite loop.

Symbols and labels exist in a global scope across all included files.  This means that any symbol or label defined in one file may be used in any other file, even if the file referencing that label does not include the file defining the label directly.  So long as the label is included somewhere, it can be referenced.

**Parameters:**
* `filename` - The relative path to the sequence file to include at this point in the sequence.

**Example:**

The following example consists of three different files: `example.seq`, the main sequence; `constants.inc`, a file containing constants used across the sequence files; and `alternate.seq.inc`, containing an alternate section that plays when the game prompts it to do so.

**example.seq**
```
.desc title Example Sequence
.desc author zeldaret
.usefont SOUNDFONT_ORCHESTRA
.include "constants.inc"    # This is the same as though constants.inc was written directly here.

.sequence start
mutebhv 0x20
mutescale 50
initchan 0b0000000000000001 # Only channel 0 is used.
ldchan 0, channel0_main     # Play the main tune first.
vol 70
tempo 64
delay 150
.sequence main_loop_start
ldio IO_PORT_MAIN          # Reads from the IO port.  If false, uses the alternate melody, otherwise it uses the main melody.
beqz use_alternate_melody
ldchan 0, channel0_main
delay 150
jump main_loop_start
.sequence use_alternate_melody
ldi TRUE                   # Prevents the alternate melody from being played again until the game signals it.
stio IO_PORT_ALT
ldchan 0, channel0_alt
delay 150
jump main_loop_start
end

.channel channel0_main
... various instructions here ...
end

.include "alternate.seq.inc" # This is the same as though alternate.seq.inc was written directly here.
```

**constants.inc**
```
# IO port 0: Signals to the sequence to play an alternate melody instead of the main melody.
.define IO_PORT_MAIN 0

# Binary values
.define TRUE  1
.define FALSE 0
```

**alternate.seq.inc**
```
.desc title Alternate Melody

.channel channel0_alt
... various instructions here...
end
```

**Label Metainstructions**

The following metainstructions allow you to define a label that points to the relevant set of instructions.  These metainstructions are the following:

| Metacommand | Description                                                 |
| ----------- | ----------------------------------------------------------- |
| .sequence   | A series of sequence instructions within a track section.   |
| .channel    | A series of channel instructions within a track section.    |
| .layer      | A series of note layer instructions within a track section. |
| .table      | A table of entries or bytes within a data section.          |
| .array      | An array of bytes or shorts in a data section.              |
| .filter     | References a filter structure in a data section.            |
| .envelope   | References an envelope structure in a data section.         |
| .buffer     | References a buffer within a data section.                  |

**Section Metainstructions**

There are metainstructions specific to certain sections that will be documented in those sections specifically.  Note that metainstructions are always distinguished by starting with a period, whereas instructions do not.

### Descriptor Section

The descriptor section is composed of instructions that provide information useful for describing the sequence.  The only required command for this section is .usefont, which may only be used at the very beginning of the track and defines what soundfonts will be available for use by the sequence.

#### Metainstructions

*Descriptor instructions have no binary representation.*

**.desc** *type* *text*

**Description:** A descriptor to provide information to users and editors.  Type can be any single word, but the most commonly used are *title* and *author*.

**Example:**
```
.desc title "An Example Sequence"
.desc author "zeldaret"
```

**.usefont** *index*

**Description:** Specifies a soundfont that should be available for the sequence to use.  The first soundfont specified will be active by default when loaded by the game.  Note that the game never uses more than two soundfonts for a sequence, but more than two are theoretically supported.

**Example:**
```
.usefont 1 # Can also use SOUNDFONT_SFX_1
.usefont 3 # See sequence.inc for other soundfont constants
```

### Track Section

Tracks are composed of three different types of instructions: sequence, channel, and note layer.  The sequence contains instructions for controlling the overall sequence itself.  Channels are defined at the sequence level, with at most sixteen channels running at the same time.  Each channel can then reference zero or more note layers, where the actual note instructions will be referenced.  Most of the instructions are specific to these subsections and are not interchangeable, aside from the *Branching instructions*, which are supported with all three.  A sequence *always* starts with sequence instructions.

Tracks are executed by the **sequence player**, as defined in `audio_seqplayer.c`.  The sequence player is capable of executing one track at a time, with sixteen simultaneous channels, each channel typically supporting four note layers.  A tick counter allows the player to track the execution time of a sequence.  Ticks increment based on the tempo.

All instructions in a track section are executed simultaneously unless a delay command is specified, in which case subsequent instructions will only run after that number of ticks has elapsed while playing the sequence.

A track can loop (potentially) indefinitely by using branching instructions, or can end if the sequence command `end` is encountered.  This will end processing of the sequence, and the sequence player will no longer process any further instructions until a new sequence is started.

#### Long Notes Versus Short Notes

The sequence format supports two different ways of representing note instructions in binary: long and short.

Short notes only encode the pitch being played and optionally the note duration (delay). This can provide significant space savings when the notes being played are all using the same gate and velocity (a drum section, for example, with a continuous drum roll).  There are dedicated instructions that allow you to change the gate and velocity parameters, either setting default values or changing the parameters for following notes.

Long notes, in comparison, encode the pitch and velocity with each command, in addition to either the duration, gate length, or both.  This provides better space savings compared to short notes if the gate or velocity parameters change frequently with each note, as it can take two or more bytes to do this with short notes rather than one additional byte with the long note.  Long note mode is recommended most with melodic sections, where your instruments are intended to be more expressive.

#### Sequence Subsections

##### Sequence Registers

Certain instructions support loading or storing values and utilize a register associated to the sequence for this task.  For documentation purposes, this is referred to as the `$V` register.  This register is one byte in size; most instructions treat it as a signed value.

##### IO Ports

Each sequence player contains 8 IO ports that are one byte in size each.  These ports can be used to communicate state information between other parts of the game engine, or across different parts of the sequence.  For example, a sequence script could use an IO port that, when set to a certain value, changes what instrument is used.

##### Metainstructions

**.sequence** *label name*

**Description:** Defines a label for the following subsection of sequence instructions.  Note that it is considered an error if a sequence label is followed with anything that is not a sequence command.

**Example:**
```
.sequence loop_start
ldchan 1, chan1_melody
delay 500
jump loop_start        # Plays the same melody indefinitely.
```

##### Instructions

|    |    00    | 10 | 20 | 30 |    40    |  50   |  60   |  70  |  80  |   90   |   A0    |  B0   |    C0     |     D0      | E0 |      F0       |
| -- | -------- | -- | -- | -- | -------- | ----- | ----- | ---- | ---- | ------ | ------- | ----- | --------- | ----------- | -- | ------------- |
| 00 | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq |           | notealloc   |    | freenotelist  |
| 01 | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq |           | ldshortgate |    | allocnotelist |
| 02 | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq |           | ldshortvel  |    | *rbltz        |
| 03 | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq |           | mutebhv     |    | *rbeqz        |
| 04 | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq | runseq    | mute        |    | *rjump        |
| 05 | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq | scriptctr | mutescale   |    | *bgez         |
| 06 | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq | stop      |             |    | *break        |
| 07 | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq | stseq     | initchan    |    | *loopend      |
| 08 | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq | sub       |             |    | *loop         |
| 09 | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq | and       | fadescale   |    | *bltz         |
| 0A | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq |           | fade        |    | *beqz         |
| 0B | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq |           | fadetovol   |    | *jump         |
| 0C | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq | ldi       | tempochg    |    | *call         |
| 0D | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq | dyncall   | tempo       |    | *delay        |
| 0E | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq | rand      | rtranspose  |    | *delay1       |
| 0F | testchan |    |    |    | stopchan | subio | ldres | stio | ldio | ldchan | rldchan | ldseq |           | transpose   |    | *end          |

Instructions marked with an asterisk (\*) are documented in the section *Branching Instructions*.

**testchan** *N*

**Description:** Stores whether or not channel *N* is currently active in `$V`.  If the channel is active, `$V` will equal `0`, otherwise it will equal `1`.

**Parameters:**
* `N` [integer: 0-15] - The channel number to test.

**Example:**
```
.sequence wait_until_done
delay1
testchan 1
beqz wait_until_done
# Instructions here only execute once channel 1 reaches an end command.
```

**stopchan** *N*

**Description:** Stops channel *N* from executing any further instructions.  Any notes currently playing on the channel will cease.

**Parameters:**
* `N` [integer: 0-15] - The channel number to stop.

**Example:**
```
ldchan 0, chan0
ldchan 1, chan1
delay 50
stopchan 1      # Stops channel 1 after 50 ticks, even if there's additional instructions.
```

**subio** *N*

**Description:** Subtracts from `$V` whatever value is in IO port *N*.

**Parameters:**
* `N` [integer: 0-7] - The IO port to read.

**Example:**
```
# Assume that the current value in $V is 5 and the current value in IO port 1 is -5.
subio 1
stio 0
# IO port 0 now contains the current value of $V, which is 0.
```

**ldres** *IO*, *type*, *index*

**Description:** Loads an audio resource into memory asynchronously.  The type of resource is specified via *type*, where 0 is a sequence, 1 is a soundfont, and 2 is a sample bank.  The IO parameter is used to track the status of the loading process.  The audio subsystem will update this value to 0 once the resource has been loaded.  Note that the IO port doesn't change this value to anything but 0 first, so it's recommended to set the IO port to a non-zero value prior to using `ldres`.

Unlike the dedicated `ldseq` command, this does not assign the loaded sequence to a sequence player for playback.  This was likely intended to be paired with `runseq`, since the sequence would be loaded into the pool and ready for playback immediately and wouldn't introduce any processing lag.  Unfortunately, with the way the pools are designed, this is suboptimal and could introduce issues.

As a best practice, if you want to do dynamic sequence changes, allocate a buffer inside your sequence and use `ldseq` to load it into the buffer and call it as a sequence function.  If you want to change the sequence being played by another sequence player, you must use the `ldres` and `runseq` instructions.

You do not need to use this command to load sample banks or soundfonts.  There are no instructions to allow a sequence to use an arbitrary soundfont, and any soundfonts assigned to a sequence are preemptively loaded into the pool prior to the sequence player initializing.  The engine also already handles loading sample banks and samples automatically, so there are no useful situations where you would need to use this command with sample banks.

**Parameters:**
* `IO` [integer: 0-7] - The IO port to use for tracking the asynchronous load status.
* `type` [integer: 0-2] - The type of resource to load.
* `index` [integer: 0-255] - The index of the resource to load from the table.

**Example:**
```
ldi -1
stio 5
ldres 5, 0, 10    # Loads sequence 10 and signals the load in IO port 5.
.sequence wait_for_sequence
delay1
ldio 5
bltz wait_for_sequence
```

**stio** *IO*

**Description:** Stores the current value in `$V` into the IO port specified.

**Parameters:**
* `IO` [integer: 0-7] - The IO port to store the contents of `$V` into.

**Example:**
```
ldi 10
stio 0  # Stores the value 10 into IO port 0.
```

**ldio** *IO*

**Description:** Reads the value in the specified IO port and stores it in `$V`.

**Parameters:**
* `IO` [integer: 0-7] - The IO port to read from.

**Example:**
```
ldio 1                # Reads the value in IO port 1 and stores in $V.
stseq 0, volchange+1  # Writes the value in $V to the next instruction's first parameter.
.sequence volchange
fadetovol 0           # Changes the sequence player's volume to the value in $V.
```

**ldchan** *N* *label*

**Description:** Assigns a channel script to the specified channel, which will begin executing on the current tick.  If the channel already was executing a script, the channel will immediately begin executing this script's instructions instead.  The label must be a channel label.

**Parameters:**
* `N` [integer: 0-15] - The channel to assign the script to.
* `label` [channel label] - The label of channel instructions to assign to the channel.

**Example:**
```
ldchan 0, chan0
...

.channel chan0
resetchan
end
```

**rldchan** *N* *label*

**Description:** Assigns a channel script to the specified channel, similar in functionality to `ldchan`.  The only difference between this command and `ldchan` is that this uses a relative offset versus an absolute offset when converted to binary form.  Use this when the sequence's position in memory is not guaranteed to be in a certain position (for example, when using `ldseq`).

**Parameters:**
* `N` [integer: 0-15] - The channel to assign the script to.
* `label` [channel label] - The label of channel instructions to assign to the channel.

**Example:**
```
rldchan 0, chan0
...

.channel chan0
resetchan
end
```

**ldseq** *IO* *index* *label*

**Description:** Loads the specified sequence asynchronously into the buffer space specified by the given label.  The IO port will be used to signal when the sequence has been fully loaded into the buffer.  The enum `SlowLoadStatus` is used by the audio subsystem to indicate the current loading status.  The IO port will be set to 3 on the tick that the sequence is loaded, and then 0 after.

Note that the sequence player and audio subsystem are unable to detect if a buffer overflow will occur when loading the sequence.  Be certain that the buffer you use is large enough to contain the loaded sequence, otherwise the load could corrupt the main sequence or other parts of the sequence player's state.

**Parameters:**
* `IO` [integer: 0-7] - The IO port to use for tracking the load of the sequence.
* `index` [integer: 0-127] - The sequence ID to be loaded into the buffer.
* `label` [buffer label] - The buffer to load the sequence into.

**Example:**
```
rand 2                      # Randomly loads either sequence 5 or 10.
beqz .load_seq_5
ldseq 0, 10, seqbuf         # Loads sequence 10 into the buffer.
jump wait_for_load
.sequence load_seq_5
ldseq 0, 5, seqbuf          # Loads sequence 5 into the buffer.
.sequence wait_for_load
delay1
ldio 0
bltz wait_for_load          # If IO port 0 is not 0, continue waiting for sequence to load.
dyncall bufptr              # Call the sequence in seqbuf as a subroutine.
end

.data

.table bufptr
.entry seqbuf

.buffer seqbuf              # A buffer that the sequence will be loaded into.
.space 2048                 # The buffer is 2KB in size.
```

**runseq** *player*, *index*

**Description:** Instructs the specified sequence player to play the specified sequence.  Unlike most instructions, this one operates synchronously and will block execution of the current sequence script until the command finishes (presumably, this is to avoid potential race conditions if you replace the sequence in the current sequence player).  If you want to specifically change the sequence being played by the current player, you can use `0xFF` for the player.

If this command modifies the current sequence player, the sequence player will reset and no longer execute the original script.  Otherwise, the sequence player will continue to play once the other sequence player has finished loading.

**Parameters:**
* `player` [integer: 0-3, 255] - The sequence player to modify.  If 255, use current.
* `index` [integer: 0-127] - The sequence index to load into the sequence player.

**Example:**
```
# Assumes that this script is running in sequence player 0.
runseq 1, 5  # Instructs sequence player 1 to load and play sequence 5.  This sequence will not
             # continue until sequence player 1 finishes loading.
```

**scriptctr** *counter*

**Description:** Changes the current script counter.  Note that this counter increments, but never is used by the audio subsystem otherwise.  This should not be confused for the tick or tempo.

**Parameters:**
* `counter` [integer: 0-65535] - What to set the counter value to.

**Example:**
```
scriptctr 0  # Sets the script counter to 0.  This has no impact on the sequence itself.
```

**halt**

**Description:** Halts any further processing of the current sequence after this tick.

**Parameters:** None.

**Example:**
```
ldchan 1, chan1
halt              # Channel 1 will run for one tick before the script ends.
```

**stseq** *val*, *offset/label*

**Description:** Writes the total of `$V` + `val` to the offset within the sequence script in its binary form.  The easiest way to use this command is to use a label within the script pointing to the command/data you wish to modify.

Note that this instruction modifies the sequence script itself and is a form of self-modifying code.  This can be leveraged to make highly dynamic sequences (and is used to great effect in the sound effects sequence), but using it improperly can easily cause sequence corruption and undefined behavior.

**Parameters:**
* `val` [integer: 0-255] - Constant to add to `$V`.
* `offset/label` [integer: 0-32767 or any label] - Offset or label to location in sequence to be modified.

**Example:**
```
ldchan 5, chan5
ldi 7
stseq 0, chan5_instr+1   # Changes the instrument specified in chan5 to 7.
delay 500
end

.channel chan5
short
.channel chan5_instr
instr 3
...
```

**sub** *val*

**Description:** Subtracts the specified integer from the current value stored in the `$V` register.

**Parameters:**
* `val` [integer: 0-255] - Value to subtract

**Example:**
```
ldio 3   # Load value from IO port 3 into $V
sub 2    # $V -= 2
stio 3   # Store $V to IO port 3
```

**and** *val*

**Description:** Performs a bitwise and operation between the value stored in the `$V` register and the value specified.

**Parameters:**
* `val` [integer: 0-255] - Value to perform a bitwise and with

**Example:**
```
ldio 3     # Load value from IO port 3 into $V
and 0xF0   # Set lower four bits to 0
stio 2     # Store resulting value into IO port 2
```

**ldi** *val*

**Description:** Sets the `$V` register to the provided integer.

**Parameters:**
* `val` [integer: 0-255] - Value to load into the register

**Example:**
```
ldi 2    # $V = 2
stio 0   # Set IO port 0 to 2
```

**dyncall** *table*

**Description:** Makes a function call using an entry from the specified table in a data section.  The value in the `$V` register is treated as the index to look up within the table.  Once an `end` command is reached in the called function, the player will return back and execute the next instruction after this one.

If `$V` is currently set to -1 or the call depth is at 3, then the function call will fail and be skipped.  Note that the sequence player does not perform any bounds checking on `$V`; if it's larger than the table, the sequence player will jump to a potentially unexpected location in the script and could result in undefined behavior.

**Parameters:**
* `table` [table label] - A label to an entry table

**Example:**
```
rand 3
dyncall play_funcs
.sequence wait_for_finish
delay1
ldio 7
bltz wait_for_finish
end

.sequence option1
... instructions for one sequence ...
end

.sequence option2
... instructions for a completely different sequence ...
end

.sequence option3
... instructions for a remixed sequence between the two ...
end

.data

.table play_funcs
.entry option1
.entry option2
.entry option3
```

**rand** *max*

**Description:** Assigns a random integer to the `$V` register between `0` (inclusive) and `max` (exclusive).  If `max` is 0, then it will be any random value between `-128` (inclusive) and `127`.

Note that a side effect of the implementation for this command is that if a maximum of 1 is used, then this will always set `$V` to 0.  In addition, the `$V` register is signed even though the random value is calculated entirely with unsigned values.  As a result, although you can set the maximum to a value larger than 127, it is not recommended as this will not interact well with most other instructions.

**Parameters:**
* `max` [integer: 0-255] - The maximum (exclusive) to use for the random value, or 0 for any random value to be chosen

**Example:**
```
rand 50             # $V = value between 0 and 49
stseq 50, volume+1  # vol param set to $V + 50
volmode 1           # Set volume mode to fade
.sequence volume
vol 0               # Change volume to $V + 50
```

**notealloc** *mask*

**Description:** Sets the note allocation policy based on the provided flags.  This policy is applied to any channels initialized after this command executes.  The bitmask uses the following flags:

* 0b0001 - The note layer will reuse the same note when another note is played.
* 0b0010 - Only allocates notes from the channel's current reserved note pool.
* 0b0100 - Only allocates notes from the channel or sequence's reserved note pool.
* 0b1000 - Only allocates notes from the global note pool.

If none of the upper three bits are set, then the note will be allocated from any available source (channel, sequence player, or global).  The audio subsystem will first try the channel reserved pool, then the sequence player reserved pool, and finally the global note pool.

This policy is assigned to the channels when the `initchan` command is executed; using this command after the channels are initialized will have no effect unless `initchan` is called again.

**Parameters:**
* `mask` [integer: 0-15] - The note allocation policy to use.

**Example:**
```
notealloc 0b0010       # Channels 0 and 1 will always play notes from the channel's pool
ldchan 0, violin       # without replacing any playing notes
ldchan 1, strings
notealloc 0b0101       # Channels 3 and 9 will play notes from the channel or sequence's pools
ldchan 3, piano        # and replace playing notes if needed
ldchan 9, percussion
notealloc 0b1000       # Channel 4 will play notes from any free note list without any stealing
ldchan 4, triangle
```

**ldshortgatearr** *array*

**Description:** Loads the specified byte array of note gate values into the sequence player.  This array can be used in the note layer by the `ldshortgate` command.  This allows you to change gate values for consecutive notes with only a single byte, however only up to 16 values can be read from the array.

Note that the short note gate array applies across all channels and note layers in the sequence player.  If the array is changed at any point, this will also change the gate array for all note layers simultaneously.  This will not affect the gate values already loaded.

If this command is not used but the `ldshortgate` is used, the gate value will be read from `gDefaultShortNoteGateTimeTable`, which consists of the following values:

`{ 229, 203, 177, 151, 139, 126, 113, 100, 87, 74, 61, 48, 36, 23, 10, 0 }`

**Parameters:**
* `array` [array label] - Label to an array in a data section containing up to sixteen bytes.

**Example:**
```
ldshortgatearr shortgates    # Assigns the array shortgates to the player's short note lookup table
ldchan 0, chan0              # Loads channel 0
delay 500
end

.channel chan0
short                        # Activates short note mode on this channel
ldlayer layer0               # Loads note layer 0 for this channel
delay 500
end

.layer layer0
ldshortgate 5                # Loads gate value at index 5 (150) to be used for subsequent notes.
notedvg PITCH_C4, 6, 0       # Plays C4 with gate 27 and duration of 6 ticks.
notevg PITCH_D4, 6, 0        # Plays D4 with gate 27 and the same duration as previous.
notevg PITCH_F4, 6, 0
ldshortgate 3                # Loads gate value at index 3 (100) to be used for subsequent notes.
notevg PITCH_G4, 6, 0        # Plays G4 with gate 10 and same duration as previous.
notevg PITCH_G4, 6, 0
notevg PITCH_C5, 6, 0

.data

.array shortgates
.byte 20
.byte 50
.byte 80
.byte 100
.byte 120
.byte 150
.byte 180
```

**ldshortvelarr** *array*

**Description:** Loads the specified byte array of note velocity values into the sequence player.  This array can be used in the note layer by the `ldshortvel` command.  This allows you to change velocity values for consecutive notes with only a single byte, however only up to 16 values can be read from the array.

Note that the short note velocity array applies across all channels and note layers in the sequence player.  If the array is changed at any point, this will also change the velocity array for all note layers simultaneously.  This will not affect the velocity values already loaded.

If this command is not used but the `ldshortvel` is used, the velocity value will be read from `gDefaultShortNoteVelocityTable`, which consists of the following values:

`{ 12, 25, 38, 51, 57, 64, 71, 76, 83, 89, 96, 102, 109, 115, 121, 127 }`

**Parameters:**
* `array` [array label] - Label to an array in a data section containing up to sixteen bytes.

**Example:**
```
ldshortvelarr shortvels    # Assigns the array shortvels to the player's short note lookup table
ldchan 0, chan0            # Loads channel 0
delay 500
end

.channel chan0
short                      # Activates short note mode on this channel
ldlayer layer0             # Loads note layer 0 for this channel
delay 500
end

.layer layer0
ldshortvel 5               # Loads velocity value at index 5 (27) to be used for subsequent notes.
notedvg PITCH_C4, 6, 0     # Plays C4 with gate 27 and duration of 6 ticks.
notevg PITCH_D4, 6, 0      # Plays D4 with gate 27 and the same duration as previous.
notevg PITCH_F4, 6, 0
ldshortvel 3               # Loads velocity value at index 3 (10) to be used for subsequent notes.
notevg PITCH_G4, 6, 0      # Plays G4 with gate 10 and same duration as previous.
notevg PITCH_G4, 6, 0
notevg PITCH_C5, 6, 0

.data

.array shortvels
.byte 4
.byte 5
.byte 8
.byte 10
.byte 20
.byte 27
.byte 50
```

**mutebhv** *mask*

**Description:** Defines the sequence player's behavior when the mute mode is enabled.  The following flags can be ORed together and provided in the `mask` parameter.  This behavior is assigned to the channels when the `initchan` command is executed; using this command after the channels are initialized will have no effect unless `initchan` is called again.

* 0b00000001 - Unused.
* 0b00000010 - Unused.
* 0b00000100 - Unused.
* 0b00001000 - Immediately stops playing notes when muted.
* 0b00010000 - All note layers will stop playing any new notes when muted.  Old notes will play for their remaining duration.
* 0b00100000 - Reduces the sequence player's volume by the mute volume scale when muted.
* 0b01000000 - All note layers will stop playing any new notes and cut off old notes when muted.
* 0b10000000 - Stops processing completely when muted.

The default mute behavior for the sequence player is 0b01100000.

Note that the mute behavior mostly is only affected by the `mute` command.  The game also supports dynamic muting via the channel command `STOPSOMETHING2`, which will stop playing new notes for that channel (this operates separately from the mute behavior).  It also supports toggling mute mode for all sequence players via audio instructions `0xF1` and `0xF2`.

**Parameters:**
* `mask` [integer: 0-65535] - The default mute behavior for the sequence.

**Example:**
```
mutebhv 0x20      # Sets mute behavior to reduce volume.
mutescale 63      # Scales volume to 49.6%.
ldchan 1, chan1   # Plays channel 1 at full volume.
delay 500
mute              # Plays channel 1 at half volume.
delay 500
end
```

**mute**

**Description:** Activates mute mode for the sequence player.  How this is treated depends on the behavior set by `mutebhv`.  By default, the player will reduce volume and also immediately stop playing all notes.

Once mute has been activated, it cannot be disabled again via command.

**Parameters:** None.

**Example:**
```
ldchan 1, chan1  # Starts playing channel 1.
delay 500
mute             # Mutes the sequence.
delay 40
end
```

**mutescale** *numerator*

**Description:** Sets the fractional value that should be applied to the sequence's current volume when mute mode is enabled.  The value passed in the parameter will be divided by 127 and the result stored in the sequence player's configuration.  Unlike `mutebhv`, this can be used at any point in the sequence to change the mute scale factor.

For example, if set to 127 and the sequence is muted, the volume will not reduce at all.  If set to 80, the volume will reduce by 63%.  If set to 0, the volume will mute entirely.  Using a value larger than 127 will result in undefined behavior, as this will result in a negative scale factor.  By default, this will be set to 100%.

This scaling factor is only used if flag 0x20 is set in the sequence player's mute behavior.

**Parameters:**
* `numerator` [integer: 0-127] - The number to divide by 127

**Example:**
```
mutebhv 0x20        # Sets mute behavior to reduce sequence volume when muted
mutescale 40        # Scale volume by 31.5% when muted
ldchan 1, chan1     # Play channel 1 at 100% volume
delay 500
mute                # Channel 1 continues playing at 31.5% volume
```

**initchan** *mask*

**Description:** Initializes the indicated channels on the sequence player and prepares them for playing audio.  This configures the channels with the default soundfont, assigned mute behavior, and configured note allocation policy.  Each bit on the bitmask represents a different channel, with the most significant bit representing channel 16 and the least significant bit representing channel 1.

It is not strictly necessary to use `initchan` for the channels to be used, however the previously mentioned settings will not be configured on the channel and will be in an undefined state.  For obvious reasons, this is not recommended.

**Parameters:**
* `mask` [integer: 0-65535] - The bitmask defining the channels to initialize.

**Example:**
```
mutebhv 0x20
initchan 0b0000000100111110
ldchan 1, chan1
ldchan 2, chan2
ldchan 3, chan3
ldchan 4, chan4
ldchan 5, chan5
ldchan 8, chan8
```

**fadescale** *numerator*

**Description:** Specifies a scaling factor that should be applied to the final volume whenever the sequence is fading its volume.  Similar to `mutescale`, the provided numerator is divided by `127` and then stored in the sequence player until fading is activated.  Note that while it's possible to apply a value larger than 127, it will result in unusual behavior, as this byte is treated as signed and will result in a negative fraction.

**Parameters:**
* `numerator` [integer: 0-127] - The number to divide by 127

**Example:**
```
fadescale 89   # Sets the fade scale factor to 70%
volmode 1      # Sets the fade mode to gradual
vol 30         # Gradually fades to 23.6%
delay 100
volmode 2
```

**tempochg** *difference*

**Description:** Applies a delta to the sequence's current tempo based on the parameter.  The difference is treated as a signed byte and applied to the primary tempo on all subsequent ticks.  Subsequent calls of `tempochg` will change the delta applied to the primary tempo.  If the difference provided is 0, then the sequence will continue playing with the primary tempo.

**Parameters:**
* `difference` [integer: -128-127] - The change to apply to the main tempo

**Example:**
```
tempo 80         # Sets primary tempo to 80 BPM
ldchan 1, chan1
delay 400
tempochg 20      # Temporarily brings the tempo up to 100 BPM
delay 400
tempochg 0       # Returns the tempo back to 80 BPM
delay 400
```

**tempo** *tempo*

**Description:** Sets the primary tempo for the sequence.  If the tempo provided is 0, it will be set to 1 instead.  If the tempo is larger than the maximum tempo supported by the sequence player, it will be reduced to the highest tempo possible.

**Parameters:**
* `tempo` [integer: 0-255] - The primary tempo for the sequence

**Example:**
```
tempo 60         # Sets primary tempo to 60 BPM
ldchan 1, chan1
delay 100        # Plays for 100 ticks, or approximately 2 beats
```

**rtranspose** *transposition*

**Description:** Applies a relative transposition for notes played on all channels on this sequence player.  Subsequent calls of this command will continue to add the provided transposition to the current transposition on the sequence player.  By default, the sequence player's transposition is set to 0.

The player's transposition is stored as a 16-bit signed integer.  If you apply a transposition that's larger than 32767, this will result in an integer overflow.  In practice, this should not be an issue.

Sequence transpositions are ignored by drum and sound effects.

**Parameters:**
* `transposition` [integer: -128-127] - The relative change to apply to the current transposition

**Example:**
```
transpose 10   # Transposes the notes played up by 10 semitones
delay 50
rtranspose -5  # Changes the transposition to 5 semitones above base
delay 50
```

**transpose** *transposition*

**Description:** Applies a transposition for notes played on all channels on this sequence player.  Unlike `rtranspose`, this forces the transposition to the number of semitones.  By default, the sequence player's transposition is set to 0.

The player's transposition is stored as a 16-bit signed integer.  If you apply a transposition that's larger than 32767, this will result in an integer overflow.  In practice, this should not be an issue.

Sequence transpositions are ignored by drum and sound effects.

**Parameters:**
* `transposition` [integer: -128-127] - The number of semitones to transpose by

**Example:**
```
transpose 10   # Transposes the notes played up by 10 semitones
delay 50
```

**freenotelist**

**Description:** Frees the notes reserved on the sequence player and returns them back to the global note pool.

It's recommended to avoid using this command while audio is playing for the sequence, as it can cause undefined behavior.

**Parameters:** None.

**Example:**
```
ldchan 1, chan1
ldchan 9, chan9
delay 1500
freenotelist      # Frees any reserved notes on the sequence player.
```

**allocnotelist** *count*

**Description:** Frees any reserved notes assigned to the sequence player, then reserves the number of notes requested for the sequence player.  The notes in this pool can then be used by channels and note layers when needed, depending on the note allocation policy set.

It's recommended to avoid using this command while audio is playing on the sequence, as this can result in undefined behavior.

In general, it is not necessary to use this command, as by default the sequence player will use any free notes in the global note pool.  This command also is not useful for addressing issues with notes cutting out on channels in a sequence, as this applies to the sequence player itself.  However, it can be useful for preventing other sequences from stealing notes from this sequence.

**Parameters:**
* `count` [integer: 0-255] - The number of notes to allocate.

**Example:**
```
allocnotelist 10  # Reserves 10 notes to the sequence.
ldchan 5, chan5   # Regardless of the number of effects or sequences playing, 10 notes will always
ldchan 6, chan6   # be able to play at any point.
delay 500
freenotelist      # Releases the reserved notes.
delay 500         # Now the player may not be able to play notes if there aren't enough in the
                  # global pool.
```

#### Channel Subsections

##### Channel Registers

Every channel contains two registers that instructions can use for mathematical calculations, loading and storing values, and referencing data sections.  Like the sequence player, there is an eight-bit `$V` register that's used mainly for loading and storing values, and a sixteen-bit `$P` register used as an offset pointer for indirect references within the channel script.

##### IO Ports

Similar to the sequence player, each channel contains its own dedicated eight IO ports that are one byte wide.  These ports can be used to store or communicate values across different portions of the channel script.

Channels also have access to the sequence player's IO ports, allowing values to be sent across different levels as needed.  Keep in mind that since each channel's script runs in parallel, you will want to ensure that channels do not write back to the same IO port on the sequence player in a destructive fashion.  (These instructions are executed in a single thread, so it is safe for different channels to modify the same IO port if, for example, the script was configured to modify one bit while leaving the rest unmodified.)

##### Metainstructions

**.channel** *label name*

**Description:** Defines a label for the following subsection of channel instructions.  Note that it is considered an error if a channel label is followed with anything that is not a channel command.

**Example:**
```
.channel loop_start
ldlayer 1, legatobar
delay 500
jump loop_start        # Plays the same melody indefinitely.
```

##### Instructions

|    |   00   | 10        | 20     | 30    |  40   |  50   |  60  |  70      |  80       |   90       | A0 |  B0         |    C0        |     D0      | E0           |      F0       |
| -- | ------ | --------- | ------ | ----- | ----- | ----- | ---- | -------- | --------- | ---------- | -- | ----------- | ------------ | ----------- | ------------ | ------------- |
| 00 | cdelay | sample    | ldchan | stcio | ldcio | subio | ldio | stio     | testlayer | freelayer  |    | filter      |              | effects     | volexp       | freenotelist  |
| 01 | cdelay | sample    | ldchan | stcio | ldcio | subio | ldio | stio     | testlayer | freelayer  |    | freefilter  | instr        | notealloc   | vibfreqgrad  | allocnotelist |
| 02 | cdelay | sample    | ldchan | stcio | ldcio | subio | ldio | stio     | testlayer | freelayer  |    | ldseqtoptr  | dyntbl       | sustain     | vibdepthgrad | *rbltz        |
| 03 | cdelay | sample    | ldchan | stcio | ldcio | subio | ldio | stio     | testlayer | freelayer  |    | ldfilter    | short        | bend        | vibdelay     | *rbeqz        |
| 04 | cdelay | sample    | ldchan | stcio | ldcio | subio | ldio | stio     | testlayer | freelayer  |    | ptrtodyntbl | noshort      | reverb      | dyncall      | *rjump        |
| 05 | cdelay | sample    | ldchan | stcio | ldcio | subio | ldio | stio     | testlayer | freelayer  |    | dyntbltoptr | dyntbllookup |             | rvrbidx      | *bgez         |
| 06 | cdelay | sample    | ldchan | stcio | ldcio | subio | ldio | stio     | testlayer | freelayer  |    | dyntblv     | font         |             | samplebook   | *break        |
| 07 | cdelay | sample    | ldchan | stcio | ldcio | subio | ldio | stio     | testlayer | freelayer  |    | randtoptr   | stseq        | vibfreq     | ldparams     | *loopend      |
| 08 | cdelay | sampleptr | ldchan | stcio | ldcio | subio | ldio | rldlayer | ldlayer   | dynldlayer |    | randvel     | sub          | vibdepth    | params       | *loop         |
| 09 | cdelay | sampleptr | ldchan | stcio | ldcio | subio | ldio | rldlayer | ldlayer   | dynldlayer |    | randgate    | and          | releaserate | notepri      | *bltz         |
| 0A | cdelay | sampleptr | ldchan | stcio | ldcio | subio | ldio | rldlayer | ldlayer   | dynldlayer |    |             | mutebhv      | envelope    | stop         | *beqz         |
| 0B | cdelay | sampleptr | ldchan | stcio | ldcio | subio | ldio | rldlayer | ldlayer   | dynldlayer |    | ptradd      | ldseq        | transpose   | fontinstr    | *jump         |
| 0C | cdelay | sampleptr | ldchan | stcio | ldcio | subio | ldio | rldlayer | ldlayer   | dynldlayer |    | randptr     | ldi          | panweight   | reset        | *call         |
| 0D | cdelay | sampleptr | ldchan | stcio | ldcio | subio | ldio | rldlayer | ldlayer   | dynldlayer |    | instr       | stopchan     | pan         | gain         | *delay        |
| 0E | cdelay | sampleptr | ldchan | stcio | ldcio | subio | ldio | rldlayer | ldlayer   | dynldlayer |    |             | lditoptr     | preqscale   | bendfine     | *delay1       |
| 0F | cdelay | sampleptr | ldchan | stcio | ldcio | subio | ldio | rldlayer | ldlayer   | dynldlayer |    |             | stptrtoseq   | vol         |              | *end          |

Instructions marked with an asterisk (\*) are documented in the section *Branching Instructions*.

**cdelay** *ticks*

**Description:** Delays processing of the channel script by the provided number of ticks (up to 16).  A delay of 0 is effectively a no-op.

This command is functionally identical to `delay`, with a reduced range and encoded as a single byte for better script compression.

**Parameters:**
* `ticks` [integer: 0-15] - The number of ticks to delay further processing.

**Example:**
```
ldlayer 1, melody
ldlayer 2, harmony
vol 30             # Gradually fade in
cdelay 14
vol 45
cdelay 14
vol 60
cdelay 14
vol 75
```

**sample** *IO*

**Description:** Loads
