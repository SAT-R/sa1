.include "asm/macros.inc"
.include "constants/constants.inc"

.syntax unified
.arm

@ The developers left an additional header inside the ROM,
@ using a different publisher ID.

@@ _entry_old: @ 0x08000000
@@ 	b _rom_header_old_end
@@ 
@@ 	@ These will be set by gbafix
@@ 	
@@ 	.global RomHeaderNintendoLogo_old
@@ RomHeaderNintendoLogo_old:
@@ 	.space 0x9c
@@ 
@@ RomHeaderGameTitle_old:
@@ 	.space 12
@@ 
@@ RomHeaderGameCode_old:
@@ 	.4byte 0
@@ 
@@ RomHeaderMakerCode_old:
@@ 	.2byte 0
@@ 
@@ RomHeaderMagic_old:
@@ 	.byte 0x96
@@ 
@@ RomHeaderMainUnitCode_old:
@@ 	.byte 0
@@ 
@@ RomHeaderDeviceType_old:
@@ 	.byte 0
@@ 
@@ RomHeaderReserved1_old:
@@ 	.space 7
@@ 
@@ RomHeaderSoftwareVersion_old:
@@ 	.byte 0
@@ 
@@ RomHeaderChecksum_old:
@@ 	.byte 0
@@ 
@@ RomHeaderReserved2_old:
@@ 	.space 2
@@ 
@@ _rom_header_old_end:

@ Temp copy-paste
	arm_func_start sub_800032C
_0800032C:
	b header_copy_end @; here + header size
_08000340:
	.incbin "baserom.gba", 0x330, 0xBC
header_copy_end:
