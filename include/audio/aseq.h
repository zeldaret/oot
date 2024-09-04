/**
 *  Zelda64 Music Macro Language (MML) Assembler Definitions
 */
#ifndef ASEQ_H
#define ASEQ_H

/**
 *  IO Ports
 */

#define IO_PORT_0       0
#define IO_PORT_1       1
#define IO_PORT_2       2
#define IO_PORT_3       3
#define IO_PORT_4       4
#define IO_PORT_5       5
#define IO_PORT_6       6
#define IO_PORT_7       7



/**
 *  Parameter Constants
 */

#define TRUE   1
#define FALSE  0

#define PITCH_A0       0
#define PITCH_BF0      1
#define PITCH_B0       2
#define PITCH_C1       3
#define PITCH_DF1      4
#define PITCH_D1       5
#define PITCH_EF1      6
#define PITCH_E1       7
#define PITCH_F1       8
#define PITCH_GF1      9
#define PITCH_G1       10
#define PITCH_AF1      11
#define PITCH_A1       12
#define PITCH_BF1      13
#define PITCH_B1       14
#define PITCH_C2       15
#define PITCH_DF2      16
#define PITCH_D2       17
#define PITCH_EF2      18
#define PITCH_E2       19
#define PITCH_F2       20
#define PITCH_GF2      21
#define PITCH_G2       22
#define PITCH_AF2      23
#define PITCH_A2       24
#define PITCH_BF2      25
#define PITCH_B2       26
#define PITCH_C3       27
#define PITCH_DF3      28
#define PITCH_D3       29
#define PITCH_EF3      30
#define PITCH_E3       31
#define PITCH_F3       32
#define PITCH_GF3      33
#define PITCH_G3       34
#define PITCH_AF3      35
#define PITCH_A3       36
#define PITCH_BF3      37
#define PITCH_B3       38
#define PITCH_C4       39
#define PITCH_DF4      40
#define PITCH_D4       41
#define PITCH_EF4      42
#define PITCH_E4       43
#define PITCH_F4       44
#define PITCH_GF4      45
#define PITCH_G4       46
#define PITCH_AF4      47
#define PITCH_A4       48
#define PITCH_BF4      49
#define PITCH_B4       50
#define PITCH_C5       51
#define PITCH_DF5      52
#define PITCH_D5       53
#define PITCH_EF5      54
#define PITCH_E5       55
#define PITCH_F5       56
#define PITCH_GF5      57
#define PITCH_G5       58
#define PITCH_AF5      59
#define PITCH_A5       60
#define PITCH_BF5      61
#define PITCH_B5       62
#define PITCH_C6       63
#define PITCH_DF6      64
#define PITCH_D6       65
#define PITCH_EF6      66
#define PITCH_E6       67
#define PITCH_F6       68
#define PITCH_GF6      69
#define PITCH_G6       70
#define PITCH_AF6      71
#define PITCH_A6       72
#define PITCH_BF6      73
#define PITCH_B6       74
#define PITCH_C7       75
#define PITCH_DF7      76
#define PITCH_D7       77
#define PITCH_EF7      78
#define PITCH_E7       79
#define PITCH_F7       80
#define PITCH_GF7      81
#define PITCH_G7       82
#define PITCH_AF7      83
#define PITCH_A7       84
#define PITCH_BF7      85
#define PITCH_B7       86
#define PITCH_C8       87
#define PITCH_DF8      88
#define PITCH_D8       89
#define PITCH_EF8      90
#define PITCH_E8       91
#define PITCH_F8       92
#define PITCH_GF8      93
#define PITCH_G8       94
#define PITCH_AF8      95
#define PITCH_A8       96
#define PITCH_BF8      97
#define PITCH_B8       98
#define PITCH_C9       99
#define PITCH_DF9      100
#define PITCH_D9       101
#define PITCH_EF9      102
#define PITCH_E9       103
#define PITCH_F9       104
#define PITCH_GF9      105
#define PITCH_G9       106
#define PITCH_AF9      107
#define PITCH_A9       108
#define PITCH_BF9      109
#define PITCH_B9       110
#define PITCH_C10      111
#define PITCH_DF10     112
#define PITCH_D10      113
#define PITCH_EF10     114
#define PITCH_E10      115
#define PITCH_F10      116
#define PITCH_BFNEG1   117
#define PITCH_BNEG1    118
#define PITCH_C0       119
#define PITCH_DF0      120
#define PITCH_D0       121
#define PITCH_EF0      122
#define PITCH_E0       123
#define PITCH_F0       124
#define PITCH_GF0      125
#define PITCH_G0       126
#define PITCH_AF0      127

// Hardcoded Instruments
#define FONTANY_INSTR_SFX          126
#define FONTANY_INSTR_DRUM         127
// gWaveSamples[]
#define FONTANY_INSTR_SAWTOOTH     128
#define FONTANY_INSTR_TRIANGLE     129
#define FONTANY_INSTR_SINE         130
#define FONTANY_INSTR_SQUARE       131
#define FONTANY_INSTR_NOISE        132
#define FONTANY_INSTR_BELL         133
#define FONTANY_INSTR_8PULSE       134
#define FONTANY_INSTR_4PULSE       135
#define FONTANY_INSTR_ASM_NOISE    136



#ifdef _LANGUAGE_ASEQ

/**
 *  MML Version
 */

#ifndef MML_VERSION
    #error "MML version not defined, define MML_VERSION in the cpp invocation"
#endif

#define MML_VERSION_OOT  0
#define MML_VERSION_MM   1



/**
 *  IDENT
 */

.ident "Zelda64 Audio Sequence compiled with GNU AS + aseq.h"
#if (MML_VERSION == MML_VERSION_OOT)
    .ident "MML VERSION OOT"
#else
    .ident "MML VERSION MM"
#endif



/**
 *  Sequence IDs
 */

// Some sequence commands such as runseq would like sequence names for certain arguments.
// This facilitates making the sequence enum names available in sequence assembly files.

.set __SEQ_ID_CTR, 0

#define DEFINE_SEQUENCE(name, seqId, storageMedium, cachePolicy, seqFlags) \
    .internal seqId;                                                       \
    .set seqId, __SEQ_ID_CTR;                                              \
    .set __SEQ_ID_CTR, __SEQ_ID_CTR + 1

#define DEFINE_SEQUENCE_PTR(seqIdReal, seqId, storageMediumReal, cachePolicyReal, seqFlags) \
    .internal seqId;                                                                        \
    .set seqId, __SEQ_ID_CTR;                                                               \
    .set __SEQ_ID_CTR, __SEQ_ID_CTR + 1

#include "tables/sequence_table.h"

#undef DEFINE_SEQUENCE
#undef DEFINE_SEQUENCE_PTR

// Mark the counter as internal for the symbol table
.internal __SEQ_ID_CTR



/**
 *  STSEQ offsets
 */

#define STSEQ_HERE (. + 1)

