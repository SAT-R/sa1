.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
@ --- Input recorder ---
	thumb_func_start InputRecorderResetRecordHead
InputRecorderResetRecordHead: @ 0x0804CC94
	ldr r1, _0804CC9C @ =gInputRecorder
	movs r0, #0
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_0804CC9C: .4byte gInputRecorder

	thumb_func_start InputRecorderResetPlaybackHead
InputRecorderResetPlaybackHead: @ 0x0804CCA0
	ldr r1, _0804CCA8 @ =gInputRecorder
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0804CCA8: .4byte gInputRecorder

	thumb_func_start InputRecorderLoadTape
InputRecorderLoadTape: @ 0x0804CCAC
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r6, _0804CCEC @ =gInputRecorder
	movs r5, #0
	strb r5, [r6, #8]
	ldr r4, _0804CCF0 @ =gInputRecorderTapeBuffer
	movs r0, #0x80
	lsls r0, r0, #5
	bl EwramMalloc
	adds r1, r0, #0
	str r1, [r4]
	ldr r0, _0804CCF4 @ =gInputPlaybackData
	ldr r0, [r0]
	bl LZ77UnCompWram
	ldr r0, _0804CCF8 @ =Task_InputRecorder
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0804CCFC @ =InputRecorderEject
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl TaskCreate
	str r5, [r6, #4]
	str r5, [r6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0804CCEC: .4byte gInputRecorder
_0804CCF0: .4byte gInputRecorderTapeBuffer
_0804CCF4: .4byte gInputPlaybackData
_0804CCF8: .4byte Task_InputRecorder
_0804CCFC: .4byte InputRecorderEject

	thumb_func_start InputRecorderRead
InputRecorderRead: @ 0x0804CD00
	ldr r3, _0804CD10 @ =gInputRecorder
	ldr r2, [r3]
	ldr r0, _0804CD14 @ =0x000007FF
	cmp r2, r0
	ble _0804CD18
	movs r0, #0
	b _0804CD26
	.align 2, 0
_0804CD10: .4byte gInputRecorder
_0804CD14: .4byte 0x000007FF
_0804CD18:
	ldr r0, _0804CD28 @ =gInputRecorderTapeBuffer
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r2, #1
	str r1, [r3]
_0804CD26:
	bx lr
	.align 2, 0
_0804CD28: .4byte gInputRecorderTapeBuffer

	thumb_func_start InputRecorderWrite
InputRecorderWrite: @ 0x0804CD2C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r4, _0804CD50 @ =gInputRecorder
	ldr r2, [r4, #4]
	ldr r0, _0804CD54 @ =0x000007FF
	cmp r2, r0
	bgt _0804CD4A
	ldr r0, _0804CD58 @ =gInputRecorderTapeBuffer
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r1
	strh r3, [r0]
	adds r0, r2, #1
	str r0, [r4, #4]
_0804CD4A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804CD50: .4byte gInputRecorder
_0804CD54: .4byte 0x000007FF
_0804CD58: .4byte gInputRecorderTapeBuffer

	thumb_func_start Task_InputRecorder
Task_InputRecorder: @ 0x0804CD5C
	bx lr
	.align 2, 0

	thumb_func_start InputRecorderEject
InputRecorderEject: @ 0x0804CD60
	push {lr}
	ldr r0, _0804CD78 @ =gInputRecorderTapeBuffer
	ldr r0, [r0]
	bl EwramFree
	ldr r1, _0804CD7C @ =gInputRecorder
	movs r0, #0
	strb r0, [r1, #8]
	str r0, [r1, #4]
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0804CD78: .4byte gInputRecorderTapeBuffer
_0804CD7C: .4byte gInputRecorder
@ --- End of input_recorder.c ---
.endif