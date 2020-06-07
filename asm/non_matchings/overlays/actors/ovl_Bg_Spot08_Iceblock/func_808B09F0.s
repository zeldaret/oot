glabel func_808B09F0
/* 00090 808B09F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00094 808B09F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00098 808B09F8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0009C 808B09FC 8487001C */  lh      $a3, 0x001C($a0)           ## 0000001C
/* 000A0 808B0A00 30E200FF */  andi    $v0, $a3, 0x00FF           ## $v0 = 00000000
/* 000A4 808B0A04 28410025 */  slti    $at, $v0, 0x0025           
/* 000A8 808B0A08 14200006 */  bne     $at, $zero, .L808B0A24     
/* 000AC 808B0A0C 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 000B0 808B0A10 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 000B4 808B0A14 1041000B */  beq     $v0, $at, .L808B0A44       
/* 000B8 808B0A18 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 000BC 808B0A1C 1000000C */  beq     $zero, $zero, .L808B0A50   
/* 000C0 808B0A20 00000000 */  nop
.L808B0A24:
/* 000C4 808B0A24 2DE10024 */  sltiu   $at, $t7, 0x0024           
/* 000C8 808B0A28 10200009 */  beq     $at, $zero, .L808B0A50     
/* 000CC 808B0A2C 000F7880 */  sll     $t7, $t7,  2               
/* 000D0 808B0A30 3C01808B */  lui     $at, %hi(jtbl_808B17E4)       ## $at = 808B0000
/* 000D4 808B0A34 002F0821 */  addu    $at, $at, $t7              
/* 000D8 808B0A38 8C2F17E4 */  lw      $t7, %lo(jtbl_808B17E4)($at)  
/* 000DC 808B0A3C 01E00008 */  jr      $t7                        
/* 000E0 808B0A40 00000000 */  nop
.L808B0A44:
/* 000E4 808B0A44 24180010 */  addiu   $t8, $zero, 0x0010         ## $t8 = 00000010
/* 000E8 808B0A48 1000000A */  beq     $zero, $zero, .L808B0A74   
/* 000EC 808B0A4C A738001C */  sh      $t8, 0x001C($t9)           ## 0000001C
glabel L808B0A50
.L808B0A50:
/* 000F0 808B0A50 3C04808B */  lui     $a0, %hi(D_808B176C)       ## $a0 = 808B0000
/* 000F4 808B0A54 3C05808B */  lui     $a1, %hi(D_808B17A8)       ## $a1 = 808B0000
/* 000F8 808B0A58 24A517A8 */  addiu   $a1, $a1, %lo(D_808B17A8)  ## $a1 = 808B17A8
/* 000FC 808B0A5C 2484176C */  addiu   $a0, $a0, %lo(D_808B176C)  ## $a0 = 808B176C
/* 00100 808B0A60 0C00084C */  jal     osSyncPrintf
              
/* 00104 808B0A64 240600F6 */  addiu   $a2, $zero, 0x00F6         ## $a2 = 000000F6
/* 00108 808B0A68 8FA90018 */  lw      $t1, 0x0018($sp)           
/* 0010C 808B0A6C 24080010 */  addiu   $t0, $zero, 0x0010         ## $t0 = 00000010
/* 00110 808B0A70 A528001C */  sh      $t0, 0x001C($t1)           ## 0000001C
glabel L808B0A74
.L808B0A74:
/* 00114 808B0A74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00118 808B0A78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0011C 808B0A7C 03E00008 */  jr      $ra                        
/* 00120 808B0A80 00000000 */  nop
