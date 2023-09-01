.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

	thumb_func_start VramMalloc
VramMalloc: @ 0x08006B54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r0, r5, #3
	lsrs r5, r0, #2
	movs r4, #0
	ldr r1, _08006B90 @ =gUnknown_03001148
	ldrh r0, [r1]
	lsrs r0, r0, #2
	mov sb, r1
	cmp r4, r0
	bhs _08006BF2
	ldr r0, _08006B94 @ =gUnknown_03004A30
	mov r8, r0
_08006B76:
	lsls r1, r4, #1
	mov r2, r8
	adds r0, r1, r2
	ldrh r2, [r0]
	cmp r2, #0
	bne _08006BD8
	movs r3, #0
	ldr r7, _08006B90 @ =gUnknown_03001148
	mov ip, r7
	ldr r0, _08006B94 @ =gUnknown_03004A30
	mov sl, r0
	ldr r6, _08006B98 @ =gUnknown_020226D0
	b _08006BA2
	.align 2, 0
_08006B90: .4byte gUnknown_03001148
_08006B94: .4byte gUnknown_03004A30
_08006B98: .4byte gUnknown_020226D0
_08006B9C:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08006BA2:
	cmp r3, r5
	bhs _08006BC0
	adds r2, r4, r3
	mov r7, ip
	ldrh r0, [r7]
	lsrs r0, r0, #2
	cmp r2, r0
	blt _08006BB6
	ldr r0, [r6]
	b _08006BF6
_08006BB6:
	lsls r0, r2, #1
	add r0, sl
	ldrh r0, [r0]
	cmp r0, #0
	beq _08006B9C
_08006BC0:
	cmp r3, r5
	bne _08006BE2
	mov r2, r8
	adds r0, r1, r2
	strh r5, [r0]
	ldr r0, _08006BD4 @ =gUnknown_03001200
	lsls r1, r4, #7
	ldr r0, [r0]
	adds r0, r0, r1
	b _08006BF6
	.align 2, 0
_08006BD4: .4byte gUnknown_03001200
_08006BD8:
	ldr r7, _08006C04 @ =0x0000FFFF
	adds r0, r4, r7
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08006BE2:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r1, sb
	ldrh r0, [r1]
	lsrs r0, r0, #2
	cmp r4, r0
	blo _08006B76
_08006BF2:
	ldr r0, _08006C08 @ =gUnknown_020226D0
	ldr r0, [r0]
_08006BF6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08006C04: .4byte 0x0000FFFF
_08006C08: .4byte gUnknown_020226D0

	thumb_func_start VramResetHeapState
VramResetHeapState: @ 0x08006C0C
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08006C28 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08006C2C @ =gUnknown_03004A30
	str r0, [r1, #4]
	ldr r0, _08006C30 @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08006C28: .4byte 0x040000D4
_08006C2C: .4byte gUnknown_03004A30
_08006C30: .4byte 0x81000100

	thumb_func_start VramFree
VramFree: @ 0x08006C34
	adds r1, r0, #0
	ldr r0, _08006C54 @ =gUnknown_020226D0
	ldr r0, [r0]
	cmp r0, r1
	beq _08006C52
	ldr r0, _08006C58 @ =gUnknown_03001200
	ldr r0, [r0]
	subs r0, r1, r0
	lsls r0, r0, #9
	lsrs r0, r0, #0x10
	ldr r1, _08006C5C @ =gUnknown_03004A30
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_08006C52:
	bx lr
	.align 2, 0
_08006C54: .4byte gUnknown_020226D0
_08006C58: .4byte gUnknown_03001200
_08006C5C: .4byte gUnknown_03004A30
