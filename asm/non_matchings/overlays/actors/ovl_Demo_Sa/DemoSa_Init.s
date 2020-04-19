glabel DemoSa_Init
/* 0194C 8098FDAC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01950 8098FDB0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 01954 8098FDB4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01958 8098FDB8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0195C 8098FDBC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01960 8098FDC0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01964 8098FDC4 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 01968 8098FDC8 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 0196C 8098FDCC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01970 8098FDD0 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 01974 8098FDD4 0C00AC78 */  jal     ActorShape_Init
              
/* 01978 8098FDD8 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 0197C 8098FDDC 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 01980 8098FDE0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01984 8098FDE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01988 8098FDE8 1041000B */  beq     $v0, $at, .L8098FE18       
/* 0198C 8098FDEC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01990 8098FDF0 1041000D */  beq     $v0, $at, .L8098FE28       
/* 01994 8098FDF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01998 8098FDF8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0199C 8098FDFC 1041000E */  beq     $v0, $at, .L8098FE38       
/* 019A0 8098FE00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 019A4 8098FE04 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 019A8 8098FE08 1041000F */  beq     $v0, $at, .L8098FE48       
/* 019AC 8098FE0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 019B0 8098FE10 10000011 */  beq     $zero, $zero, .L8098FE58   
/* 019B4 8098FE14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8098FE18:
/* 019B8 8098FE18 0C263B3D */  jal     func_8098ECF4              
/* 019BC 8098FE1C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 019C0 8098FE20 10000010 */  beq     $zero, $zero, .L8098FE64   
/* 019C4 8098FE24 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8098FE28:
/* 019C8 8098FE28 0C263CE4 */  jal     func_8098F390              
/* 019CC 8098FE2C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 019D0 8098FE30 1000000C */  beq     $zero, $zero, .L8098FE64   
/* 019D4 8098FE34 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8098FE38:
/* 019D8 8098FE38 0C263D08 */  jal     func_8098F420              
/* 019DC 8098FE3C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 019E0 8098FE40 10000008 */  beq     $zero, $zero, .L8098FE64   
/* 019E4 8098FE44 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8098FE48:
/* 019E8 8098FE48 0C263E0F */  jal     func_8098F83C              
/* 019EC 8098FE4C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 019F0 8098FE50 10000004 */  beq     $zero, $zero, .L8098FE64   
/* 019F4 8098FE54 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8098FE58:
/* 019F8 8098FE58 0C2639FF */  jal     func_8098E7FC              
/* 019FC 8098FE5C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01A00 8098FE60 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8098FE64:
/* 01A04 8098FE64 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01A08 8098FE68 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 01A0C 8098FE6C 03E00008 */  jr      $ra                        
/* 01A10 8098FE70 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