// stores 1 byte (stseq)
#define STSEQ_LOOP_COUNT                    1
#define STSEQ_VOL                           1
#define STSEQ_PAN                           1
#define STSEQ_REVERB                        1
#define STSEQ_UNK_A4                        1
#define STSEQ_FILTER_IDX                    1
#define STSEQ_COMBFILTER_ARG1_HI            2
#define STSEQ_NOTEDV_OPCODE_PITCH           0
#define STSEQ_NOTEDV_DELAY                  1
#define STSEQ_NOTEDV_DELAY_HI               1
#define STSEQ_NOTEDV_DELAY_LO               2
#define STSEQ_NOTEDV_VELOCITY               3
#define STSEQ_NOTEDV_VELOCITY_2             2
#define STSEQ_LDI_IMM                       1
#define STSEQ_TRANSPOSITION                 1
#define STSEQ_PORTAMENTO_MODE               1
#define STSEQ_PORTAMENTO_PITCH              2
#define STSEQ_PORTAMENTO_TIME               3
#define STSEQ_NOTEPAN                       1
#define STSEQ_LDELAY                        1
#define STSEQ_STSEQ_IMM                     1
#define STSEQ_RAND                          1
#define STSEQ_SURROUNDEFFECT                1
#define STSEQ_GENERAL_OPCODE                0
#define STSEQ_STEREO                        1
#define STSEQ_BENDFINE                      1
#define STSEQ_NOTEDVG_OPCODE_PITCH          0
#define STSEQ_NOTEDVG_DELAY_HI              1
#define STSEQ_NOTEDVG_DELAY_LO              2
#define STSEQ_NOTEDVG_VELOCITY_LONGDELAY    3
#define STSEQ_NOTEDVG_DELAY_SHORT           1
#define STSEQ_NOTEDVG_VELOCITY_SHORTDELAY   2
#define STSEQ_GAIN                          1
#define STSEQ_INSTR                         1
#define STSEQ_VIBDEPTH                      1
#define STSEQ_SUB_IMM                       1
#define STSEQ_INITCHAN_HI                   1
#define STSEQ_INITCHAN_LO                   2
#define STSEQ_VOLEXP                        1
#define STSEQ_BEND                          1
#define STSEQ_LDSEQ_SEQ_ID                  1

// stores 2 bytes (stptrtoseq)
#define STSEQ_PTR_DYNTBL                    1
#define STSEQ_PTR_LDLAYER                   1
#define STSEQ_PTR_LDSEQ                     1
#define STSEQ_PTR_STSEQ                     2

// stores 2 bytes (so should be used with stptrtoseq)
#define STSEQ_ENVELOPE_POINT(n) (2 * (n))



/**
 *  Sequence Sections
 */

.internal ASEQ_MODE_NONE;       .set ASEQ_MODE_NONE,     0
.internal ASEQ_MODE_SEQUENCE;   .set ASEQ_MODE_SEQUENCE, 1
.internal ASEQ_MODE_CHANNEL;    .set ASEQ_MODE_CHANNEL,  2
.internal ASEQ_MODE_LAYER;      .set ASEQ_MODE_LAYER,    3
.internal ASEQ_MODE_TABLE;      .set ASEQ_MODE_TABLE,    4
.internal ASEQ_MODE_ARRAY;      .set ASEQ_MODE_ARRAY,    5
.internal ASEQ_MODE_FILTER;     .set ASEQ_MODE_FILTER,   6
.internal ASEQ_MODE_ENVELOPE;   .set ASEQ_MODE_ENVELOPE, 7
.internal ASEQ_MODE_BUFFER;     .set ASEQ_MODE_BUFFER,   8


/* Macros that change structure based on current section */
.macro _RESET_SECTION
    .purgem ldseq
    .macro ldseq
        .error "Invalid section for `ldseq`"
    .endm

    .purgem filter
    .macro filter
        .error "Invalid section for `filter`"
    .endm

    .purgem env
    .macro env
        .error "Invalid section for `env`"
    .endm
.endm

/* Dummy macro definitions for above so purgem doesn't error on first run */
.macro ldseq
.endm
.macro filter
.endm
.macro env
.endm

/* Instantiate above macros */
_RESET_SECTION

/**
 * Begin a sequence code section.
 */
.macro .sequence name
    _RESET_SECTION

    /* `ldseq` changes structure based on current section. */
    .purgem ldseq
    .macro ldseq ioPortNum, seqId, label
        _wr_cmd_id  ldseq, 0xB0,,,,,,,, \ioPortNum, 4
        _wr_u8      \seqId
        _wr_lbl     \label
    .endm

    .set ASEQ_MODE, ASEQ_MODE_SEQUENCE
    \name:
.endm

/**
 * Begin a channel code section.
 */
.macro .channel name
    _RESET_SECTION

    /* `ldseq` changes structure based on current section. */
    .purgem ldseq
    .macro ldseq label
        _wr_cmd_id  ldseq, ,0xCB,,,,,,, 0, 0
        _wr_lbl     \label
    .endm

    /* `filter` changes structure based on current section. */
    .purgem filter
    .macro filter lowpassCutoff, highpassCutoff
        _check_arg_bitwidth_u \lowpassCutoff, 4
        _check_arg_bitwidth_u \highpassCutoff, 4

        _wr_cmd_id filter, ,0xB3,,,,,,, 0, 0
        _wr_u8 (\lowpassCutoff << 4) | (\highpassCutoff)
    .endm

    /* `env` changes structure based on current section. */
    .purgem env
    .macro env label
        _wr_cmd_id env, ,0xDA,,,,,,, 0, 0
        _wr_lbl \label
    .endm

    .set ASEQ_MODE, ASEQ_MODE_CHANNEL
    \name:
.endm

/**
 * Begin a layer code section.
 */
.macro .layer name
    _RESET_SECTION

    /* `env` changes structure based on current section. */
    .purgem env
    .macro env label, arg
        _wr_cmd_id env, ,,0xCB,,,,,, 0, 0
        _wr_lbl \label
        _wr_u8 \arg
    .endm

    .set ASEQ_MODE, ASEQ_MODE_LAYER
    \name:
.endm

/**
 * Begin a table section.
 */
.macro .table name
    .balign 2
    .table_unaligned \name
.endm

/**
 * Begin a table section at an unaligned offset.
 */
.macro .table_unaligned name
    _RESET_SECTION

    .set ASEQ_MODE, ASEQ_MODE_TABLE
    \name:
.endm

/**
 * Begin an array section.
 */
.macro .array name
    _RESET_SECTION

    .set ASEQ_MODE, ASEQ_MODE_ARRAY
    \name:
.endm

/**
 * Begin a filter section.
 */
.macro .filter name
    _RESET_SECTION

    /* `filter` changes structure based on current section. */
    .purgem filter
    .macro filter a0, a1, a2, a3, a4, a5, a6, a7
        _wr_s16 \a0
        _wr_s16 \a1
        _wr_s16 \a2
        _wr_s16 \a3
        _wr_s16 \a4
        _wr_s16 \a5
        _wr_s16 \a6
        _wr_s16 \a7
    .endm

    .set ASEQ_MODE, ASEQ_MODE_FILTER
    .balign 16
    \name:
.endm

/**
 * Begin an envelope section.
 */
.macro .envelope name
    _RESET_SECTION

    .set ASEQ_MODE, ASEQ_MODE_ENVELOPE
    .balign 2
    \name:
.endm

/**
 * Begin a buffer section.
 */
.macro .buffer name
    _RESET_SECTION

    .set ASEQ_MODE, ASEQ_MODE_BUFFER
    .balign 16
    \name:
.endm


