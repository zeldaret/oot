.rdata
glabel D_801549AC
    .asciz "%s"
    .balign 4

glabel D_801549B0
    .asciz "MESSAGE"
    .balign 4

glabel D_801549B8
    .asciz "%s"
    .balign 4

glabel D_801549BC
    .asciz "="
    .balign 4

glabel D_801549C0
    .asciz "%x"
    .balign 4

.text
glabel func_8010F494
/* B86634 8010F494 27BDFFA0 */  addiu $sp, $sp, -0x60
/* B86638 8010F498 AFB00020 */  sw    $s0, 0x20($sp)
/* B8663C 8010F49C 27B0002C */  addiu $s0, $sp, 0x2c
/* B86640 8010F4A0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B86644 8010F4A4 AFA40060 */  sw    $a0, 0x60($sp)
/* B86648 8010F4A8 AFA50064 */  sw    $a1, 0x64($sp)
/* B8664C 8010F4AC 0C03EEE3 */  jal   GfxPrint_Ctor
/* B86650 8010F4B0 02002025 */   move  $a0, $s0
/* B86654 8010F4B4 8FAE0064 */  lw    $t6, 0x64($sp)
/* B86658 8010F4B8 02002025 */  move  $a0, $s0
/* B8665C 8010F4BC 0C03EF07 */  jal   GfxPrint_Open
/* B86660 8010F4C0 8DC50000 */   lw    $a1, ($t6)
/* B86664 8010F4C4 02002025 */  move  $a0, $s0
/* B86668 8010F4C8 24050006 */  li    $a1, 6
/* B8666C 8010F4CC 0C03ED07 */  jal   GfxPrint_SetPos
/* B86670 8010F4D0 2406001A */   li    $a2, 26
/* B86674 8010F4D4 240F00FF */  li    $t7, 255
/* B86678 8010F4D8 AFAF0010 */  sw    $t7, 0x10($sp)
/* B8667C 8010F4DC 02002025 */  move  $a0, $s0
/* B86680 8010F4E0 240500FF */  li    $a1, 255
/* B86684 8010F4E4 2406003C */  li    $a2, 60
/* B86688 8010F4E8 0C03ECEB */  jal   GfxPrint_SetColor
/* B8668C 8010F4EC 00003825 */   move  $a3, $zero
/* B86690 8010F4F0 3C058015 */  lui   $a1, %hi(D_801549AC) # $a1, 0x8015
/* B86694 8010F4F4 3C068015 */  lui   $a2, %hi(D_801549B0) # $a2, 0x8015
/* B86698 8010F4F8 24C649B0 */  addiu $a2, %lo(D_801549B0) # addiu $a2, $a2, 0x49b0
/* B8669C 8010F4FC 24A549AC */  addiu $a1, %lo(D_801549AC) # addiu $a1, $a1, 0x49ac
/* B866A0 8010F500 0C03EF2D */  jal   GfxPrint_Printf
/* B866A4 8010F504 02002025 */   move  $a0, $s0
/* B866A8 8010F508 02002025 */  move  $a0, $s0
/* B866AC 8010F50C 2405000E */  li    $a1, 14
/* B866B0 8010F510 0C03ED07 */  jal   GfxPrint_SetPos
/* B866B4 8010F514 2406001A */   li    $a2, 26
/* B866B8 8010F518 3C058015 */  lui   $a1, %hi(D_801549B8) # $a1, 0x8015
/* B866BC 8010F51C 3C068015 */  lui   $a2, %hi(D_801549BC) # $a2, 0x8015
/* B866C0 8010F520 24C649BC */  addiu $a2, %lo(D_801549BC) # addiu $a2, $a2, 0x49bc
/* B866C4 8010F524 24A549B8 */  addiu $a1, %lo(D_801549B8) # addiu $a1, $a1, 0x49b8
/* B866C8 8010F528 0C03EF2D */  jal   GfxPrint_Printf
/* B866CC 8010F52C 02002025 */   move  $a0, $s0
/* B866D0 8010F530 02002025 */  move  $a0, $s0
/* B866D4 8010F534 24050010 */  li    $a1, 16
/* B866D8 8010F538 0C03ED07 */  jal   GfxPrint_SetPos
/* B866DC 8010F53C 2406001A */   li    $a2, 26
/* B866E0 8010F540 8FB80060 */  lw    $t8, 0x60($sp)
/* B866E4 8010F544 3C060001 */  lui   $a2, 1
/* B866E8 8010F548 3C058015 */  lui   $a1, %hi(D_801549C0) # $a1, 0x8015
/* B866EC 8010F54C 00D83021 */  addu  $a2, $a2, $t8
/* B866F0 8010F550 94C603D0 */  lhu   $a2, 0x3d0($a2)
/* B866F4 8010F554 24A549C0 */  addiu $a1, %lo(D_801549C0) # addiu $a1, $a1, 0x49c0
/* B866F8 8010F558 0C03EF2D */  jal   GfxPrint_Printf
/* B866FC 8010F55C 02002025 */   move  $a0, $s0
/* B86700 8010F560 0C03EF19 */  jal   GfxPrint_Close
/* B86704 8010F564 02002025 */   move  $a0, $s0
/* B86708 8010F568 8FB90064 */  lw    $t9, 0x64($sp)
/* B8670C 8010F56C 02002025 */  move  $a0, $s0
/* B86710 8010F570 0C03EF05 */  jal   GfxPrint_Dtor
/* B86714 8010F574 AF220000 */   sw    $v0, ($t9)
/* B86718 8010F578 8FBF0024 */  lw    $ra, 0x24($sp)
/* B8671C 8010F57C 8FB00020 */  lw    $s0, 0x20($sp)
/* B86720 8010F580 27BD0060 */  addiu $sp, $sp, 0x60
/* B86724 8010F584 03E00008 */  jr    $ra
/* B86728 8010F588 00000000 */   nop   

