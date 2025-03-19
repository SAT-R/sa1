#include "global.h"
#include "flags.h"
#include "lib/agb_flash/agb_flash.h"
#include "game/save.h"

struct SaveSectorHeader {
    u32 security, version;
};

struct SaveSectorData {
    /* 0x000 */ struct SaveSectorHeader header;

    /* 0x008 */ u8 filler8[0x424];

    /* 0x42C */ u32 checksum;
};

struct SaveGame gLoadedSaveGame = {};

#define CalcChecksum(save)                                                                                                                 \
    ({                                                                                                                                     \
        u32 j, checksum = 0;                                                                                                               \
        for (j = 0; j < SECTOR_CHECKSUM_OFFSET; j += sizeof(uintptr_t)) {                                                                  \
            checksum += *(uintptr_t *)((void *)(save) + j);                                                                                \
        }                                                                                                                                  \
        checksum;                                                                                                                          \
    })

#define SECTOR_CHECKSUM_OFFSET offsetof(struct SaveSectorData, checksum)
#define NUM_SAVE_SECTORS       10

// If the sector's security field is not this value then the sector is either invalid or
// empty.
#if (GAME == GAME_SA1)
#define SECTOR_SECURITY_NUM 0x4F524950
#elif (GAME == GAME_SA2)
#define SECTOR_SECURITY_NUM 0x4547474D
#elif (GAME == GAME_SA3)
#define SECTOR_SECURITY_NUM 0x47544E4C
#endif

extern s8 ALIGNED(4) gUnknown_0300508C;

// (100.0%) https://decomp.me/scratch/9fyQQ
bool32 RegisterTimeRecord(TimeRecord newRecord)
{
    bool32 isFirstPlace = FALSE;

    u32 i, i2;

    for (i = 0; i < TIME_RECORDS_PER_COURSE; i++) {
#ifndef NON_MATCHING
        register TimeRecord record asm("r1");
#else
        TimeRecord record;
#endif
        TimeRecord tempRecord;
        record = LOADED_SAVE->timeRecords.table[gSelectedCharacter][gCurrentLevel][i];

        if (newRecord < record) {
            tempRecord = record;
            LOADED_SAVE->timeRecords.table[gSelectedCharacter][gCurrentLevel][i] = newRecord;

            i2 = i;
            while (++i2 < TIME_RECORDS_PER_COURSE) {
                // LOADED_SAVE->timeRecords.table[gSelectedCharacter][gCurrentLevel][i] ^= record;

                XOR_SWAP_WORD(LOADED_SAVE->timeRecords.table[gSelectedCharacter][gCurrentLevel][i2], tempRecord);
            }

            if (i == 0) {
                isFirstPlace = TRUE;
            }
            break;
        }
    }

    return isFirstPlace;
}

s32 sub_8012F6C(void)
{
    s8 i;

    if (gFlags & FLAGS_NO_FLASH_MEMORY) {
        return 0;
    };

    for (i = 0; i < NUM_SAVE_SECTORS; i++) {
        s32 result = EraseFlashSector(i);
        if (result != 0) {
            return result;
        }
    }

    gUnknown_0300508C = 0;

    return 0;
}

u32 CalculateChecksum(void *data) { return CalcChecksum(data); }

#if (GAME == GAME_SA2)
// Read flash data at given sector into data
// and verify integrity
static bool16 ReadSaveSectorAndVerifyChecksum(struct SaveSectorData *save, s16 sectorNum)
{
    u32 i;
    u32 sum;
    u32 *expected;

    ReadFlash(sectorNum, 0, save, sizeof(struct SaveSectorData));
    expected = &save->checksum;

    sum = CalcChecksum(save);

    if (*expected != sum) {
        return 0;
    }

    return 1;
}

static bool16 StringEquals(u16 *string1Char, u16 *string2Char, s16 length)
{
    s16 i;
    for (i = 0; i < length; i++, string1Char++, string2Char++) {
        if (*string1Char != *string2Char) {
            return FALSE;
        }
    }
    return TRUE;
}
#endif
