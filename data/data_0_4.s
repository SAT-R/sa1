    .include "asm/macros/portable.inc"

	mSectionRodata

    .global gSpawnPositions
gSpawnPositions:
    .incbin "baserom_sa1.gba", 0x004ADEF0, 0x48

    .global gSpawnPositions_Modes_4_and_5
gSpawnPositions_Modes_4_and_5:
    .incbin "baserom_sa1.gba", 0x004ADF38, 0x40

    .global gUnknown_084ADF78
gUnknown_084ADF78:
    .incbin "baserom_sa1.gba", 0x004ADF78, 0x48

    .global gUnknown_084ADFC0
gUnknown_084ADFC0:
    .incbin "baserom_sa1.gba", 0x004ADFC0, 0x48

    .global gPlayerCharacterIdleAnims
gPlayerCharacterIdleAnims:
    .short 0, 99, 199, 298

    .global sCharStateAnimInfo
sCharStateAnimInfo:
    .incbin "baserom_sa1.gba", 0x004AE010, 0x178

    .global gUnknown_084AE188
gUnknown_084AE188:
    .incbin "baserom_sa1.gba", 0x004AE188, 0x12

    .global gUnknown_084AE19A
gUnknown_084AE19A:
    .incbin "baserom_sa1.gba", 0x004AE19A, 0x12

    .global gCharStatesKnucklesGlideTurn
gCharStatesKnucklesGlideTurn:
    .byte 0x42, 0x43, 0x44, 0x45

    .global gUnknown_084AE1B0
gUnknown_084AE1B0:
    .byte 0x8E, 0x01, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x8F, 0x01, 0x00, 0x00, 0x8F, 0x01, 0x01, 0x00, 0x8F, 0x01, 0x02, 0x00