.macro _section_invalid macro_name
    .if ASEQ_MODE == ASEQ_MODE_SEQUENCE
        .error "Invalid section for `\macro_name`: Sequence"
    .elseif ASEQ_MODE == ASEQ_MODE_CHANNEL
        .error "Invalid section for `\macro_name`: Channel"
    .elseif ASEQ_MODE == ASEQ_MODE_LAYER
        .error "Invalid section for `\macro_name`: Layer"
    .elseif ASEQ_MODE == ASEQ_MODE_TABLE
        .error "Invalid section for `\macro_name`: Table"
    .elseif ASEQ_MODE == ASEQ_MODE_ARRAY
        .error "Invalid section for `\macro_name`: Array"
    .elseif ASEQ_MODE == ASEQ_MODE_FILTER
        .error "Invalid section for `\macro_name`: Filter"
    .elseif ASEQ_MODE == ASEQ_MODE_ENVELOPE
        .error "Invalid section for `\macro_name`: Envelope"
    .elseif ASEQ_MODE == ASEQ_MODE_BUFFER
        .error "Invalid section for `\macro_name`: Buffer"
    .else
        .error "Invalid section"
    .endif
.endm



/**
 *  Sequence Start/End
 */

.macro .startseq name
    /* Begin a sequence. */

    /* Write the sequence name into a special .name section */
    .pushsection .name, "", @note
        .asciz "\name"
        .balign 4
    .popsection

    /* Reset section and write start symbol. */
    .section .data, "wa", @progbits
    .set ASEQ_MODE, ASEQ_MODE_NONE
    .balign 16
    .global \name\()_Start
    \name\()_Start:
    _seq_start:
.endm

.macro .endseq name
    /* End a sequence. Align to 16 bytes, write end and size symbols. */
    .balign 16
    _seq_end:
    .global \name\()_End
    \name\()_End:
    .global \name\()_Size
    .set \name\()_Size, _seq_end - _seq_start
    /* Mark ASEQ_MODE as an internal symbol at the very end since it is redefined many times */
    .internal ASEQ_MODE
.endm



/**
 *  Parameters
 */

.macro _check_arg_bitwidth_u value, num
    /* Checks if the unsigned integer `value` fits within `num` bits. */
    .if (\value & ((1 << \num) - 1)) != \value
        .error "value \value out of range for unsigned \num\()-bit argument"
    .endif
.endm

.macro _check_arg_bitwidth_s value, num
    /* Checks if the signed integer `value` fits within `num` bits. */
    .if (\value & ((1 << (\num - 1)) - 1)) - (\value & (1 << (\num - 1))) != \value
        .error "value \value out of range for signed \num\()-bit argument"
    .endif
.endm

/* Long encoded numbers a la MIDI */
.macro _var_long x
    _check_arg_bitwidth_u \x, 15

    .byte (0x80 | (\x & 0x7f00) >> 8), (\x & 0xff)
.endm

/* Potentially long encoded numbers, but may not be. */
.macro _var x
    .if (\x >= 0x80)
        _var_long \x
    .else
        _check_arg_bitwidth_u \x, 8
        .byte \x
    .endif
.endm

.macro _wr8 value
    /* Write 8 bits */
    .byte (\value) & 0xFF
.endm

.macro _wr16 value
    /* Write 16 bits (big-endian) */
    .byte (\value) >> 8, (\value) & 0xFF
.endm

.macro _wr_s8 value
    /* Ensure the provided arg value fits in 8 bits (signed) */
    _check_arg_bitwidth_s \value, 8
    _wr8 \value
.endm

.macro _wr_u8 value
    /* Ensure the provided arg value fits in 8 bits (unsigned) */
    _check_arg_bitwidth_u \value, 8
    _wr8 \value
.endm

.macro _wr_s16 value
    /* Ensure the provided arg value fits in 16 bits (signed) */
    _check_arg_bitwidth_s \value, 16
    _wr16 \value
.endm

.macro _wr_u16 value
    /* Ensure the provided arg value fits in 16 bits (unsigned) */
    _check_arg_bitwidth_u \value, 16
    _wr16 \value
.endm

.macro _wr_lbl value
    /* Subtract sequence start label to get a numeric offset that can be written at assembling time */
    _wr16 (\value - _seq_start)
.endm

.macro _wr_16_rel value
    /* Turn label into relative offset.
     * Can't check encoding, complains about non-constant value.. */
    _wr16 (\value - $reladdr\@)
$reladdr\@:
.endm

.macro _wr_8_rel value
    /* Turn label into relative offset.
     * Can't check encoding, complains about non-constant value.. */
    _wr8 (\value - $reladdr\@)
$reladdr\@:
.endm

.macro _wr_cmd_id cmd_name, seq_id=-1, chan_id=-1, layer_id=-1, tbl_id=-1, arr_id=-1, filt_id=-1, env_id=-1, buf_id=-1, lo_bits, n_lo_bits
    /* Helper for writing command ids. Will write the command id appropriate for the current section, optionally
     * packing in low-order bits if a command uses them for an argument.                                         */
    _check_arg_bitwidth_u \lo_bits, \n_lo_bits

    .if ASEQ_MODE == ASEQ_MODE_SEQUENCE && \seq_id != -1
        _check_arg_bitwidth_u \seq_id, 8
        .byte (\seq_id & 0xFF) | (\lo_bits)
    .elseif ASEQ_MODE == ASEQ_MODE_CHANNEL && \chan_id != -1
        _check_arg_bitwidth_u \chan_id, 8
        .byte (\chan_id & 0xFF) | (\lo_bits)
    .elseif ASEQ_MODE == ASEQ_MODE_LAYER && \layer_id != -1
        _check_arg_bitwidth_u \layer_id, 8
        .byte (\layer_id & 0xFF) | (\lo_bits)
    .elseif ASEQ_MODE == ASEQ_MODE_TABLE && \tbl_id != -1
        _check_arg_bitwidth_u \tbl_id, 8
        .byte (\tbl_id & 0xFF) | (\lo_bits)
    .elseif ASEQ_MODE == ASEQ_MODE_ARRAY && \arr_id != -1
        _check_arg_bitwidth_u \arr_id, 8
        .byte (\arr_id & 0xFF) | (\lo_bits)
    .elseif ASEQ_MODE == ASEQ_MODE_FILTER && \filt_id != -1
        _check_arg_bitwidth_u \filt_id, 8
        .byte (\filt_id & 0xFF) | (\lo_bits)
    .elseif ASEQ_MODE == ASEQ_MODE_ENVELOPE && \env_id != -1
        _check_arg_bitwidth_u \env_id, 8
        .byte (\env_id & 0xFF) | (\lo_bits)
    .elseif ASEQ_MODE == ASEQ_MODE_BUFFER && \buf_id != -1
        _check_arg_bitwidth_u \buf_id, 8
        .byte (\buf_id & 0xFF) | (\lo_bits)
    .else
        _section_invalid \cmd_name
    .endif
.endm

.macro .ptr value
    _wr_lbl \value
.endm

.macro .ptr_raw value
    _wr16 \value
.endm



/**
 *  Instructions
 */

/**
 * end
 *
 *  Marks the end of an executable section.
 */
.macro end
    _wr_cmd_id  end, 0xFF,0xFF,0xFF,,,,,, 0, 0
.endm

/**
 * delay1
 *
 *  Delays for one tick.
 */
.macro delay1
    _wr_cmd_id  delay1, 0xFE,0xFE,,,,,,, 0, 0
.endm

/**
 * delay <delay:var>
 *
 *  Delays for `delay` ticks.
 */
.macro delay delay
    _wr_cmd_id  delay, 0xFD,0xFD,,,,,,, 0, 0
    _var        \delay
.endm

/**
 * call <label:lbl>
 *
 *  Unconditionally enters a subroutine at `label`. Execution will resume following this instruction once the
 *  subroutine encounters an `end` instruction.
 */
