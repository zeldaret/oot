glabel func_80042FC4
/* ABA164 80042FC4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* ABA168 80042FC8 AFBF0024 */  sw    $ra, 0x24($sp)
/* ABA16C 80042FCC AFB00020 */  sw    $s0, 0x20($sp)
/* ABA170 80042FD0 AFA40030 */  sw    $a0, 0x30($sp)
/* ABA174 80042FD4 8C821C44 */  lw    $v0, 0x1c44($a0)
/* ABA178 80042FD8 00A08025 */  move  $s0, $a1
/* ABA17C 80042FDC 00A02025 */  move  $a0, $a1
/* ABA180 80042FE0 8CA50040 */  lw    $a1, 0x40($a1)
/* ABA184 80042FE4 0C00EB15 */  jal   func_8003AC54
/* ABA188 80042FE8 24460024 */   addiu $a2, $v0, 0x24
/* ABA18C 80042FEC 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* ABA190 80042FF0 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* ABA194 80042FF4 AFA20028 */  sw    $v0, 0x28($sp)
/* ABA198 80042FF8 8FA40030 */  lw    $a0, 0x30($sp)
/* ABA19C 80042FFC 846F0E82 */  lh    $t7, 0xe82($v1)
/* ABA1A0 80043000 02002825 */  move  $a1, $s0
/* ABA1A4 80043004 00403025 */  move  $a2, $v0
/* ABA1A8 80043008 11E00007 */  beqz  $t7, .L80043028
/* ABA1AC 8004300C 00003825 */   move  $a3, $zero
/* ABA1B0 80043010 241800FF */  li    $t8, 255
/* ABA1B4 80043014 AFB80014 */  sw    $t8, 0x14($sp)
/* ABA1B8 80043018 0C010BBE */  jal   func_80042EF8
/* ABA1BC 8004301C AFA00010 */   sw    $zero, 0x10($sp)
/* ABA1C0 80043020 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* ABA1C4 80043024 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
.L80043028:
/* ABA1C8 80043028 84790E80 */  lh    $t9, 0xe80($v1)
/* ABA1CC 8004302C 8FA40030 */  lw    $a0, 0x30($sp)
/* ABA1D0 80043030 02002825 */  move  $a1, $s0
/* ABA1D4 80043034 13200009 */  beqz  $t9, .L8004305C
/* ABA1D8 80043038 8FA60028 */   lw    $a2, 0x28($sp)
/* ABA1DC 8004303C 240800FF */  li    $t0, 255
/* ABA1E0 80043040 AFA80010 */  sw    $t0, 0x10($sp)
/* ABA1E4 80043044 24C60002 */  addiu $a2, $a2, 2
/* ABA1E8 80043048 00003825 */  move  $a3, $zero
/* ABA1EC 8004304C 0C010BBE */  jal   func_80042EF8
/* ABA1F0 80043050 AFA00014 */   sw    $zero, 0x14($sp)
/* ABA1F4 80043054 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* ABA1F8 80043058 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
.L8004305C:
/* ABA1FC 8004305C 84690E7E */  lh    $t1, 0xe7e($v1)
/* ABA200 80043060 8FA40030 */  lw    $a0, 0x30($sp)
/* ABA204 80043064 02002825 */  move  $a1, $s0
/* ABA208 80043068 11200006 */  beqz  $t1, .L80043084
/* ABA20C 8004306C 8FA60028 */   lw    $a2, 0x28($sp)
/* ABA210 80043070 24C60004 */  addiu $a2, $a2, 4
/* ABA214 80043074 240700FF */  li    $a3, 255
/* ABA218 80043078 AFA00010 */  sw    $zero, 0x10($sp)
/* ABA21C 8004307C 0C010BBE */  jal   func_80042EF8
/* ABA220 80043080 AFA00014 */   sw    $zero, 0x14($sp)
.L80043084:
/* ABA224 80043084 8FBF0024 */  lw    $ra, 0x24($sp)
/* ABA228 80043088 8FB00020 */  lw    $s0, 0x20($sp)
/* ABA22C 8004308C 27BD0030 */  addiu $sp, $sp, 0x30
/* ABA230 80043090 03E00008 */  jr    $ra
/* ABA234 80043094 00000000 */   nop   
