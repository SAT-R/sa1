#include "global.h"
#include "gba/io_reg.h"
#include "lib/agb_flash/flash_internal.h"

const u16 AT29LV512MaxTime[] = {
    10, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK, 40, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK, 0, 0, 0,
    40, 65469, TIMER_ENABLE | TIMER_INTR_ENABLE | TIMER_256CLK,
};

const struct FlashSetupInfo AT29LV512 = {
    ProgramFlashSector_AT, // ProgramFlashSector_AT,
    EraseFlashChip_AT,
    EraseFlashSector_AT,
    WaitForFlashWrite512K_Common,
    AT29LV512MaxTime,
    {
        65536, // ROM size
        {
            4096, // sector size
            12, // bit shift to multiply by sector size (4096 == 1 << 12)
            16, // number of sectors
            0 // appears to be unused
        },
        { 3, 3 }, // wait state setup data
        { { MANUFACTURER_ATMEL, CHIP_ATMEL_AT29LV512 } } // ID
    },
};

u16 ProgramFlashSector_AT_2(u16, void *);
u16 EraseFlashChip_AT(void);
u16 EraseFlashSector_AT_2(u16);
u16 sub_80991FC(u8, u8 *, u8);

const struct FlashSetupInfo gUnknown_087BF778 = {
    ProgramFlashSector_AT_2, // ProgramFlashSector_AT_2,
    EraseFlashChip_AT,
    EraseFlashSector_AT_2,
    WaitForFlashWrite512K_Common,
    AT29LV512MaxTime,
    {
        65536, // ROM size
        {
            128, // sector size
            7, // bit shift to multiply by sector size (4096 == 1 << 12)
            512, // number of sectors
            0 // appears to be unused
        },
        { 3, 3 }, // wait state setup data
        { { MANUFACTURER_ATMEL, CHIP_ATMEL_AT29LV512 } } // ID
    },
};

// static const u32 udabest = sizeof(struct FlashSetupInfo);
u16 EraseFlashChip_AT(void)
{
    u16 result;
    u16 readFlash1Buffer[0x20];

    SetReadFlash1(readFlash1Buffer);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gUnknown_087BF778.type.wait[0];

    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x80);
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x10);

    result = WaitForFlashWrite(3, FLASH_BASE, 0xFF);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    return result;
}

u16 EraseFlashSector_AT_2(u16 sectorNum)
{
    u16 result;
    u16 ime;
    u8 *addr;
    u32 size;

    addr = FLASH_BASE + (sectorNum << gUnknown_087BF778.type.sector.shift);

    ime = REG_IME;
    REG_IME = 0;

    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0xA0);

    size = gUnknown_087BF778.type.sector.size;
    while (size != 0) {
        *addr++ = 0xFF;
        size--;
    }

    addr--;

    REG_IME = ime;

    result = WaitForFlashWrite(1, addr, 0xFF);

    if (result)
        result = (result & 0xFF00) | WAITCNT_SRAM_2;

    return result;
}

u16 EraseFlashSector_AT(u16 sectorNum)
{
    u16 result;
    u8 *addr;
    u16 readFlash1Buffer[0x20];
    u16 i, r4;
    u16 bankNum;

    if (sectorNum >= SECTORS_PER_BANK)
        return 0x80FF;

    SetReadFlash1(readFlash1Buffer);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gUnknown_087BF778.type.wait[0];

    addr = FLASH_BASE + (sectorNum << gUnknown_087BF778.type.sector.shift);

    bankNum = sectorNum << 5;

    for (i = 0; i < 32; i++) {
        r4 = 2;

        while (r4 != 0 && (result = EraseFlashSector_AT_2(bankNum))) {
            r4--;
        }
        bankNum++;

        if (result)
            break;
    }

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    return result;
}

u16 ProgramFlashSector_AT_2(u16 sectorNum, void *src)
{
    u16 result;
    u16 ime;
    u8 *addr;
    u32 size;

    addr = FLASH_BASE + (sectorNum << gUnknown_087BF778.type.sector.shift);

    ime = REG_IME;
    REG_IME = 0;

    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0xA0);

    size = gUnknown_087BF778.type.sector.size;
    while (size != 0) {
        *addr++ = *(u8 *)src++;
        size--;
    }

    addr--;
    src--;

    REG_IME = ime;

    result = WaitForFlashWrite(1, addr, *(u8 *)src);

    return result;
}

#if 0
u16 ProgramByte(u8 *src, u8 *dest)
{
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0xA0);
    *dest = *src;

    return WaitForFlashWrite(1, dest, *src);
}
#endif

static u32 VerifyEraseSector_Core(u8 *dest);
static u16 VerifyEraseSector(u8 *dest, u8 *src);

u16 ProgramFlashSector_AT(u16 sectorNum, void *src)
{
    u16 result;
    u16 bankNum;
    u16 VerifyEraseSector_Core_Buffer[0x20];
    u16 i, r4;
    u8 tryNum;
    u8 erasesToTry;
    u8 j;

    if (sectorNum >= SECTORS_PER_BANK)
        return 0x80FF;

    SetReadFlash1(VerifyEraseSector_Core_Buffer);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gUnknown_087BF778.type.wait[0];
    bankNum = sectorNum << 5;

    gFlashNumRemainingBytes = AT29LV512.type.sector.size;
    while (gFlashNumRemainingBytes) {
        r4 = 2;

        while (r4 != 0 && (result = ProgramFlashSector_AT_2(bankNum, src))) {
            r4--;
        }

        if (result)
            break;

        gFlashNumRemainingBytes -= gUnknown_087BF778.type.sector.size;
        src += gUnknown_087BF778.type.sector.size;
        bankNum++;
    }

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | 3;
    return result;
}
