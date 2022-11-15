/**
 * @file mempak.c
 *
 * This file implements an interface for a controller memory pak filesystem (pfs), with operations to create, delete,
 * read, write and check the size of files, as well as obtain a listing of which files currently exist.
 *
 * Each file is assigned an uppercase ASCII letter as an identifier, the game name for each is marked as
 * 'ZELDA DEMO TOOL', encoded according to the N64 Font Code described in section 26.3 of the N64 Programming Manual.
 */
#include "global.h"

#define MEMPAK_MAX_FILES 11

OSPfs sMempakPfsHandle;
s32 sMempakFreeBytes;
s32 sMempakFiles[MEMPAK_MAX_FILES];

u16 sMempakCompanyCode = 1;
u32 sMempakGameCode = 1;

// NCH is a heavily abbreviated "N64 font code CHaracter"
// Conversion from A-Z to N64 Font Code
#define NCH(c) ((c)-0x27)
// Conversion from spaces to N64 Font Code
#define NCH_SPC (0x0F)

u8 sMempakGameName[PFS_FILE_NAME_LEN] = {
    NCH('Z'), NCH('E'), NCH('L'), NCH('D'), NCH('A'), NCH_SPC,  NCH('D'), NCH('E'),
    NCH('M'), NCH('O'), NCH_SPC,  NCH('T'), NCH('O'), NCH('O'), NCH('L'), NCH_SPC,
};

u8 sMempakExtName[PFS_FILE_EXT_LEN] = { 0 };

/**
 * Initializes the memory pak filesystem for a memory pak in the controller plugged into the specified port. Subsequent
 * memory pak operations will use the same controller port.
 *
 * @return true if the operation completed successfully, false otherwise
 */
s32 Mempak_Init(s32 controllerNum) {
    OSMesgQueue* serialEventQueue;
    s32 pad;
    s32 ret = false;

    serialEventQueue = PadMgr_AcquireSerialEventQueue(&gPadMgr);

    if (osPfsInitPak(serialEventQueue, &sMempakPfsHandle, controllerNum) == 0) {
        ret = true;
    }

    osPfsFreeBlocks(&sMempakPfsHandle, &sMempakFreeBytes);
    PadMgr_ReleaseSerialEventQueue(&gPadMgr, serialEventQueue);
    return ret;
}

s32 Mempak_GetFreeBytes(s32 controllerNum) {
    return sMempakFreeBytes;
}

/**
 * Checks if the files identified by letters between `start` and `end` (inclusive) exist on the memory pak.
 *
 * This must be called before performing any individual file operations.
 *
 * @param controllerNum Unused, the controller used is that which was last passed to `Mempak_Init`
 * @param start Start file letter
 * @param end End file letter (inclusive)
 * @return a bitfield where set bits indicate that the file exists
 */
s32 Mempak_FindFiles(s32 controllerNum, char start, char end) {
    OSMesgQueue* serialEventQueue;
    s32 error;
    char letter;
    u32 bit = 1;
    s32 bits = 0;

    serialEventQueue = PadMgr_AcquireSerialEventQueue(&gPadMgr);

    for (letter = start; letter <= end; letter++) {
        sMempakExtName[0] = NCH(letter);

        error = osPfsFindFile(&sMempakPfsHandle, sMempakCompanyCode, sMempakGameCode, sMempakGameName, sMempakExtName,
                              &sMempakFiles[MEMPAK_LETTER_TO_INDEX(letter)]);
        if (error == 0) {
            bits |= bit;
        } else {
            sMempakFiles[MEMPAK_LETTER_TO_INDEX(letter)] = -1;
        }

        bit <<= 1;
        osSyncPrintf("mempak: find '%c' (%d)\n", letter, error);
    }

    PadMgr_ReleaseSerialEventQueue(&gPadMgr, serialEventQueue);
    osSyncPrintf("mempak: find '%c' - '%c' %02x\n", start, end, bits);
    return bits;
}

