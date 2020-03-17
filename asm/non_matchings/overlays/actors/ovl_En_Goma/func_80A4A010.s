glabel func_80A4A010
/* 01150 80A4A010 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01154 80A4A014 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01158 80A4A018 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0115C 80A4A01C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01160 80A4A020 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01164 80A4A024 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01168 80A4A028 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0116C 80A4A02C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 01170 80A4A030 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 01174 80A4A034 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 01178 80A4A038 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 0117C 80A4A03C 8FAE002C */  lw      $t6, 0x002C($sp)           
/* 01180 80A4A040 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01184 80A4A044 0C00B69E */  jal     func_8002DA78              
/* 01188 80A4A048 8DC51C44 */  lw      $a1, 0x1C44($t6)           ## 00001C44
/* 0118C 80A4A04C 00022C00 */  sll     $a1, $v0, 16               
/* 01190 80A4A050 A7A20026 */  sh      $v0, 0x0026($sp)           
/* 01194 80A4A054 00052C03 */  sra     $a1, $a1, 16               
/* 01198 80A4A058 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 0119C 80A4A05C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 011A0 80A4A060 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 011A4 80A4A064 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 011A8 80A4A068 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 011AC 80A4A06C 87A50026 */  lh      $a1, 0x0026($sp)           
/* 011B0 80A4A070 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 011B4 80A4A074 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 011B8 80A4A078 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 011BC 80A4A07C 860F02CC */  lh      $t7, 0x02CC($s0)           ## 000002CC
/* 011C0 80A4A080 55E00004 */  bnel    $t7, $zero, .L80A4A094     
/* 011C4 80A4A084 A60002C4 */  sh      $zero, 0x02C4($s0)         ## 000002C4
/* 011C8 80A4A088 0C292863 */  jal     func_80A4A18C              
/* 011CC 80A4A08C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011D0 80A4A090 A60002C4 */  sh      $zero, 0x02C4($s0)         ## 000002C4
.L80A4A094:
/* 011D4 80A4A094 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 011D8 80A4A098 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 011DC 80A4A09C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 011E0 80A4A0A0 03E00008 */  jr      $ra                        
/* 011E4 80A4A0A4 00000000 */  nop


