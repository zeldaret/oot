.late_rodata
.late_rodata_alignment 4
glabel D_80A729CC
 .word func_80A70CD8
.word func_80A70CD8
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word func_80A70C44
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word L80A70D40
.word func_80A70C08
.word L80A70D40
.word func_80A70BAC

.text
glabel func_80A70AE4
/* 01534 80A70AE4 84A300A4 */  lh      $v1, 0x00A4($a1)           ## 000000A4
/* 01538 80A70AE8 28610038 */  slti    $at, $v1, 0x0038           
/* 0153C 80A70AEC 14200006 */  bne     $at, $zero, .L80A70B08     
/* 01540 80A70AF0 246EFFE2 */  addiu   $t6, $v1, 0xFFE2           ## $t6 = FFFFFFE2
/* 01544 80A70AF4 24010052 */  addiu   $at, $zero, 0x0052         ## $at = 00000052
/* 01548 80A70AF8 5061000C */  beql    $v1, $at, .L80A70B2C       
/* 0154C 80A70AFC 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 01550 80A70B00 10000090 */  beq     $zero, $zero, .L80A70D44   
/* 01554 80A70B04 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
.L80A70B08:
/* 01558 80A70B08 2DC1001A */  sltiu   $at, $t6, 0x001A           
/* 0155C 80A70B0C 1020008C */  beq     $at, $zero, .L80A70D40     
/* 01560 80A70B10 000E7080 */  sll     $t6, $t6,  2               
/* 01564 80A70B14 3C0180A7 */  lui     $at, %hi(D_80A729CC)       ## $at = 80A70000
/* 01568 80A70B18 002E0821 */  addu    $at, $at, $t6              
/* 0156C 80A70B1C 8C2E29CC */  lw      $t6, %lo(D_80A729CC)($at)  
/* 01570 80A70B20 01C00008 */  jr      $t6                        
/* 01574 80A70B24 00000000 */  nop
/* 01578 80A70B28 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
.L80A70B2C:
/* 0157C 80A70B2C 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 01580 80A70B30 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 01584 80A70B34 3042007F */  andi    $v0, $v0, 0x007F           ## $v0 = 00000000
/* 01588 80A70B38 1041000B */  beq     $v0, $at, .L80A70B68       
/* 0158C 80A70B3C 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 01590 80A70B40 10A20009 */  beq     $a1, $v0, .L80A70B68       
/* 01594 80A70B44 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 01598 80A70B48 10410007 */  beq     $v0, $at, .L80A70B68       
/* 0159C 80A70B4C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 015A0 80A70B50 10410005 */  beq     $v0, $at, .L80A70B68       
/* 015A4 80A70B54 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 015A8 80A70B58 10410003 */  beq     $v0, $at, .L80A70B68       
/* 015AC 80A70B5C 00000000 */  nop
/* 015B0 80A70B60 03E00008 */  jr      $ra                        
/* 015B4 80A70B64 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A70B68:
/* 015B8 80A70B68 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 015BC 80A70B6C 8C6F0004 */  lw      $t7, 0x0004($v1)           ## 8015E664
/* 015C0 80A70B70 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 015C4 80A70B74 11E00003 */  beq     $t7, $zero, .L80A70B84     
/* 015C8 80A70B78 00000000 */  nop
/* 015CC 80A70B7C 03E00008 */  jr      $ra                        
/* 015D0 80A70B80 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A70B84:
/* 015D4 80A70B84 10410007 */  beq     $v0, $at, .L80A70BA4       
/* 015D8 80A70B88 00000000 */  nop
/* 015DC 80A70B8C 8C780010 */  lw      $t8, 0x0010($v1)           ## 8015E670
/* 015E0 80A70B90 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 015E4 80A70B94 17010003 */  bne     $t8, $at, .L80A70BA4       
/* 015E8 80A70B98 00000000 */  nop
/* 015EC 80A70B9C 03E00008 */  jr      $ra                        
/* 015F0 80A70BA0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A70BA4:
/* 015F4 80A70BA4 03E00008 */  jr      $ra                        
/* 015F8 80A70BA8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
