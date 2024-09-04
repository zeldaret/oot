#!/usr/bin/env python3
# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0
#
#   Estimate (samplerate, basenote) from tuning
#
#   tuning = samplerate * 2 ** basenote
#

from typing import List, Tuple

from .util import f32, u32_to_f32, f32_to_u32

# Mirrors gPitchFrequencies in audio driver source.
# Indexed by z64 note numbers, g_pitch_frequencies[C4] = 1.0 (0x3F800000)
# Converted to their IEEE-754 binary representation to avoid any string -> float parser trouble as we need exact values.
g_pitch_frequencies = (
    0x3DD744F6, 0x3DE411C3, 0x3DF1A198, 0x3E000000, 0x3E079C84, 0x3E0FACE6, 0x3E1837F8, 0x3E21450F,
    0x3E2ADC0A, 0x3E350508, 0x3E3FC86D, 0x3E4B2FEC, 0x3E5744F6, 0x3E641206, 0x3E71A1DC, 0x3E800000,
    0x3E879C84, 0x3E8FACE6, 0x3E9837F8, 0x3EA1450F, 0x3EAADC0A, 0x3EB504E6, 0x3EBFC88E, 0x3ECB2FEC,
    0x3ED744F6, 0x3EE411E4, 0x3EF1A1BA, 0x3F000000, 0x3F079C84, 0x3F0FACD6, 0x3F1837F8, 0x3F214520,
    0x3F2ADC0A, 0x3F3504F7, 0x3F3FC88E, 0x3F4B2FFD, 0x3F574507, 0x3F6411F5, 0x3F71A1CB, 0x3F800000,
    0x3F879C7C, 0x3F8FACD6, 0x3F9837EF, 0x3FA14517, 0x3FAADC0A, 0x3FB504F7, 0x3FBFC886, 0x3FCB2FF5,
    0x3FD744FE, 0x3FE411F5, 0x3FF1A1C2, 0x40000000, 0x40079C7C, 0x400FACD6, 0x401837EF, 0x40214517,
    0x402ADC0A, 0x403504F7, 0x403FC88A, 0x404B2FF9, 0x405744FE, 0x406411F5, 0x4071A1C2, 0x40800000,
    0x40879C7E, 0x408FACD8, 0x409837F1, 0x40A14519, 0x40AADC0A, 0x40B504F5, 0x40BFC888, 0x40CB2FF9,
    0x40D74500, 0x40E411F5, 0x40F1A1C2, 0x41000000, 0x41079C7D, 0x410FACD7, 0x411837F1, 0x41214519,
    0x412ADC0A, 0x413504F5, 0x413FC889, 0x414B2FF8, 0x41574500, 0x416411F4, 0x4171A1C3, 0x41800000,
    0x41879C7D, 0x418FACD7, 0x419837F1, 0x41A14519, 0x41AADC0A, 0x41B504F5, 0x41BFC889, 0x41CB2FF8,
    0x41D74500, 0x41E411F4, 0x41F1A1C3, 0x42000000, 0x42079C7D, 0x420FACD7, 0x421837F1, 0x42214519,
    0x422ADC0A, 0x423504F5, 0x423FC889, 0x424B2FF8, 0x42574500, 0x426411F4, 0x4271A1C3, 0x42800000,
    0x42879C7D, 0x428FACD7, 0x429837F1, 0x42A14519, 0x42AADC0A, 0x3D6411C3, 0x3D71A198, 0x3D800000,
    0x3D879C41, 0x3D8FACE6, 0x3D9837B5, 0x3DA1450F, 0x3DAADBC6, 0x3DB504C5, 0x3DBFC86D, 0x3DCB302F,
)

# Names for pitch values indexed by z64 note numbers, pitch_names[39] = C4
pitch_names = (
                                                                          "A0", "BF0", "B0",
    "C1",  "DF1",  "D1",  "EF1",  "E1",  "F1",  "GF1",    "G1",    "AF1", "A1", "BF1", "B1",
    "C2",  "DF2",  "D2",  "EF2",  "E2",  "F2",  "GF2",    "G2",    "AF2", "A2", "BF2", "B2",
    "C3",  "DF3",  "D3",  "EF3",  "E3",  "F3",  "GF3",    "G3",    "AF3", "A3", "BF3", "B3",
    "C4",  "DF4",  "D4",  "EF4",  "E4",  "F4",  "GF4",    "G4",    "AF4", "A4", "BF4", "B4",
    "C5",  "DF5",  "D5",  "EF5",  "E5",  "F5",  "GF5",    "G5",    "AF5", "A5", "BF5", "B5",
    "C6",  "DF6",  "D6",  "EF6",  "E6",  "F6",  "GF6",    "G6",    "AF6", "A6", "BF6", "B6",
    "C7",  "DF7",  "D7",  "EF7",  "E7",  "F7",  "GF7",    "G7",    "AF7", "A7", "BF7", "B7",
    "C8",  "DF8",  "D8",  "EF8",  "E8",  "F8",  "GF8",    "G8",    "AF8", "A8", "BF8", "B8",
    "C9",  "DF9",  "D9",  "EF9",  "E9",  "F9",  "GF9",    "G9",    "AF9", "A9", "BF9", "B9",
    "C10", "DF10", "D10", "EF10", "E10", "F10",
                                                                                "BFNEG1", "BNEG1",
    "C0",  "DF0",  "D0",  "EF0",  "E0",  "F0",  "GF0",    "G0",    "AF0",
)

