	.section .rodata

	.align 2
	.global gMPlayTable
gMPlayTable:	@ 0x086DD760
	music_player 0x02002540, 0x02000000, 16, 0
	music_player 0x02002580, 0x02000500, 16, 0
	music_player 0x020025C0, 0x02000A00, 16, 0
	music_player 0x02002610, 0x02000F00, 16, 0