/**
 * Writes data to the file identified with `letter`.
 *
 * @param controllerNum Unused, the controller used is that which was last passed to `Mempak_Init`
 * @param letter Memory pak file letter, in the range 'A' to ('A' + MEMPAK_MAX_FILES)
 * @param buffer Buffer containing data to write
 * @param offset Offset into the file to write to
 * @param size Size in bytes
 * @return true if the operation completed successfully, false otherwise
 */
s32 Mempak_Write(s32 controllerNum, char letter, void* buffer, s32 offset, s32 size) {
    OSMesgQueue* serialEventQueue;
    s32 error;
    s32 ret = false;
    s32 pad;

    serialEventQueue = PadMgr_AcquireSerialEventQueue(&gPadMgr);

    if (size < sMempakFreeBytes) {
        error = osPfsReadWriteFile(&sMempakPfsHandle, sMempakFiles[MEMPAK_LETTER_TO_INDEX(letter)], PFS_WRITE, offset,
                                   size, buffer);
        if (error == 0) {
            ret = true;
        }
        osSyncPrintf("mempak: write %d byte '%c' (%d)->%d\n", size, letter,
                     sMempakFiles[MEMPAK_LETTER_TO_INDEX(letter)], error);
    }
    PadMgr_ReleaseSerialEventQueue(&gPadMgr, serialEventQueue);
    return ret;
}

/**
 * Reads data from the file identified with `letter`.
 *
 * @param controllerNum Unused, the controller used is that which was last passed to `Mempak_Init`
 * @param letter Memory pak file letter, in the range 'A' to ('A' + MEMPAK_MAX_FILES)
 * @param buffer Buffer to read data into
 * @param offset Offset into the file to read from
 * @param size Size in bytes
 * @return true if the operation completed successfully, false otherwise
 */
s32 Mempak_Read(s32 controllerNum, char letter, void* buffer, s32 offset, s32 size) {
    OSMesgQueue* serialEventQueue;
    s32 error;
    s32 ret = false;
    s32 pad;

    serialEventQueue = PadMgr_AcquireSerialEventQueue(&gPadMgr);

    if (size < sMempakFreeBytes) {
        error = osPfsReadWriteFile(&sMempakPfsHandle, sMempakFiles[MEMPAK_LETTER_TO_INDEX(letter)], PFS_READ, offset,
                                   size, buffer);
        if (error == 0) {
            ret = true;
        }
        osSyncPrintf("mempak: read %d byte '%c' (%d)<-%d\n", size, letter, sMempakFiles[MEMPAK_LETTER_TO_INDEX(letter)],
                     error);
    }
    PadMgr_ReleaseSerialEventQueue(&gPadMgr, serialEventQueue);
    return ret;
}

/**
 * Creates a new file on the memory pak.
 *
 * @param controllerNum Unused, the controller used is that which was last passed to `Mempak_Init`
 * @param letter Memory pak file letter, in the range 'A' to ('A' + MEMPAK_MAX_FILES).
 *      If this points to a valid file letter the new file will be created using that letter, otherwise it will create
 *      a file using the first free letter and return it through this argument. If no letters are free, the last letter
 *      ('A' + MEMPAK_MAX_FILES - 1) is used.
 * @param size File size
 * @return true if the operation completed successfully, false otherwise
 */
