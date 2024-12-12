# Samplebank XML Format Specification

Samplebank XMLs describe a samplebank file that contains compressed waveform data. It specifies which sample files to include as well as certain global properties such as the index of this samplebank.

---

```xml
<SampleBank
    Name="<C Indentifier>"
    Index="<uint>"
    Medium="<Medium>"
    CachePolicy="<CachePolicy>"
    BufferBug="[bool]"
>
```
Begins a new samplebank.

**Attributes**

- **Name**: The name of the samplebank.
- **Index**: The index of the samplebank for the samplebank table. Must be a unique index for all samplebanks and pointers.
- **Medium**: The storage medium, from the `SampleMedium` enum.
- **CachePolicy**: The cache policy, from the `AudioCacheLoadType` enum.
- <ins>[Optional]</ins> **BufferBug**: Whether this samplebank suffers from a buffer clearing bug present in the original audio tools. For matching only.

**Tags**

-
    ```xml
    <Pointer
        Index="<uint>"
    />
    ```
    Create an alternate index that refers to this samplebank.

    **Attributes**

    - **Index**: The alternative index, must be unique among all samplebanks and pointers.

    ---

-
    ```xml
    <Sample
        Name="<C Identifier>"
        Path="<Path>"
    />
    ```
    Adds a **compressed** sample file to the samplebank. The sample should be single-channel and big-endian, in a format that is recognizable by the audio driver such as: pcm16, vadpcm, or half-frame vadpcm.

    **Attributes**

    - **Name**: Name of this sample. Must be a valid C language identifier.
    - **Path**: Path to aifc file relative to the project root (typically in `$(BUILD_DIR)/assets/audio/samples/`)

    ---

-
    ```xml
    <Blob
        Name="<C Identifier>"
        Path="<Path>"
    />
    ```
    Adds a binary blob to the samplebank. Intended for matching only when data cannot be identified.

    **Attributes**

    - **Name**: Name of this blob. Must be a valid C language identifier.
    - **Path**: Path to binary file, relative to the project root (typically in `$(BUILD_DIR)/assets/audio/samples/`)

    ---

```xml
</SampleBank>
```
---