.macro call label
    _wr_cmd_id  call, 0xFC,0xFC,0xFC,,,,,, 0, 0
    _wr_lbl     \label
.endm

/**
 * jump <label:lbl>
 *
 *  Branches to `label` unconditionally.
 */
.macro jump label
    _wr_cmd_id  jump, 0xFB,0xFB,0xFB,,,,,, 0, 0
    _wr_lbl     \label
.endm

/**
 * beqz <label:lbl>
 *
 *  Branches to `label` if TR == 0.
 */
.macro beqz label
    _wr_cmd_id  beqz, 0xFA,0xFA,0xFA,,,,,, 0, 0
    _wr_lbl     \label
.endm

/**
 * bltz <label:lbl>
 *
 *  Branches to `label` if TR < 0.
 */
.macro bltz label
    _wr_cmd_id  beqz, 0xF9,0xF9,0xF9,,,,,, 0, 0
    _wr_lbl     \label
.endm

/**
 * loop <num:u8>
 *
 *  Begin a loop for `num` iterations.
 *
 *  Maximum loop nesting level is 4 - callDepth, where callDepth is the
 *  current subroutine nesting level.
 */
.macro loop num
    _wr_cmd_id  loop, 0xF8,0xF8,0xF8,,,,,, 0, 0
    _wr_u8      \num
.endm

/**
 * loopend
 *
 *  Indicates the end of a loop body. Whenever the instruction is executed
 *  the loop counter decrements and either branches back to the loop start
 *  if there are remaining iterations or exits the loop if all iterations
 *  have been completed.
 */
.macro loopend
    _wr_cmd_id  loopend, 0xF7,0xF7,0xF7,,,,,, 0, 0
.endm

/**
 * break
 *
 *  Immediately ends the current loop, but does not modify PC.
 *  Do not allow execution to later flow into loopend.
 */
.macro break
    _wr_cmd_id  break, 0xF6,0xF6,0xF6,,,,,, 0, 0
.endm

/**
 * bgez <label:lbl>
 *
 *  Branches to `label` if TR >= 0.
 *  `label` is a relative offset rather than an absolute offset, making it appropriate
 *  for use in position-independent code.
 *  Note that the range is reduced compared to absolute branches, only labels within a
 *  signed 8-bit (+/-128) range are reachable.
 */
.macro bgez label
    _wr_cmd_id  bgez, 0xF5,0xF5,0xF5,,,,,, 0, 0
    _wr_lbl     \label
.endm

/**
 * rjump <label:lbl>
 *
 *  Branches to `label` unconditionally.
 *  `label` is a relative offset rather than an absolute offset, making it appropriate
 *  for use in position-independent code.
 *  Note that the range is reduced compared to absolute jumps, only labels within a
 *  signed 8-bit (+/-128) range are reachable.
 */
.macro rjump label
    _wr_cmd_id  rjump, 0xF4,0xF4,0xF4,,,,,, 0, 0
    _wr_8_rel   \label
.endm

/**
 * rbeqz <label:lbl>
 *
 *  Branches to `label` if TR == 0.
 *  `label` is a relative offset rather than an absolute offset, making it appropriate
 *  for use in position-independent code.
 *  Note that the range is reduced compared to absolute branches, only labels within a
 *  signed 8-bit (+/-128) range are reachable.
 */
.macro rbeqz label
    _wr_cmd_id  rbeqz, 0xF3,0xF3,0xF3,,,,,, 0, 0
    _wr_8_rel   \label
.endm

/**
 * rbltz <label:lbl>
 *
 *  Branches to `label` if TR < 0.
 *  `label` is a relative offset rather than an absolute offset, making it appropriate
 *  for use in position-independent code.
 *  Note that the range is reduced compared to absolute branches, only labels within a
 *  signed 8-bit (+/-128) range are reachable.
 */
.macro rbltz label
    _wr_cmd_id  rbltz, 0xF2,0xF2,0xF2,,,,,, 0, 0
    _wr_8_rel   \label
.endm

/**
 * allocnotelist <num:u8>
 *
 *  Clears the channel note pool and reallocates it with space for `num` notes.
 */
.macro allocnotelist num
    _wr_cmd_id  allocnotelist, 0xF1,0xF1,,,,,,, 0, 0
    _wr_u8      \num
.endm

/**
 * freenotelist
 *
 *  Clears the channel note pool.
 */
.macro freenotelist
    _wr_cmd_id  freenotelist, 0xF0,0xF0,,,,,,, 0, 0
.endm

/**
 * unk_EF
 *
 *  Has no function.
 */
.macro unk_EF arg1, arg2
    _wr_cmd_id  unk_EF, 0xEF,,,,,,,, 0, 0
    _wr_s16     \arg1
    _w_u8       \arg2
.endm

/**
 * bendfine <amt:s8>
 *
 *  Fine-tunes the pitch bend amount for the channel or layer.
 */
.macro bendfine amt
    _wr_cmd_id  bendfine, ,0xEE,0xCE,,,,,, 0, 0
    _wr_s8      \amt
.endm

/**
 * gain <value:u8>
 *
 *  Sets the channel gain (multiplicative volume scale factor) to the provided qu4.4 fixed-point value
 */
.macro gain value
    _wr_cmd_id  gain, ,0xED,,,,,,, 0, 0
    _wr_u8      \value
.endm

/**
 * vibreset
 *
 *  Resets channel vibrato, filter, gain, sustain, etc. state
 */
.macro vibreset
    _wr_cmd_id  vibreset, ,0xEC,,,,,,, 0, 0
.endm

/**
 * fontinstr <fontId:u8> <instId:u8>
 *
 *  Updates the soundfont and instrument for the channel simultaneously.
 */
.macro fontinstr fontId, instId
    _wr_cmd_id  fontinstr, ,0xEB,,,,,,, 0, 0
    _wr_u8      \fontId
    _wr_u8      \instId
.endm

/**
 * notepri <priority1:u4> <priority2:u4>
 *
 *  Set note priorities.
 */
.macro notepri priority
    _wr_cmd_id  notepri, ,0xE9,,,,,,, 0, 0
    _wr_u8      \priority
.endm

/**
 * params <muteBhv:u8> <noteAllocPolicy:u8> <channelPriority:u8> <transposition:u8>
 *        <pan:u8> <panWeight:u8> <reverb:u8> <reverbIndex:u8>
 *
 *  Sets various channel parameters.
 */
.macro params muteBhv, noteAllocPolicy, channelPriority, transposition, pan, panWeight, reverb, reverbIndex
    _wr_cmd_id  params, ,0xE8,,,,,,, 0, 0
    _wr_u8      \muteBhv
    _wr_u8      \noteAllocPolicy
    _wr_u8      \channelPriority
    _wr_u8      \transposition
    _wr_u8      \pan
    _wr_u8      \panWeight
    _wr_u8      \reverb
    _wr_u8      \reverbIndex
.endm

/**
 * ldparams <label:lbl>
 *
 *  Sets various channel parameters by loading them from `label`. The data is ordered in the same way as the arguments
 *  in `params`.
 */
.macro ldparams label
    _wr_cmd_id  ldparams, ,0xE7,,,,,,, 0, 0
    _wr_lbl     \label
.endm

/**
 * samplebook <value:u8>
 *
 *  Sets the sample book mode.
 */
.macro samplebook value
    _wr_cmd_id  samplebook, ,0xE6,,,,,,, 0, 0
    _wr_u8      \value
.endm

