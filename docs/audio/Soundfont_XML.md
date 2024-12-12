# Soundfont XML Format Specification

Soundfont XMLs describe the layout of a single soundfont. These package raw samples together into instruments, of which there are three kinds:
- **Effects**: These are simple sound effects that just play a single sample without any modulation.
- **Drums**: These define a MIDI-style percussion key map.
- **Instruments**: These are instruments that may be played at any key with up to three voices and may be modulated by an envelope.

In the specification, `Note Name`s can be either a MIDI note name e.g. `C4` or it may be a **Zelda64** note number, which are related to MIDI note numbers ($n$) by $(n - 21) \mod 128$.

---

```xml
<Soundfont
    Name="<C Identifier>"
    Index="<uint>"
    Medium="<Medium>"
    CachePolicy="<CachePolicy>"
    SampleBank="<Path>"
    Indirect="[uint]"
    SampleBankDD="[Path]"
    IndirectDD="[uint]"
    LoopsHaveFrames="[bool]"
    PadToSize="[uint]"
    NumInstruments="[uint]"
>
```
Begins a new soundfont.

**Attributes**
- **Name**: Soundfont symbol name. Must be a valid C identifier.
- **Index**: Soundfont index. Must be an integer.
- **Medium**: Storage medium. Must be an enum name from `SampleMedium`.
- **CachePolicy**: Cache policy. Must be an enum name from `AudioCacheLoadType`.
- **SampleBank**: Path to samplebank xml used by this soundfont.
- <ins>[Optional]</ins> **Indirect**: Pointer index if the samplebank is referenced indirectly.
- <ins>[Optional]</ins> **SampleBankDD**: Path to samplebank xml used for DD medium.
- <ins>[Optional]</ins> **IndirectDD**: Pointer index if the DD samplebank is referenced indirectly.
- <ins>[Optional]</ins> **LoopsHaveFrames**: Whether loops in this soundfont store the total frame count of the sample. Must be a boolean.
- <ins>[Optional]</ins> **PadToSize**: For matching only. Specifies the total file size the result output should be padded to.
- <ins>[Optional]</ins> **NumInstruments**: For matching only. Specifies the total number of instrument pointers. Usually this is automatically assigned based on `max(program_number) + 1` but some vanilla banks don't match this way.

**Tags**

-
    ```xml
    <Envelopes>
    ```
    Lists envelopes defined in this soundfont.

    **Attributes**

    N/A

    **Tags**

    -
        ```xml
        <Envelope
            Name="<C Identifier>"
            Release="<u8>"
        >
        ```
        Starts a new envelope.

        **Attributes**

        - **Name**: Unique name for this envelope. Must be a valid C identifier.
        - **Release**: Release rate index (into `gAudioCtx.adsrDecayTable`) for this envelope

        **Tags**

        -
            ```xml
            <Point
                Delay="<s16>"
                Arg="<s16>"
            />
            ```
            Add a point to the envelope at (delay, arg)

            **Attributes**

            - **Delay**: Duration until the next point
            - **Arg**: Value of the envelope at this point

            ---

        -
            ```xml
            <Disable/>
            ```
            Insert a ADSR_DISABLE command

            ---

        -
            ```xml
            <Hang/>
            ```
            Insert a ADSR_HANG command

            ---

        -
            ```xml
            <Goto
                Index="<uint>"
            />
            ```
            Insert a ADSR_GOTO command

            **Attributes**

            - **Index**: Index of the envelope point to jump to

            ---

        ```xml
        </Envelope>
        ```
        ---

    ```xml
    </Envelopes>
    ```
    ---

-
    ```xml
    <Samples
        IsDD="[Bool]"
        Cached="[Bool]"
    >
    ```
    Begins a list of samples used in this Soundfont.

    **Attributes**

    - <ins>[Optional]</ins> **IsDD**: Whether all the samples in the list are on the Disk Drive. The sample data will come from the samplebank `SampleBankDD`. **Default is `false`.** **NOTE this is not fully implemented, it should always be `false`.**
    - <ins>[Optional]</ins> **Cached**: Whether all the samples in the list should be added to the `usedSamples` cache. **Default is `false`.**

    **Tags**

    -
        ```xml
        <Sample
            Name="<C Identifier>"
            SampleRate="[Sample Rate]"
            BaseNote="[Note Name]"
            IsDD="[Bool]"
            Cached="[Bool]"
        />
        ```
        Declares a sample used in this soundfont.

        **Attributes**

        - **Name**: The name of this sample. A sample with this name must be present in the samplebank used by the soundfont.
        - <ins>[Optional]</ins> **SampleRate**: An overriding sample rate for this sample. **Default comes from the sample file.**
        - <ins>[Optional]</ins> **BaseNote**: An overriding root key for this sample. **Default comes from the sample file.**
        - <ins>[Optional]</ins> **IsDD**: Whether this sample is on the Disk Drive. The sample data will come from the samplebank `SampleBankDD`. **Default is `false`.** **NOTE this is not fully implemented, it should always be `false`.**
        - <ins>[Optional]</ins> **Cached**: Whether this sample should be added to the `usedSamples` cache. **Default is `false`.**

        ---

    ```xml
    </Samples>
    ```
    ---

