.late_rodata
glabel D_8014A5B8
    .float 625

.text
glabel func_800F3990
/* B6AB30 800F3990 44802000 */  mtc1  $zero, $f4
/* B6AB34 800F3994 AFA50004 */  sw    $a1, 4($sp)
/* B6AB38 800F3998 00001825 */  move  $v1, $zero
/* B6AB3C 800F399C 460C203E */  c.le.s $f4, $f12
/* B6AB40 800F39A0 3C018015 */  lui   $at, %hi(D_8014A5B8)
/* B6AB44 800F39A4 45020015 */  bc1fl .L800F39FC
/* B6AB48 800F39A8 34620001 */   ori   $v0, $v1, 1
/* B6AB4C 800F39AC C420A5B8 */  lwc1  $f0, %lo(D_8014A5B8)($at)
/* B6AB50 800F39B0 2403007F */  li    $v1, 127
/* B6AB54 800F39B4 34620001 */  ori   $v0, $v1, 1
/* B6AB58 800F39B8 460C003C */  c.lt.s $f0, $f12
/* B6AB5C 800F39BC 00021600 */  sll   $v0, $v0, 0x18
/* B6AB60 800F39C0 45020004 */  bc1fl .L800F39D4
/* B6AB64 800F39C4 46006183 */   div.s $f6, $f12, $f0
/* B6AB68 800F39C8 03E00008 */  jr    $ra
/* B6AB6C 800F39CC 00021603 */   sra   $v0, $v0, 0x18
/* B6AB70 800F39D0 46006183 */  div.s $f6, $f12, $f0
.L800F39D4:
/* B6AB74 800F39D4 3C0142FC */  li    $at, 0x42FC0000 # 0.000000
/* B6AB78 800F39D8 44814000 */  mtc1  $at, $f8
/* B6AB7C 800F39DC 00000000 */  nop   
/* B6AB80 800F39E0 46083282 */  mul.s $f10, $f6, $f8
/* B6AB84 800F39E4 4600540D */  trunc.w.s $f16, $f10
/* B6AB88 800F39E8 44038000 */  mfc1  $v1, $f16
/* B6AB8C 800F39EC 00000000 */  nop   
/* B6AB90 800F39F0 00031E00 */  sll   $v1, $v1, 0x18
/* B6AB94 800F39F4 00031E03 */  sra   $v1, $v1, 0x18
/* B6AB98 800F39F8 34620001 */  ori   $v0, $v1, 1
.L800F39FC:
/* B6AB9C 800F39FC 00021600 */  sll   $v0, $v0, 0x18
/* B6ABA0 800F3A00 03E00008 */  jr    $ra
/* B6ABA4 800F3A04 00021603 */   sra   $v0, $v0, 0x18