/**
 * reverbidx <arg:u8>
 *
 *  Sets the channel reverb
 */
.macro reverbidx arg
    _wr_cmd_id  reverbidx, ,0xE5,,,,,,, 0, 0
    _wr_u8      \arg
.endm

/**
 * reverbidx <arg:u8>
 *
 *  Sets the channel vibrato delay
 */
.macro vibdelay arg
    _wr_cmd_id  vibdelay, ,0xE3,,,,,,, 0, 0
    _wr_u8      \arg
.endm

/**
 * vibdepthgrad <extentStart:u8> <extentTarget:u8> <extentChangeDelay:u8>
 *
 *  Sets the vibrato extent
 */
.macro vibdepthgrad arg0, arg1, arg2
    _wr_cmd_id  vibdepthgrad, ,0xE2,,,,,,, 0, 0
    _wr_u8      \arg0
    _wr_u8      \arg1
    _wr_u8      \arg2
.endm

/**
 * vibfreqgrad <rateStart:u8> <rateTarget:u8> <rateChangeDelay:u8>
 *
 *  Sets the vibrato rate
 */
.macro vibfreqgrad arg0, arg1, arg2
    _wr_cmd_id  vibfreqgrad, ,0xE1,,,,,,, 0, 0
    _wr_u8      \arg0
    _wr_u8      \arg1
    _wr_u8      \arg2
.endm

/**
 * volexp <amt:u8>
 *
 *  Changes the expression amount for the channel.
 */
.macro volexp amt
    _wr_cmd_id  volexp, ,0xE0,,,,,,, 0, 0
    _wr_u8      \amt
.endm

.macro transpose semitones
    _wr_cmd_id  transpose, 0xDF,0xDB,0xC2,,,,,, 0, 0
    _wr_s8      \semitones
.endm

.macro rtranspose semitones
    _wr_cmd_id  rtranspose, 0xDE,,,,,,,, 0, 0
    _wr_s8      \semitones
.endm

.macro freqscale arg
    _wr_cmd_id  freqscale, ,0xDE,,,,,,, 0, 0
    _wr_s16     \arg
.endm

/**
 * tempo <bpm:u8>
 *
 *  Changes the tempo of the sequence.
 */
.macro tempo bpm
    _wr_cmd_id  tempo, 0xDD,,,,,,,, 0, 0
    _wr_u8      \bpm
.endm

/**
 * pan <amt:u8>
 *
 *  Changes the pan amount for a channel.
 */
.macro pan pan
    /* pan can only take values in 0..127 */
    _check_arg_bitwidth_u \pan, 7
    _wr_cmd_id  pan, ,0xDD,,,,,,, 0, 0
    _wr_u8      \pan
.endm

.macro tempochg arg
    _wr_cmd_id  tempochg, 0xDC,,,,,,,, 0, 0
    _wr_s8      \arg
.endm

/**
 * panweight <weight:u8>
 *
 *  Controls how much the final pan value is influenced by the channel pan and layer pan.
 *  The layer pan is set by the drum instrument pan.
 *  A value of 0 ignores channel pan, while a value of 128 ignores layer pan.
 *
 *      finalPan = (weight * channelPan + (128 - weight) * layerPan) / 128
 */
.macro panweight weight
    /* pan can only take values in 0..127 */
    _check_arg_bitwidth_u \weight, 7
    _wr_cmd_id  panweight, ,0xDC,,,,,,, 0, 0
    _wr_u8      \weight
.endm

/**
 * vol <amt:u8>
 *
 *  Sets the volume amount for this sequence or channel.
 */
.macro vol amt
    _wr_cmd_id  vol, 0xDB,0xDF,,,,,,, 0, 0
    _wr_u8      \amt
.endm

.macro volmode arg
    _wr_cmd_id  volmode, 0xDA,,,,,,,, 0, 0
    _wr_s8      \arg
.endm

.macro volscale arg
    _wr_cmd_id  volscale, 0xD9,,,,,,,, 0, 0
    _wr_u8      \arg
.endm

/**
 * releaserate <release:u8>
 *
 *  Sets the envelope release rate for this channel or layer.
 */
.macro releaserate release
    _wr_cmd_id  releaserate, ,0xD9,0xCF,,,,,, 0, 0
    _wr_u8      \release
.endm

.macro vibdepth arg
    _wr_cmd_id  vibdepth, ,0xD8,,,,,,, 0, 0
    _wr_u8      \arg
.endm

.macro vibfreq arg
    _wr_cmd_id  vibfreq, ,0xD7,,,,,,, 0, 0
    _wr_u8      \arg
.endm

/**
 * initchan <bitmask:u16>
 *
 *  Initializes the channels marked in the provided bitmask.
 *
 *  e.g. initchan 0b1 initializes channel 0.
 *       initchan 0b101 initializes channels 0 and 2.
 */
.macro initchan bitmask
    _wr_cmd_id  initchan, 0xD7,,,,,,,, 0, 0
    _wr_u16     \bitmask
.endm

/**
 * freechan <bitmask:u16>
 *
 *  Frees the channels marked in the provided bitmask.
 */
.macro freechan bitmask
    _wr_cmd_id  freechan, 0xD6,,,,,,,, 0, 0
    _wr_u16     \bitmask
.endm

.macro mutescale arg
    _wr_cmd_id  mutescale, 0xD5,,,,,,,, 0, 0
    _wr_s8      \arg
.endm

.macro mute
    _wr_cmd_id  mute, 0xD4,,,,,,,, 0, 0
.endm

/**
 * reverb <amt:u8>
 *
 *  Sets the reverb amount for this channel.
 */
.macro reverb amt
    _wr_cmd_id  reverb, ,0xD4,,,,,,, 0, 0
    _wr_u8      \amt
.endm

/**
 * mutebhv <flags:u8>
 *
 *  Sets mute behavior for this sequence or channel.
 */
.macro mutebhv flags
    _wr_cmd_id  mutebhv, 0xD3,0xCA,,,,,,, 0, 0
    _wr_u8      \flags
.endm

/**
 * bend <amt:s8>
 *
 *  Sets the pitch bend amount for this channel.
 */
.macro bend amt
    _wr_cmd_id  bend, ,0xD3,,,,,,, 0, 0
    _wr_s8      \amt
.endm

.macro ldshortvelarr label
    _wr_cmd_id  ldshortvelarr, 0xD2,,,,,,,, 0, 0
    _wr_lbl     \label
.endm

/**
 * sustain <value:u8>
 * 
 *  Sets the adsr sustain value for this channel.
 */
.macro sustain value
    _wr_cmd_id  sustain, ,0xD2,,,,,,, 0, 0
    _wr_u8      \value
.endm

.macro ldshortgatearr label
    _wr_cmd_id  ldshortgatearr, 0xD1,,,,,,,, 0, 0
    _wr_lbl     \label
.endm

.macro notealloc arg
    _wr_cmd_id  notealloc, 0xD0,0xD1,,,,,,, 0, 0
    _wr_u8      \arg
.endm

.macro effects arg
    _wr_cmd_id  effects, ,0xD0,,,,,,, 0, 0
    _wr_u8      \arg
.endm

.macro stptrtoseq label
    _wr_cmd_id  stptrtoseq, ,0xCF,,,,,,, 0, 0
    _wr_lbl     \label
.endm

.macro ldptr lbl
    _wr_cmd_id  ldptr, ,0xCE,,,,,,, 0, 0
    _wr_lbl     \lbl
.endm

