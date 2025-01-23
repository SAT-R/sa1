.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

@ SA2:
.if 0
thumb_func_start ReceiveRoomEvent_Unknown
ReceiveRoomEvent_Unknown:
	ldr	r0, .L29
	ldr	r0, [r0]
	bx	lr
.endif

@ --- End of multiplayer_event_recv_mgr.c ---
