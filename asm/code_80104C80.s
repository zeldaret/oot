.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80104C80
/* B7BE20 80104C80 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B7BE24 80104C84 AFB00020 */  sw    $s0, 0x20($sp)
/* B7BE28 80104C88 30B000FF */  andi  $s0, $a1, 0xff
/* B7BE2C 80104C8C AFBF0024 */  sw    $ra, 0x24($sp)
/* B7BE30 80104C90 AFA40058 */  sw    $a0, 0x58($sp)
/* B7BE34 80104C94 AFA5005C */  sw    $a1, 0x5c($sp)
/* B7BE38 80104C98 27A20038 */  addiu $v0, $sp, 0x38
/* B7BE3C 80104C9C 27A30058 */  addiu $v1, $sp, 0x58
.L80104CA0:
/* B7BE40 80104CA0 24420004 */  addiu $v0, $v0, 4
/* B7BE44 80104CA4 A050FFFD */  sb    $s0, -3($v0)
/* B7BE48 80104CA8 A050FFFE */  sb    $s0, -2($v0)
/* B7BE4C 80104CAC A050FFFF */  sb    $s0, -1($v0)
/* B7BE50 80104CB0 1443FFFB */  bne   $v0, $v1, .L80104CA0
/* B7BE54 80104CB4 A050FFFC */   sb    $s0, -4($v0)
/* B7BE58 80104CB8 8FAE0058 */  lw    $t6, 0x58($sp)
/* B7BE5C 80104CBC 24060400 */  li    $a2, 1024
/* B7BE60 80104CC0 27A70038 */  addiu $a3, $sp, 0x38
/* B7BE64 80104CC4 8DC40004 */  lw    $a0, 4($t6)
/* B7BE68 80104CC8 8DC50008 */  lw    $a1, 8($t6)
/* B7BE6C 80104CCC 0C04173C */  jal   func_80105CF0
/* B7BE70 80104CD0 AFA00010 */   sw    $zero, 0x10($sp)
/* B7BE74 80104CD4 14400003 */  bnez  $v0, .L80104CE4
/* B7BE78 80104CD8 00401825 */   move  $v1, $v0
/* B7BE7C 80104CDC 8FAF0058 */  lw    $t7, 0x58($sp)
/* B7BE80 80104CE0 A1F00065 */  sb    $s0, 0x65($t7)
.L80104CE4:
/* B7BE84 80104CE4 8FBF0024 */  lw    $ra, 0x24($sp)
/* B7BE88 80104CE8 8FB00020 */  lw    $s0, 0x20($sp)
/* B7BE8C 80104CEC 27BD0058 */  addiu $sp, $sp, 0x58
/* B7BE90 80104CF0 03E00008 */  jr    $ra
/* B7BE94 80104CF4 00601025 */   move  $v0, $v1