// ldptr but for immediates instead of labels
.macro ldptri imm
    _wr_cmd_id  ldptr, ,0xCE,,,,,,, 0, 0
    _wr_u16     \imm
.endm

/**
 * rand <max:u8>
 *
 *  Stores a random number in the range [0, max) into TR. If max is 0 the range is [0, 255]
 */
.macro rand max
    _wr_cmd_id  rand, 0xCE,0xB8,,,,,,, 0, 0
    _wr_u8      \max
.endm

.macro dyncall label=-1
    .if \label == -1
        _wr_cmd_id  dyncall, ,0xE4,,,,,,, 0, 0
    .else
        _wr_cmd_id  dyncall, 0xCD,,,,,,,, 0, 0
        _wr_lbl     \label
    .endif
.endm

/**
 * ldi <imm:u8>
 *
 *  Loads the immediate value `imm` into TR.
 */
.macro ldi imm
    _wr_cmd_id  ldi, 0xCC,0xCC,,,,,,, 0, 0
    _wr_u8      \imm
.endm

/**
 * and <imm:u8>
 *
 *  Computes TR = TR & imm
 */
.macro and imm
    _wr_cmd_id  and, 0xC9,0xC9,,,,,,, 0, 0
    _wr_u8      \imm
.endm

/**
 * sub <imm:u8>
 *
 *  Computes TR = TR - imm
 */
.macro sub imm
    _wr_cmd_id  sub, 0xC8,0xC8,,,,,,, 0, 0
    _wr_u8      \imm
.endm

/**
 * stseq <imm:u8> <label:lbl>
 *
 *  Stores the u8 value `TR + imm` to the location specified by `label`.
 */
.macro stseq imm, label
    _wr_cmd_id  stseq, 0xC7,0xC7,,,,,,, 0, 0
    _wr_u8      \imm
    _wr_lbl     \label
.endm

.macro stop
    _wr_cmd_id  stop, 0xC6,0xEA,,,,,,, 0, 0
.endm

/**
 * font <fontId:u8>
 *
 *  Set the current soundfont for this channel to `fontId`.
 */
.macro font fontId
    _wr_cmd_id  font, ,0xC6,,,,,,, 0, 0
    _wr_u8      \fontId
.endm

.macro scriptctr arg
    _wr_cmd_id  scriptctr, 0xC5,,,,,,,, 0, 0
    _wr_u16     \arg
.endm

.macro dyntbllookup
    _wr_cmd_id  dyntbllookup, ,0xC5,,,,,,, 0, 0
.endm

/**
 * runseq <seqPlayer:u8> <seqId:u8>
 *
 *  Plays the sequence seqId on seqPlayer 
 */
.macro runseq seqPlayer, seqId
    _wr_cmd_id  runseq, 0xC4,,,,,,,, 0, 0
    _wr_u8      \seqPlayer
    _wr_u8      \seqId
.endm

#if (MML_VERSION == MML_VERSION_MM)

    .macro mutechan arg0
        _wr_cmd_id  mutechan, 0xC3,,,,,,,, 0, 0
        _wr_s16     \arg0
    .endm

#endif

/**
 * noshort
 *
 *  Disable short notes encoding.
 */
.macro noshort
    _wr_cmd_id  noshort, ,0xC4,,,,,,, 0, 0
.endm

/**
 * short
 *
 *  Enable short notes encoding.
 */
.macro short
    _wr_cmd_id  short, ,0xC3,,,,,,, 0, 0
.endm

.macro dyntbl label
    _wr_cmd_id  dyntbl, ,0xC2,,,,,,, 0, 0
    _wr_lbl     \label
.endm

/**
 * instr <instNum:u8>
 *
 *  Set instrument `instNum` from the current soundfont as the active instrument for this channel or layer.
 */
.macro instr instNum
    _wr_cmd_id  instr, ,0xC1,0xC6,,,,,, 0, 0
    _wr_u8      \instNum
.endm

#if (MML_VERSION == MML_VERSION_MM)

    .macro unk_BE arg0
        _wr_cmd_id  unk_BE, ,0xBE,,,,,,, 0, 0
        _wr_u8      \arg0
    .endm

#endif

.macro randptr arg0, arg1
    #if (MML_VERSION == MML_VERSION_OOT)
        _wr_cmd_id  randptr, ,0xBD,,,,,,, 0, 0
    #else
        _wr_cmd_id  randptr, ,0xA8,,,,,,, 0, 0
    #endif
    _wr_u16         \arg0
    _wr_u16         \arg1
.endm

#if (MML_VERSION == MML_VERSION_MM)

    .macro samplestart arg0
        _wr_cmd_id  samplestart, ,0xBD,,,,,,, 0, 0
        _wr_u8      \arg0
    .endm

    .macro unk_AA
        _wr_cmd_id  unk_AA, ,0xAA,,,,,,, 0, 0
    .endm

    .macro unk_A7 arg0
        _wr_cmd_id  unk_A7, ,0xA7,,,,,,, 0, 0
        _var        \arg0
    .endm

    .macro unk_A6 arg0, arg1
        _wr_cmd_id  unk_A6, ,0xA6,,,,,,, 0, 0
        _var        \arg0
        _var        \arg1
    .endm

    .macro unk_A5
        _wr_cmd_id  unk_A5, ,0xA5,,,,,,, 0, 0
    .endm

    .macro unk_A4 arg0
        _wr_cmd_id  unk_A4, ,0xA4,,,,,,, 0, 0
        _var        \arg0
    .endm

    .macro unk_A3
        _wr_cmd_id  unk_A3, ,0xA3,,,,,,, 0, 0
    .endm

    .macro unk_A2 arg0
        _wr_cmd_id  unk_A2, ,0xA2,,,,,,, 0, 0
        _var        \arg0
    .endm

    .macro unk_A1
        _wr_cmd_id  unk_A1, ,0xA1,,,,,,, 0, 0
    .endm

    .macro unk_A0 arg0
        _wr_cmd_id  unk_A0, ,0xA0,,,,,,, 0, 0
        _var        \arg0
    .endm

#endif

.macro ptradd value
    _wr_cmd_id  ptradd, ,0xBC,,,,,,, 0, 0
    _wr_lbl     \value
.endm

// ptradd but for immediates instead of labels
.macro ptraddi value
    _wr_cmd_id  ptradd, ,0xBC,,,,,,, 0, 0
    _wr_u16     \value
.endm

/**
 * combfilter <arg0:u8> <arg1:u16>
 *
 *  Enable comb filter.
 *  TODO args? arg0=16,arg1=val<<8 maps well to midi chorus
 */
.macro combfilter arg0, arg1
    _wr_cmd_id  combfilter, ,0xBB,,,,,,, 0, 0
    _wr_u8      \arg0
    _wr_u16     \arg1
.endm

.macro randgate arg
    _wr_cmd_id  randgate, ,0xBA,,,,,,, 0, 0
    _wr_u8      \arg
.endm

.macro randvel arg
    _wr_cmd_id  randvel, ,0xB9,,,,,,, 0, 0
    _wr_u8      \arg
.endm

/**
 * rand <max:u16>
 *
 *  Stores a random number in the range [0, max) into TP. If max is 0 the range is [0, 65535]
 */
.macro randtoptr max
    _wr_cmd_id  randtoptr, ,0xB7,,,,,,, 0, 0
    _wr_u16     \max
.endm

.macro dyntblv
    _wr_cmd_id  dyntblv, ,0xB6,,,,,,, 0, 0
.endm