-
    ```xml
    <Effects>
    ```
    Begins a list of sound effects to define for this soundfont. Sound effects correspond to simple sounds that cannot be played at different keys.

    **Attributes**

    N/A

    **Tags**

    -
        ```xml
        <Effect
            Name="<C Identifier>"
            Sample="<Sample Name>"
            SampleRate="[Sample Rate]"
            BaseNote="[Note Name]"
        />
        ```
        Defines a single sound effect.

        **Attributes**
        - **Name**: The name of the sound effect, the name is made available in sequence files in the form `SF{n}_{name}` where `n` is the index of this soundfont and `name` is this name. For example, if `n=0` and `name=ExampleEffect` the name to use in sequence files is `SF0_ExampleEffect`.
        - **Sample**: The name of the sample associated with this effect.
        - <ins>[Optional]</ins> **SampleRate**: An overriding sample rate for this effect. **Default comes from the sample definition.**
        - <ins>[Optional]</ins> **BaseNote**: An overriding root key for this effect. **Default comes from the sample definition.**

        ---

    ```xml
    </Effects>
    ```
    ---

-
    ```xml
    <Drums>
    ```
    Begins the percussion definitions for this soundfont. Percussion corresponds to the MIDI notion of percussion, where single samples are mapped across a range of keys.

    **Attributes**

    N/A

    **Tags**

    -
        ```xml
        <Drum
            Name="<C Identifier>"
            Note="[Note Name]"
            NoteStart="[Note Name]"
            NoteEnd="[Note Name]"
            Pan="<u8>"
            Envelope="<Envelope Name>"
            Release="[u8]"
            Sample="<Sample Name>"
            SampleRate="[Sample Rate]"
            BaseNote="[Note Name]"
        />
        ```
        Defines a single percussion range.

        **Attributes**
        - **Name**: The name of this sound. Definitions are emitted for sequence files in the form `SF{n}_{name}_{note}` for every note covered by this sound.
        - <ins>[Optional]</ins> **Note**: The key to map this sound to. Should not overlap with other definitions. **If this field is left unspecified, `NoteStart` and `NoteEnd` become required.**
        - <ins>[Optional]</ins> **NoteStart**: The first key that is mapped to this sound. Should not overlap with other definitions. **If this field is left unspecified, `Note` becomes required. If this field is specified, `NoteEnd` must also be specified.**
        - <ins>[Optional]</ins> **NoteEnd**: The last key that is mapped to this sound. Should not overlap with other definitions. **If this field is left unspecified, `Note` becomes required. If this field is specified, `NoteStart` must also be specified.**
        - **Pan**: The stereo weight for this sound. Center=`64`.
        - **Envelope**: The envelope to modulate the volume over time with. Must be defined in the `Envelopes` list.
        - <ins>[Optional]</ins> **Release**: An override for the envelope release rate. **Default is the release rate specified in the envelope definition**
        - **Sample**: The name of the sample to use.
        - <ins>[Optional]</ins> **SampleRate**: An overriding sample rate for this sound. **Default comes from the sample definition.**
        - <ins>[Optional]</ins> **BaseNote**: An overriding root key for this sound. **Default comes from the sample definition.**

        ---

    ```xml
    </Drums>
    ```
    ---

-
    ```xml
    <Instruments>
    ```
    Begins the instrument definitions for this soundfont. Instruments correspond to the MIDI notion of instruments, with up to 3 samples (voices) per instrument that must map to contiguous ranges of notes.

    **Attributes**

    N/A

    **Tags**

    -
        ```xml
        <Instrument
            ProgramNumber="<>"
            Name="<C Identifier>"
            Envelope="<Envelope Name>"
            Release="[u8]"

            Sample="<Sample Name>"
            SampleRate="[Sample Rate]"
            BaseNote="[Note Name]"

            RangeLo="[Note Name]"
            SampleLo="[Sample Name]"
            SampleRateLo="[Sample Rate]"
            BaseNoteLo="[Note Name]"

            RangeHi="[Note Name]"
            SampleHi="[Sample Name]"
            SampleRateHi="[Sample Rate]"
            BaseNoteHi="[Note Name]"
        />
        ```
        Defines an instrument.

        **Attributes**
        - **ProgramNumber**: MIDI Program Number for this instrument. Must be in the range `0 <= n <= 125`
        - **Name**: The name of this instrument.
        - **Envelope**: Envelope to use, identified by name.
        - <ins>[Optional]</ins> **Release**: Release rate index override. **Default release rate comes from the chosen envelope.**
        - **Sample**: The name of the middle sample to use for this instrument.
        - <ins>[Optional]</ins> **SampleRate**: Sample rate override for the middle sample. **Default is sourced from the sample properties.**
        - <ins>[Optional]</ins> **BaseNote**: Base note override for the middle sample. **Default is sourced from the sample properties.**
        - <ins>[Optional]</ins> **RangeLo**: The largest note for SampleLo. SampleLo will be used instead of Sample for keys in the range [0, RangeLo]. **If left unspecified, SampleLo must not be specified. If specified, SampleLo must be specified.**
        - <ins>[Optional]</ins> **SampleLo**: The name of the low sample to use for this instrument.
        - <ins>[Optional]</ins> **SampleRateLo**: Sample rate override for the low sample. **Default is sourced from the sample properties.**
        - <ins>[Optional]</ins> **BaseNoteLo**: Base note override for the low sample. **Default is sourced from the sample properties.**
        - <ins>[Optional]</ins> **RangeHi**: The smallest note for SampleHi. SampleHi will be used instead of Sample for keys in the range [RangeHi, 127]. **If left unspecified, SampleHi must not be specified. If specified, SampleHi must be specified.**
        - <ins>[Optional]</ins> **SampleHi**: The name of the high sample to use for this instrument.
        - <ins>[Optional]</ins> **SampleRateHi**: Sample rate override for the high sample. **Default is sourced from the sample properties.**
        - <ins>[Optional]</ins> **BaseNoteHi**: Base note override for the high sample. **Default is sourced from the sample properties.**

        ---

    ```xml
    </Instruments>
    ```
    ---

```xml
</Soundfont>
```
---
