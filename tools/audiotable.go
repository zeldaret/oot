package main

import (
	"encoding/binary"
	"fmt"
	"io"
	"os"
)

type AudioTable struct {
	NumEntries uint16
	Unk1       uint16
	RomAddr    uint32
	Padding    [8]byte
}

type AudioTableEntry struct {
	RomAddr     uint32
	Size        uint32
	Medium      byte
	CachePolicy byte
	ShortData1  uint16
	ShortData2  uint16
	ShortData3  uint16
}

func readAudioTable(r io.Reader) (*AudioTable, []AudioTableEntry, error) {
	var ret AudioTable
	var entries []AudioTableEntry

	err := binary.Read(r, binary.BigEndian, &ret)
	if err != nil {
		return nil, nil, err
	}

	for idx := 0; idx < int(ret.NumEntries); idx++ {
		var entry AudioTableEntry
		err = binary.Read(r, binary.BigEndian, &entry)
		if err != nil {
			return nil, nil, err
		}
		entries = append(entries, entry)
	}

	return &ret, entries, nil
}

func printHeader() {
	fmt.Println(`#include "ultra64.h"`)
	fmt.Println(`#include "z64.h"`)
	fmt.Println(`#include "macros.h"`)
	fmt.Println()
}

func printAudioTable(name string, t *AudioTable, l []AudioTableEntry) {
	fmt.Println("AudioTable", name, "= {")
	fmt.Printf("    %d, %d, 0x%08X, {%d, %d, %d, %d, %d, %d, %d, %d}, {\n",
		t.NumEntries, t.Unk1, t.RomAddr, t.Padding[0], t.Padding[1],
		t.Padding[2], t.Padding[3], t.Padding[4], t.Padding[5],
		t.Padding[6], t.Padding[7],
	)
	fmt.Printf("    ")
	printentry := func(e AudioTableEntry) {
		fmt.Printf("    {0x%08X, %d, %d, %d, 0x%04X, 0x%04X, 0x%04X},\n",
			e.RomAddr, e.Size, e.Medium, e.CachePolicy, e.ShortData1,
			e.ShortData2, e.ShortData3,
		)
	}
	printentry(l[0])
	fmt.Println("    }")
	fmt.Println("};")

	fmt.Printf("AudioTableEntry %vEntries[%d] = {\n", name, len(l)-1)
	for idx := 1; idx < int(t.NumEntries); idx++ {
		printentry(l[idx])
	}
	fmt.Println("};")
	fmt.Println()
}

func audiotable(varname, fname string) {
	f, err := os.Open(fname)
	if err != nil {
		panic(err)
	}
	defer f.Close()

	name, entries, err := readAudioTable(f)
	if err != nil {
		panic(err)
	}

	printAudioTable(varname, name, entries)
}

func main() {
	os.Mkdir("assets/misc/sounds", 0755)
	os.Stdout, _ = os.Create("assets/misc/sounds/sounds.c")

	printHeader()
	audiotable("gSoundFontTable", "build/assets/data/sound_font_table.bin")

	buf, err := os.ReadFile("build/assets/data/sequence_font_table.bin")
	if err != nil {
		panic(err)
	}
	fmt.Printf("u8 gSequenceFontTable[] = {")
	for idx := 0; idx < len(buf); idx++ {
		if idx%8 == 0 {
			fmt.Printf("\n    ")
		}
		fmt.Printf("0x%02x, ", buf[idx])
	}
	fmt.Println("\n};")

	audiotable("gSequenceTable", "build/assets/data/sequence_table.bin")
	audiotable("gSampleBankTable", "build/assets/data/sample_bank_table.bin")
}
