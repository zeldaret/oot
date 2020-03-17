glabel EnHonotrap_Draw
/* 012CC 80A5AEFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 012D0 80A5AF00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012D4 80A5AF04 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 012D8 80A5AF08 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 012DC 80A5AF0C 10400007 */  beq     $v0, $zero, .L80A5AF2C     
/* 012E0 80A5AF10 00000000 */  nop
/* 012E4 80A5AF14 10410009 */  beq     $v0, $at, .L80A5AF3C       
/* 012E8 80A5AF18 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 012EC 80A5AF1C 10410007 */  beq     $v0, $at, .L80A5AF3C       
/* 012F0 80A5AF20 00000000 */  nop
/* 012F4 80A5AF24 10000008 */  beq     $zero, $zero, .L80A5AF48   
/* 012F8 80A5AF28 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A5AF2C:
/* 012FC 80A5AF2C 0C296AFF */  jal     func_80A5ABFC              
/* 01300 80A5AF30 00000000 */  nop
/* 01304 80A5AF34 10000004 */  beq     $zero, $zero, .L80A5AF48   
/* 01308 80A5AF38 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A5AF3C:
/* 0130C 80A5AF3C 0C296B4A */  jal     func_80A5AD28              
/* 01310 80A5AF40 00000000 */  nop
/* 01314 80A5AF44 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A5AF48:
/* 01318 80A5AF48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0131C 80A5AF4C 03E00008 */  jr      $ra                        
/* 01320 80A5AF50 00000000 */  nop
/* 01324 80A5AF54 00000000 */  nop
/* 01328 80A5AF58 00000000 */  nop
/* 0132C 80A5AF5C 00000000 */  nop