.macro dyntbltoptr
    _wr_cmd_id  dyntbltoptr, ,0xB5,,,,,,, 0, 0
.endm

.macro ptrtodyntbl
    _wr_cmd_id  ptrtodyntbl, ,0xB4,,,,,,, 0, 0
.endm

.macro ldseqtoptr label
    _wr_cmd_id  ldseqtoptr, ,0xB2,,,,,,, 0, 0
    _wr_lbl     \label
.endm

/**
 * freefilter
 *
 *  Invalidates the current active filter buffer.
 */
.macro freefilter
    _wr_cmd_id  freefilter, ,0xB1,,,,,,, 0, 0
.endm

/**
 * ldfilter <filter:lbl>
 *
 *  Sets the active filter buffer to the location specified by `filter`.
 */
.macro ldfilter filter
    _wr_cmd_id  ldfilter, ,0xB0,,,,,,, 0, 0
    _wr_lbl     \filter
.endm

/**
 * cdelay <delay:b4>
 *
 *  Short delay encoding for channel sections.
 *  Delays by `delay` ticks.
 */
.macro cdelay delay
    _wr_cmd_id  cdelay, ,0x00,,,,,,, \delay, 4
.endm

.macro sample arg, label
    _wr_cmd_id  sample, ,0x10,,,,,,, \arg, 3
    _wr_lbl     \label
.endm

/**
 * sampleptr <portNum:b3> <label:lbl>
 *
 *  TODO description
 *
 *  Load status is made available in CIO[CUR_CHANNEL][portNum].
 */
.macro sampleptr portNum, label
    _wr_cmd_id  sampleptr, ,0x18,,,,,,, \portNum, 3
    _wr_lbl     \label
.endm

/**
 * stcio <channelNum:b4> <portNum:u8>
 *
 *  Stores the contents of TR into CIO[channelNum][portNum]
 */
.macro stcio channelNum, portNum
    _wr_cmd_id  stcio, ,0x30,,,,,,, \channelNum, 4
    _wr_u8      \portNum
.endm

/**
 * ldcio <channelNum:b4> <portNum:u8>
 *
 *  Loads the contents of CIO[channelNum][portNum] into TR.
 */
.macro ldcio channelNum, portNum
    _wr_cmd_id  ldcio, ,0x40,,,,,,, \channelNum, 4
    _wr_u8      \portNum
.endm

/**
 * rldlayer <layerNum:b3> <label:rel_lbl>
 *
 *  Opens the note layer at `label` for index `layerNum`.
 *  `label` is a relative offset rather than an absolute offset, making it appropriate
 *  for use in position-independent code.
 */
.macro rldlayer layerNum, label
    _wr_cmd_id  rldlayer, ,0x78,,,,,,, \layerNum, 3
    _wr_16_rel  \label
.endm

/**
 * testlayer <layerNum:b3>
 *
 *  Tests if the layer specified by `layerNum` is finished.
 *  Stores result to TR:
 *   - 1 if layer is finished.
 *   - 0 if layer is not finished.
 *   - -1 if layer does not exist.
 */
.macro testlayer layerNum
    _wr_cmd_id  testlayer, ,0x80,,,,,,, \layerNum, 3
.endm

/**
 * ldlayer <layerNum:b3> <label:lbl>
 *
 *  Opens the note layer at `label` for index `layerNum`.
 */
.macro ldlayer layerNum, label
    _wr_cmd_id  ldlayer, ,0x88,,,,,,, \layerNum, 3
    _wr_lbl     \label
.endm

/**
 * dellayer <layerNum:b3>
 *
 *  Deletes the layer specified by index `layerNum`.
 */
.macro dellayer arg
    _wr_cmd_id  dellayer, ,0x90,,,,,,, \arg, 3
.endm

.macro dynldlayer arg
    _wr_cmd_id  dynldlayer, ,0x98,,,,,,, \arg, 3
.endm

/**
 * testchan <channelNum:b4>
 *
 *  Tests if the channel specified by index `channelNum` is enabled.
 *  Stores result to TR:
 *   - 0 if enabled
 *   - 1 if disabled
 */
.macro testchan channelNum
    _wr_cmd_id  testchan, 0x00,,,,,,,, \channelNum, 4
.endm

/**
 * stopchan <channelNum:b4>
 *
 *  Disables the channel specified by channel `channelNum`.
 */
.macro stopchan channelNum
    .if ASEQ_MODE == ASEQ_MODE_SEQUENCE
        _wr_cmd_id  stopchan, 0x40,,,,,,,, \channelNum, 4
    .else
        _wr_cmd_id  stopchan, ,0xCD,,,,,,, 0, 0
        _wr_u8      \channelNum
    .endif
.endm

/**
 * subio <portNum:b4>
 *
 *  In sequence section:
 *      Computes TR = TR - SIO[portNum]
 *
 *  In channel section:
 *      Computes TR = TR - CIO[CUR_CHANNEL][portNum]
 */
.macro subio portNum
    _wr_cmd_id  subio, 0x50,0x50,,,,,,, \portNum, 4
.endm

/**
 * ldres <portNum:b4> <resType:u8> <resId:u8>
 *
 *  Load Resource.
 *  resType (sync with SampleBankTableType)
 *   - 0 = Sequence
 *   - 1 = Font
 *   - 2 = Sample
 *
 *  resId is either a sequence id, soundfont id or samplebank id.
 *
 *  Load status is made available in SIO[portNum].
 */
.macro ldres portNum, resType, resId
    _wr_cmd_id  ldres, 0x60,,,,,,,, \portNum, 4
    _wr_u8      \resType
    _wr_u8      \resId
.endm

/**
 * Sequence Section:    stio <portNum:b4>
 * Channel Section:     stio <portNum:b3>
 *
 *  Moves the contents of TR to either SIO[portNum] or CIO[CUR_CHANNEL][portNum]
 *  depending on current section.
 */
.macro stio portNum
    .if ASEQ_MODE == ASEQ_MODE_CHANNEL
        _wr_cmd_id  stio, ,0x70,,,,,,, \portNum, 3
    .else
        _wr_cmd_id  stio, 0x70,,,,,,,, \portNum, 4
    .endif
.endm

/**
 * ldio <portNum:b4>
 *
 *  Moves the contents of either SIO[portNum] or CIO[CUR_CHANNEL][portNum] to TR
 *  depending on current section.
 */
.macro ldio portNum
    _wr_cmd_id  ldio, 0x80,0x60,,,,,,, \portNum, 4
.endm

/**
 * ldchan <channelNum:b4> <label:lbl>
 *
 *  Opens the sequence channel for index `channelNum` with data beginning at `label`.
 */
.macro ldchan channelNum, label
    _wr_cmd_id  ldchan, 0x90,0x20,,,,,,, \channelNum, 4
    _wr_lbl     \label
.endm

/**
 * rldchan <channelNum:b4> <label:rel_lbl>
 *
 *  Opens the sequence channel for index `channelNum` with data beginning at `label`.
 *  `label` is a relative offset rather than an absolute offset, making it appropriate
 *  for use in position-independent code.
 */
.macro rldchan channelNum, label
    _wr_cmd_id  rldchan, 0xA0,,,,,,,, \channelNum, 4
    _wr_16_rel  \label
.endm

/**
 * ldelay <delay:var>
 *
 *  Delay for `delay` ticks.
 */
.macro ldelay delay
    _wr_cmd_id  ldelay, ,,0xC0,,,,,, 0, 0
    _var        \delay
