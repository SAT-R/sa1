	.macro song label, music_player, unknown
	.int \label
	.short \music_player
	.short \unknown
	.endm

	.macro music_player info_struct, track_struct, unknown_1, unknown_2
	.int \info_struct
	.int \track_struct
	.byte \unknown_1
	.space 1
	.short \unknown_2
	.endm