# Floats that are encountered in extraction but cannot be resolved to a match.
BAD_FLOATS = [0x3E7319E3]

def note_z64_to_midi(note : int) -> int:
    """
    Convert a z64 note number to MIDI note number.

    Middle C is 39 in z64, while it is 60 in MIDI.
    We want MIDI note numbers to store in the extracted sample files (aiff or wav)
    """
    return (21 + note) % 128

def recalc_tuning(rate : int, note : str) -> float:
    return f32(f32(rate / 32000.0) * u32_to_f32(g_pitch_frequencies[pitch_names.index(note)]))

def rate_from_tuning(tuning : float) -> Tuple[Tuple[str,int]]:
    """
    Decompose a tuning value into a pair (samplerate, basenote) that round-trips when ran through `recalc_tuning`
    """
    matches : List[Tuple[str,int]] = []
    diffs : List[Tuple[int, Tuple[str,int]]] = []

    tuning_bits : int = f32_to_u32(tuning)

    def test_value(note_val : int, nominal_rate : int, freq : float):
        if nominal_rate > 48000:
            # reject samplerate if too high
            return

        # recalc tuning and compare to original

        tuning2 : float = f32(f32(nominal_rate / 32000.0) * freq)

        diff : int = abs(f32_to_u32(tuning2) - tuning_bits)

        if diff == 0:
            matches.append((pitch_names[note_val], nominal_rate))
        else:
            diffs.append((diff, (pitch_names[note_val], nominal_rate)))

    # search gPitchFrequencies LUT one by one. We don't exit as soon as a match is found as in general this procedure
    # only recovers the correct (rate,note) pair up to multiples of 2, to get the final value we want to select the
    # "best" of these pairs by an essentially arbitrary ranking (cf `rank_rates_notes`)
    for note_val,freq_bits in enumerate(g_pitch_frequencies):
        freq : float = u32_to_f32(freq_bits)

        # compute the "nominal" samplerate for a given basenote by R = 32000 * (t / f)
        nominal_rate : int = int(f32(tuning / freq) * 32000.0)

        # test nominal value and +/-1
        test_value(note_val, nominal_rate,     freq)
        test_value(note_val, nominal_rate + 1, freq)
        test_value(note_val, nominal_rate - 1, freq)

    if len(matches) != 0:
        return tuple(matches)

    # no matches found... check if we expected this, otherwise flag it for special handling
    assert tuning_bits in BAD_FLOATS , f"0x{tuning_bits:08X}"

    # just take the closest match and hack it in the soundfont compiler
    hack_rate = sorted(diffs, key=lambda e : e[0])[0]
    return (hack_rate[1],)

def rank_rates_notes(layouts):

    def rank_rate_note(rate, notes):
        """
        Arbitrarily rank the input samplerate + note numbers, based on what is most likely.
        """
        rank = 0

        if 'C4' in notes and rate > 10000:
            rank += 10000
        elif 'C2' in notes and rate > 10000:
            rank += 9500
        elif 'D3' in notes and rate > 10000:
            rank += 8500
        elif 'D4' in notes and rate > 10000:
            rank += 8000
        elif 'G3' in notes:
            rank += 2000
        elif 'F3' in notes:
            rank += 25
        elif 'C0' in notes:
            rank += 50
        elif 'BF2' in notes:
            rank += 30
        elif 'B3' in notes:
            rank += 25
        elif 'BF1' in notes:
            rank += 25
        elif 'E2' in notes:
            rank += 20
        elif 'F6' in notes:
            rank += 15
        elif 'GF2' in notes:
            rank += 10

        rank += {
            32000 : 200,
            16000 : 100,
            24000 : 50,
            22050 : 30,
            20000 : 28,
            44100 : 25,
            12000 : 15,
            8000  : 10,
            15950 : 5,
            20050 : 5,
            31800 : 5,
        }.get(rate, 0)

        return rank

    # Input should not be empty
    assert len(layouts) != 0

    if len(layouts) == 1:
        # No ranking needed, there is only one possible option
        return layouts[0]

    # Ranking is needed, rank each layout
    ranked = list(sorted(layouts, key=lambda L : rank_rate_note(*L), reverse=True))

    # Ensure the ranking produced a unique best option
    assert rank_rate_note(*ranked[0]) != rank_rate_note(*ranked[1]) , ranked

    # Output best
    return ranked[0]

if __name__ == '__main__':
    import argparse

    parser = argparse.ArgumentParser(description="Given either a (rate,note) or a tuning, compute all matching rates/notes.")
    parser.add_argument("-t", dest="tuning", required=False, default=None, type=float, help="Tuning value (float)")
    parser.add_argument("-r", dest="rate", required=False, default=None, type=int, help="Sample rate (integer)")
    parser.add_argument("-n", dest="note", required=False, default=None, type=str, help="Base note (note name)")
    parser.add_argument("--show-result", required=False, default=False, action="store_true", help="Show recalculated tuning value")
    args = parser.parse_args()

    if args.tuning is not None:
        # Take input tuning
        tuning = args.tuning
    elif args.rate is not None and args.note is not None:
        # Calculate target tuning from input rate and note
        tuning : float = recalc_tuning(args.rate, args.note)
    else:
        # Insufficient arguments
        parser.print_help()
        raise SystemExit("Must specify either -t or both -r and -n.")

    notes_rates : Tuple[Tuple[str,int]] = rate_from_tuning(tuning)

    for note,rate in notes_rates:
        if args.show_result:
            print(rate, note, "->", recalc_tuning(rate, note))
        else:
            print(rate, note)
