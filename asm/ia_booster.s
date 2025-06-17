.include "asm/macros.inc"
.include "constants/constants.inc"

.text
.syntax unified
.arm

.if 0
	thumb_func_start Task_Booster
Task_Booster: @ 0x08076F88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08076FF8 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x14]     @ sp14 = booster
	ldr r0, _08076FFC @ =0x0300000C
	adds r0, r0, r1
	mov sl, r0              @ sl = s
	ldr r1, [sp, #0x14]
	ldr r1, [r1]
	str r1, [sp, #0x10]     @ sp10 = me
	ldr r3, [sp, #0x14]     @ r3 = booster
	ldrb r2, [r3, #8]
	lsls r2, r2, #3
	ldrh r0, [r3, #4]
	lsls r0, r0, #8
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	ldrh r0, [r3, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r3, _08077000 @ =gCamera
	ldrh r0, [r3]
	lsrs r4, r2, #0x10
	str r4, [sp, #8]	@ sp08 = worldX
	asrs r2, r2, #0x10
	subs r2, r2, r0
	mov r0, sl
	strh r2, [r0, #0x16]
	ldrh r0, [r3, #2]
	lsrs r2, r1, #0x10
	str r2, [sp, #0xc]	@ sp0C = worldY
	asrs r1, r1, #0x10
	subs r1, r1, r0
	mov r3, sl
	strh r1, [r3, #0x18]
	movs r7, #0
	ldr r6, _08077004 @ =gPartner
	ldr r5, _08077008 @ =gPlayer
	mov sb, sp		@ sb = sp00
_08076FEE_loop:
	cmp r7, #0
	beq _0807700C
	ldr r0, [r6, #0x10]
	b _0807700E
	.align 2, 0
_08076FF8: .4byte gCurTask
_08076FFC: .4byte 0x0300000C
_08077000: .4byte gCamera
_08077004: .4byte gPartner
_08077008: .4byte gPlayer
_0807700C:
	ldr r0, [r5, #0x10]
_0807700E:
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077018
	b _080774C8
_08077018:
	mov r2, sp
	cmp r7, #0
	beq _08077022
	ldrb r0, [r6, #0xe]
	b _08077024
_08077022:
	ldrb r0, [r5, #0xe]
_08077024:
	adds r0, #5
	rsbs r1, r0, #0
	add r0, sp, #4      @ r0 = &sp04
	strb r1, [r0]
	adds r3, r0, #0
	cmp r7, #0
	beq _08077036
	ldrb r1, [r6, #0xf]
	b _08077038
_08077036:
	ldrb r1, [r5, #0xf]
_08077038:
	movs r0, #1
	subs r1, r0, r1
	mov r0, sp
	adds r0, #5
	strb r1, [r0]
	cmp r7, #0
	beq _0807704A
	ldrb r0, [r6, #0xe]
	b _0807704C
_0807704A:
	ldrb r0, [r5, #0xe]
_0807704C:
	adds r1, r0, #5
	mov r0, sp
	adds r0, #6
	strb r1, [r0]
	cmp r7, #0
	beq _0807705C
	ldrb r0, [r6, #0xf]
	b _0807705E
_0807705C:
	ldrb r0, [r5, #0xf]
_0807705E:
	subs r1, r0, #1
	mov r0, sp
	adds r0, #7
	strb r1, [r0]
	adds r0, r2, #0
	adds r1, r3, #0
	movs r2, #4
	bl memcpy
	mov r0, sb		@ r0 = sb = sp00
	movs r4, #0
	ldrsb r4, [r0, r4]
	ldr r1, [sp, #8] @r2 = sp08 = worldX
	lsls r3, r1, #0x10
	asrs r2, r3, #0x10
	mov r1, sl		@ r1 = sl = s
	adds r1, #0x2c
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r2, r2, r0
	mov ip, r3		@ ip = r3 = worldX << 16
	mov r8, r1		@ r8 = r1 = &s->hitboxes[0].left
	cmp r7, #0
	beq _0807709A
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, r0, r4
	cmp r2, r0
	ble _080770A4
	b _080770CC
_0807709A:
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, r0, r4
	cmp r2, r0
	bgt _080770CC
_080770A4:
	mov r3, sb			@ r3 = sb = sp00
	movs r2, #0
	ldrsb r2, [r3, r2]
	mov r4, ip			@ r4 = ip = worldX << 16
	asrs r1, r4, #0x10	@ r1 = worldX0
	mov r0, sl
	adds r0, #0x2e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r0, r1
	cmp r7, #0
	beq _080770C2
	ldr r0, [r6]
	b _080770C4
_080770C2:
	ldr r0, [r5]
_080770C4:
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r1, r0
	bge _08077134
_080770CC:
	mov r0, sb		@ r0 = sb = sp00
	movs r2, #0
	ldrsb r2, [r0, r2]
	mov r3, ip		@ r3 = ip = worldX << 16
	asrs r1, r3, #0x10
	mov r4, r8
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r1, r1, r0
	cmp r7, #0
	beq _080770EE
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r1, r0
	bge _080770FA
	b _080774C8
_080770EE:
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r1, r0
	bge _080770FA
	b _080774C8
_080770FA:
	mov r0, sb
	movs r2, #0
	ldrsb r2, [r0, r2]
	ldrb r0, [r0, #2]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r3, r0, r2
	mov r4, ip
	asrs r1, r4, #0x10
	mov r4, r8		@ r4 = r8 = s..left
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r1, r1, r0
	cmp r7, #0
	beq _08077126
	ldr r0, [r6]
	asrs r0, r0, #8
	adds r0, r0, r2
	adds r0, r0, r3
	cmp r0, r1
	bge _08077134
	b _080774C8
_08077126:
	ldr r0, [r5]
	asrs r0, r0, #8
	adds r0, r0, r2
	adds r0, r0, r3
	cmp r0, r1
	bge _08077134
	b _080774C8
_08077134:
	mov r0, sb			@ r0 = sb = sp00
	movs r4, #1
	ldrsb r4, [r0, r4]
	ldr r1, [sp, #0xc]
	lsls r3, r1, #0x10
	asrs r2, r3, #0x10
	mov r1, sl
	adds r1, #0x2d
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r2, r2, r0
	mov ip, r3
	mov r8, r1
	cmp r7, #0
	beq _0807715E
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r0, r0, r4
	cmp r2, r0
	ble _08077168
	b _08077190
_0807715E:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, r0, r4
	cmp r2, r0
	bgt _08077190
_08077168:
	mov r3, sb
	movs r2, #1
	ldrsb r2, [r3, r2]
	mov r4, ip
	asrs r1, r4, #0x10
	mov r0, sl
	adds r0, #0x2f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r0, r1
	cmp r7, #0
	beq _08077186
	ldr r0, [r6, #4]
	b _08077188
_08077186:
	ldr r0, [r5, #4]
_08077188:
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r1, r0
	bge _080771F8
_08077190:
	mov r0, sb
	movs r2, #1
	ldrsb r2, [r0, r2]
	mov r3, ip
	asrs r1, r3, #0x10
	mov r4, r8
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r1, r1, r0
	cmp r7, #0
	beq _080771B2
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r1, r0
	bge _080771BE
	b _080774C8
_080771B2:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, r0, r2
	cmp r1, r0
	bge _080771BE
	b _080774C8
_080771BE:
	mov r0, sb
	movs r2, #1
	ldrsb r2, [r0, r2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r3, r0, r2
	mov r4, ip
	asrs r1, r4, #0x10
	mov r4, r8
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r1, r1, r0
	cmp r7, #0
	beq _080771EA
	ldr r0, [r6, #4]
	asrs r0, r0, #8
	adds r0, r0, r2
	adds r0, r0, r3
	cmp r0, r1
	bge _080771F8
	b _080774C8
_080771EA:
	ldr r0, [r5, #4]
	asrs r0, r0, #8
	adds r0, r0, r2
	adds r0, r0, r3
	cmp r0, r1
	bge _080771F8
	b _080774C8
_080771F8:
	cmp r7, #0
	beq _08077210
	ldr r0, [r6, #0x10]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08077208
	b _080774C8
_08077208:
	ldr r0, _0807720C @ =gPlayer
	b _0807721E
	.align 2, 0
_0807720C: .4byte gPlayer
_08077210:
	ldr r1, [r5, #0x10]
	movs r0, #2
	ands r1, r0
	ldr r0, _08077250 @ =gPlayer
	cmp r1, #0
	beq _0807721E
	b _080774C8
_0807721E:
	cmp r7, #0
	beq _08077224
	ldr r0, _08077254 @ =gPartner
_08077224:
	bl Player_TransitionCancelFlyingAndBoost
	movs r0, #0xac
	bl m4aSongNumStart
	mov r1, sl			@ r1 = sl = 
	ldr r0, [r1, #0x10]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0807723E
	b _08077388
_0807723E:
	cmp r7, #0
	beq _0807725C
	ldr r2, _08077258 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #9
	beq _08077266
	b _08077282
	.align 2, 0
_08077250: .4byte gPlayer
_08077254: .4byte gPartner
_08077258: .4byte gPartner + 0x40
_0807725C:
	ldr r3, _08077274 @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #9
	bne _08077282
_08077266:
	cmp r7, #0
	beq _0807727C
	movs r0, #4
	ldr r4, _08077278 @ =gPartner + 0x40
	strb r0, [r4]
	b _08077282
	.align 2, 0
_08077274: .4byte gPlayer + 0x40
_08077278: .4byte gPartner + 0x40
_0807727C:
	movs r2, #4
	ldr r1, _08077294 @ =gPlayer + 0x40
	strb r2, [r1]
_08077282:
	cmp r7, #0
	beq _0807729C
	ldr r3, _08077298 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #5
	bne _080772A6
	b _0807730A
	.align 2, 0
_08077294: .4byte gPlayer + 0x40
_08077298: .4byte gPartner + 0x40
_0807729C:
	ldr r4, _080772B8 @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #5
	beq _0807730A
_080772A6:
	cmp r7, #0
	beq _080772C0
	ldr r1, _080772BC @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #6
	bne _080772CA
	b _0807730A
	.align 2, 0
_080772B8: .4byte gPlayer + 0x40
_080772BC: .4byte gPartner + 0x40
_080772C0:
	ldr r2, _080772DC @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #6
	beq _0807730A
_080772CA:
	cmp r7, #0
	beq _080772E4
	ldr r3, _080772E0 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #7
	bne _080772EE
	b _0807730A
	.align 2, 0
_080772DC: .4byte gPlayer + 0x40
_080772E0: .4byte gPartner + 0x40
_080772E4:
	ldr r4, _080772FC @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #7
	beq _0807730A
_080772EE:
	cmp r7, #0
	beq _08077304
	movs r1, #4
	ldr r0, _08077300 @ =gPartner + 0x40
	strb r1, [r0]
	b _0807730A
	.align 2, 0
_080772FC: .4byte gPlayer + 0x40
_08077300: .4byte gPartner + 0x40
_08077304:
	movs r3, #4
	ldr r2, _08077318 @ =gPlayer + 0x40
	strb r3, [r2]
_0807730A:
	cmp r7, #0
	beq _0807731C
	ldr r0, [r6, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r6, #0x10]
	b _08077324
	.align 2, 0
_08077318: .4byte gPlayer + 0x40
_0807731C:
	ldr r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0x10]
_08077324:
	cmp r7, #0
	beq _08077338
	movs r4, #0xc
	ldrsh r1, [r6, r4]
	ldr r0, _08077334 @ =0xFFFFF700
	cmp r1, r0
	bgt _08077342
	b _0807736C
	.align 2, 0
_08077334: .4byte 0xFFFFF700
_08077338:
	movs r0, #0xc
	ldrsh r1, [r5, r0]
	ldr r0, _08077350 @ =0xFFFFF700
	cmp r1, r0
	ble _0807736C
_08077342:
	cmp r7, #0
	beq _08077354
	movs r0, #0xf4
	lsls r0, r0, #8
	strh r0, [r6, #0xc]
	b _0807735A
	.align 2, 0
_08077350: .4byte 0xFFFFF700
_08077354:
	movs r0, #0xf4
	lsls r0, r0, #8
	strh r0, [r5, #0xc]
_0807735A:
	cmp r7, #0
	beq _08077366
	movs r0, #0xf4
	lsls r0, r0, #8
	strh r0, [r6, #8]
	b _0807736C
_08077366:
	movs r0, #0xf4
	lsls r0, r0, #8
	strh r0, [r5, #8]
_0807736C:
	cmp r7, #0
	beq _0807737C
	movs r0, #0
	ldr r1, _08077378 @ =gPartner + 0x3E
	strb r0, [r1]
	b _080774C8
	.align 2, 0
_08077378: .4byte gPartner + 0x3E
_0807737C:
	ldr r2, _08077384 @ =gPlayer + 0x3E
	strb r7, [r2]
	b _080774C8
	.align 2, 0
_08077384: .4byte gPlayer + 0x3E
_08077388:
	cmp r7, #0
	beq _0807739C
	ldr r3, _08077398 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #9
	beq _080773A6
	b _080773C2
	.align 2, 0
_08077398: .4byte gPartner + 0x40
_0807739C:
	ldr r4, _080773B4 @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _080773C2
_080773A6:
	cmp r7, #0
	beq _080773BC
	movs r1, #4
	ldr r0, _080773B8 @ =gPartner + 0x40
	strb r1, [r0]
	b _080773C2
	.align 2, 0
_080773B4: .4byte gPlayer + 0x40
_080773B8: .4byte gPartner + 0x40
_080773BC:
	movs r3, #4
	ldr r2, _080773D4 @ =gPlayer + 0x40
	strb r3, [r2]
_080773C2:
	cmp r7, #0
	beq _080773DC
	ldr r4, _080773D8 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #5
	bne _080773E6
	b _0807744A
	.align 2, 0
_080773D4: .4byte gPlayer + 0x40
_080773D8: .4byte gPartner + 0x40
_080773DC:
	ldr r1, _080773F8 @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	beq _0807744A
_080773E6:
	cmp r7, #0
	beq _08077400
	ldr r2, _080773FC @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #6
	bne _0807740A
	b _0807744A
	.align 2, 0
_080773F8: .4byte gPlayer + 0x40
_080773FC: .4byte gPartner + 0x40
_08077400:
	ldr r3, _0807741C @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #6
	beq _0807744A
_0807740A:
	cmp r7, #0
	beq _08077424
	ldr r4, _08077420 @ =gPartner + 0x40
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #7
	bne _0807742E
	b _0807744A
	.align 2, 0
_0807741C: .4byte gPlayer + 0x40
_08077420: .4byte gPartner + 0x40
_08077424:
	ldr r1, _0807743C @ =gPlayer + 0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #7
	beq _0807744A
_0807742E:
	cmp r7, #0
	beq _08077444
	movs r3, #4
	ldr r2, _08077440 @ =gPartner + 0x40
	strb r3, [r2]
	b _0807744A
	.align 2, 0
_0807743C: .4byte gPlayer + 0x40
_08077440: .4byte gPartner + 0x40
_08077444:
	movs r0, #4
	ldr r4, _0807745C @ =gPlayer + 0x40
	strb r0, [r4]
_0807744A:
	cmp r7, #0
	beq _08077460
	ldr r0, [r6, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #0x10]
	b _0807746A
	.align 2, 0
_0807745C: .4byte gPlayer + 0x40
_08077460:
	ldr r0, [r5, #0x10]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #0x10]
_0807746A:
	cmp r7, #0
	beq _08077480
	movs r2, #0xc
	ldrsh r1, [r6, r2]
	ldr r0, _0807747C @ =0x000008FF
	cmp r1, r0
	ble _0807748A
	b _080774B4
	.align 2, 0
_0807747C: .4byte 0x000008FF
_08077480:
	movs r3, #0xc
	ldrsh r1, [r5, r3]
	ldr r0, _08077498 @ =0x000008FF
	cmp r1, r0
	bgt _080774B4
_0807748A:
	cmp r7, #0
	beq _0807749C
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r6, #0xc]
	b _080774A2
	.align 2, 0
_08077498: .4byte 0x000008FF
_0807749C:
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r5, #0xc]
_080774A2:
	cmp r7, #0
	beq _080774AE
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r6, #8]
	b _080774B4
_080774AE:
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r5, #8]
_080774B4:
	cmp r7, #0
	beq _080774C4
	movs r0, #0
	ldr r4, _080774C0 @ =gPartner + 0x3E
	strb r0, [r4]
	b _080774C8
	.align 2, 0
_080774C0: .4byte gPartner + 0x3E
_080774C4:
	ldr r0, _08077514 @ =gPlayer + 0x3E
	strb r7, [r0]
_080774C8:
	adds r7, #1
	ldr r0, _08077518 @ =gNumSingleplayerCharacters
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r7, r0
	bge _080774D8
	b _08076FEE_loop
_080774D8:
	mov r1, sl
	ldrh r0, [r1, #0x16]
	adds r0, #0x80
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _08077500
	mov r2, sl
	movs r3, #0x18
	ldrsh r0, [r2, r3]
	adds r0, #0x80
	cmp r0, #0
	blt _08077500
	movs r4, #0x18
	ldrsh r1, [r2, r4]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _08077520
_08077500:
	ldr r1, [sp, #0x14]
	ldrb r0, [r1, #8]
	ldr r2, [sp, #0x10]
	strb r0, [r2]
	ldr r0, _0807751C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0807752C
	.align 2, 0
_08077514: .4byte gPlayer + 0x3E
_08077518: .4byte gNumSingleplayerCharacters
_0807751C: .4byte gCurTask
_08077520:
	mov r0, sl
	bl UpdateSpriteAnimation
	mov r0, sl
	bl DisplaySprite
_0807752C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
.endif

	thumb_func_start TaskDestructor_Booster
TaskDestructor_Booster: @ 0x0807753C
	push {lr}
	ldrh r0, [r0, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	ldr r0, [r0, #0x10]
	bl VramFree
	pop {r0}
	bx r0