.endm

/**
 * Workaround for bugged delays using a larger encoding than is needed.
 * Acts like ldelay but forces a long var encoding even if the arg can fit
 * in a smaller encoding.
 * Should never be used when not required for matching purposes.
 */
.macro lldelay delay
    _wr_cmd_id  lldelay, ,0xFD,0xC0,,,,,, 0, 0
    _var_long   \delay
.endm

/**
 * shortvel <velocity:u8>
 *
 * Set velocity used by short notes
 */
.macro shortvel velocity
    _wr_cmd_id  shortvel, ,,0xC1,,,,,, 0, 0
    _wr_u8      \velocity
.endm

/**
 * shortdelay <delay:var>
 *
 * Set delay used by short notes
 */
.macro shortdelay delay
    _wr_cmd_id  shortdelay, ,,0xC3,,,,,, 0, 0
    _var        \delay
.endm

/**
 * legato
 *
 *  Enables legato on the current layer.
 */
.macro legato
    _wr_cmd_id  legato, ,,0xC4,,,,,, 0, 0
.endm

/**
 * nolegato
 *
 *  Disables legato on the current layer.
 */
.macro nolegato
    _wr_cmd_id  nolegato, ,,0xC5,,,,,, 0, 0
.endm

/**
 * portamento <mode> <target:u8> <time:u8/var>
 *
 *  The time argument is either a var or a u8 depending on mode
 */
.macro portamento mode, target, time
    _wr_cmd_id  portamento, ,,0xC7,,,,,, 0, 0
    _wr_u8      \mode
    _wr_u8      \target
    .if (\mode & 0x80) != 0
        _wr_u8  \time
    .else
        _var    \time
    .endif
.endm

/**
 * noportamento
 *
 *  Disables portamento on the current layer.
 */
.macro noportamento
    _wr_cmd_id  noportamento, ,,0xC8,,,,,, 0, 0
.endm

/**
 * shortgate <gateTime:u8>
 *
 *  Sets gate time for short notes
 */
.macro shortgate gateTime
    _wr_cmd_id  shortgate, ,,0xC9,,,,,, 0, 0
    _wr_u8      \gateTime
.endm

/**
 * notepan <pan:u8>
 * 
 *  Sets the pan for this layer. A value of 64 is center.
 */
.macro notepan pan
    /* pan can only take values in 0..127 */
    _check_arg_bitwidth_u \pan, 7
    _wr_cmd_id  notepan, ,,0xCA,,,,,, 0, 0
    _wr_u8      \pan
.endm

/**
 * nodrumpan
 *
 *  Instructs the layer to ignore the pan value in drum instruments and only
 *  use pan set in the layer.
 */
.macro nodrumpan
    _wr_cmd_id  nodrumpan, ,,0xCC,,,,,, 0, 0
.endm

#define STEREO_OPCODE 0xCD
.macro stereo type, strongR, strongL, strongRvrbR, strongRvrbL
    _check_arg_bitwidth_u \type, 2
    _check_arg_bitwidth_u \strongR, 1
    _check_arg_bitwidth_u \strongL, 1
    _check_arg_bitwidth_u \strongRvrbR, 1
    _check_arg_bitwidth_u \strongRvrbL, 1

    _wr_cmd_id  stereo, ,,STEREO_OPCODE,,,,,, 0, 0
    _wr_u8      (\type << 4) | (\strongR << 3) | (\strongL << 2) | (\strongRvrbR << 1) | (\strongRvrbL << 0)
.endm

.macro ldshortvel velocity
    _wr_cmd_id  ldshortvel, ,,0xD0,,,,,, \velocity, 4
.endm

.macro ldshortgate gateTime
    _wr_cmd_id  ldshortgate, ,,0xE0,,,,,, \gateTime, 4
.endm

#if (MML_VERSION == MML_VERSION_MM)

    .macro unk_F0 arg
        _wr_cmd_id  unk_F0, ,,0xF0,,,,,, 0, 0
        _wr_s16     \arg
    .endm

    #define SURROUNDEFFECT_OPCODE 0xF1
    .macro surroundeffect arg
        _wr_cmd_id  surroundeffect, ,,SURROUNDEFFECT_OPCODE,,,,,, 0, 0
        _wr_u8      \arg
    .endm

#endif

#define NOTEDVG_OPCODE 0x00
.macro notedvg pitch, delay, velocity, gateTime
    _wr_cmd_id  notedvg, ,,0x00,,,,,, \pitch, 6
    _var        \delay
    _wr_u8      \velocity
    _wr_u8      \gateTime
.endm

#define NOTEDV_OPCODE 0x40
.macro notedv pitch, delay, velocity
    _wr_cmd_id  notedv, ,,NOTEDV_OPCODE,,,,,, \pitch, 6
    _var        \delay
    _wr_u8      \velocity
.endm

/* workaround for bugs in vanilla sequences, force long encoding for delay */
.macro noteldv pitch, delay, velocity
    _wr_cmd_id  noteldv, ,,0x40,,,,,, \pitch, 6
    _var_long   \delay
    _wr_u8      \velocity
.endm

.macro notevg pitch, velocity, gateTime
    _wr_cmd_id  notevg, ,,0x80,,,,,, \pitch, 6
    _wr_u8      \velocity
    _wr_u8      \gateTime
.endm

.macro shortdvg pitch, delay
    _wr_cmd_id  shortdvg, ,,0x00,,,,,, \pitch, 6
    _var        \delay
.endm

.macro shortdv pitch
    _wr_cmd_id  shortdv, ,,0x40,,,,,, \pitch, 6
.endm

/**
 * shortvg <pitch:b6>
 *
 *  Since pitch is only 6 bits it can only hold values 0..63, for access to more values
 *  use `transpose` first to shift the base pitch.
 */
.macro shortvg pitch
    _wr_cmd_id  shortvg, ,,0x80,,,,,, \pitch, 6
.endm

/**
 * entry <label:lbl>
 *
 *  For dyntable entries.
 */
.macro entry label
    _wr_lbl \label
.endm

/**
 * point <delay:s16> <arg:s16>
 *
 *  Envelope point
 */
.macro point delay, arg
    .if ASEQ_MODE != ASEQ_MODE_ENVELOPE
        _section_invalid point
    .endif

    _wr_s16 \delay
    _wr_s16 \arg
.endm

/**
 * disable
 *
 *  Envelope disable
 */
.macro disable
    .if ASEQ_MODE != ASEQ_MODE_ENVELOPE
        _section_invalid disable
    .endif

    _wr_u16 0
    _wr_s16 0
.endm

/**
 * hang
 *
 *  Envelope hang
 */
.macro hang
    .if ASEQ_MODE != ASEQ_MODE_ENVELOPE
        _section_invalid hang
    .endif

    _wr_u16 0xFFFF // -1
    _wr_s16 0
.endm

/**
 * goto <index:s16>
 *
 *  Envelope goto
 */
.macro goto index
    .if ASEQ_MODE != ASEQ_MODE_ENVELOPE
        _section_invalid goto
    .endif

    _wr_u16 0xFFFE // -2
    _wr_s16 \index
.endm

/**
 * restart
 *
 *  Envelope restart
 */
.macro restart
    .if ASEQ_MODE != ASEQ_MODE_ENVELOPE
        _section_invalid restart
    .endif

    _wr_u16 0xFFFD // -3
    _wr_s16 0
.endm

#endif /* _LANGUAGE_ASEQ */

#endif /* ASEQ_H */