s32 Mempak_CreateFile(s32 controllerNum, char* letter, s32 size) {
    OSMesgQueue* serialEventQueue;
    s32 error;
    s32 ret = false;
    s32 i;
    s32 pad;

    serialEventQueue = PadMgr_AcquireSerialEventQueue(&gPadMgr);

    if (*letter >= MEMPAK_INDEX_TO_LETTER(0) && *letter < MEMPAK_INDEX_TO_LETTER(MEMPAK_MAX_FILES)) {
        // Create file with specific letter

        sMempakExtName[0] = NCH(*letter);
        if (-1 == sMempakFiles[MEMPAK_LETTER_TO_INDEX(*letter)]) {
            // File does not already exist

            error = osPfsAllocateFile(&sMempakPfsHandle, sMempakCompanyCode, sMempakGameCode, sMempakGameName,
                                      sMempakExtName, size, &sMempakFiles[MEMPAK_LETTER_TO_INDEX(*letter)]);
            if (error == 0) {
                ret = true;
            }
            osSyncPrintf("mempak: alloc %d byte '%c' (%d)\n", size, *letter, error);
        } else {
            // File already exists, delete then alloc

            sMempakExtName[0] = NCH(*letter);
            if (osPfsDeleteFile(&sMempakPfsHandle, sMempakCompanyCode, sMempakGameCode, sMempakGameName,
                                sMempakExtName) == 0) {
                ret = true;
            }
            error = osPfsAllocateFile(&sMempakPfsHandle, sMempakCompanyCode, sMempakGameCode, sMempakGameName,
                                      sMempakExtName, size, &sMempakFiles[MEMPAK_LETTER_TO_INDEX(*letter)]);
            if (error == 0) {
                ret |= true;
            }
            osSyncPrintf("mempak: resize %d byte '%c' (%d)\n", size, *letter, error);
        }
    } else {
        // Find first free letter and create a file identified by it
        for (i = 0; i < MEMPAK_MAX_FILES - 1; i++) {
            if (sMempakFiles[i] == -1) {
                break;
            }
        }
        *letter = MEMPAK_INDEX_TO_LETTER(i);

        sMempakExtName[0] = NCH(*letter);
        error = osPfsAllocateFile(&sMempakPfsHandle, sMempakCompanyCode, sMempakGameCode, sMempakGameName,
                                  sMempakExtName, size, &sMempakFiles[i]);
        osSyncPrintf("mempak: alloc %d byte '%c' (%d) with search\n", size, *letter, error);
        if (error == 0) {
            ret = true;
        }
    }
    PadMgr_ReleaseSerialEventQueue(&gPadMgr, serialEventQueue);
    return ret;
}

/**
 * Deletes the file identified with `letter`.
 *
 * @param controllerNum Unused, the controller used is that which was last passed to `Mempak_Init`
 * @param letter Memory pak file letter, in the range 'A' to ('A' + MEMPAK_MAX_FILES)
 * @return true if the operation completed successfully, false otherwise
 */
s32 Mempak_DeleteFile(s32 controllerNum, char letter) {
    OSMesgQueue* serialEventQueue;
    s32 error;
    s32 ret = false;

    serialEventQueue = PadMgr_AcquireSerialEventQueue(&gPadMgr);

    sMempakExtName[0] = NCH(letter);
    error = osPfsDeleteFile(&sMempakPfsHandle, sMempakCompanyCode, sMempakGameCode, sMempakGameName, sMempakExtName);
    if (error == 0) {
        ret = true;
    }
    osSyncPrintf("mempak: delete '%c' (%d)\n", letter, error);

    PadMgr_ReleaseSerialEventQueue(&gPadMgr, serialEventQueue);
    return ret;
}

/**
 * Gets the size of the file identified with `letter`.
 *
 * @param controllerNum Unused, the controller used is that which was last passed to `Mempak_Init`
 * @param letter Memory pak file letter, in the range 'A' to ('A' + MEMPAK_MAX_FILES)
 * @return the size of the file, or 0 if the operation failed for any reason
 */
s32 Mempak_GetFileSize(s32 controllerNum, char letter) {
    OSMesgQueue* serialEventQueue = PadMgr_AcquireSerialEventQueue(&gPadMgr);
    OSPfsState state;
    s32 error = osPfsFileState(&sMempakPfsHandle, sMempakFiles[MEMPAK_LETTER_TO_INDEX(letter)], &state);
    s32 pad;

    PadMgr_ReleaseSerialEventQueue(&gPadMgr, serialEventQueue);

    if (error != 0) {
        return 0;
    }
    return state.file_size;
}
