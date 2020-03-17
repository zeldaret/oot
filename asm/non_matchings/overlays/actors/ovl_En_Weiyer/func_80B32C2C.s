glabel func_80B32C2C
/* 0099C 80B32C2C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 009A0 80B32C30 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 009A4 80B32C34 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009A8 80B32C38 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 009AC 80B32C3C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 009B0 80B32C40 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 009B4 80B32C44 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 009B8 80B32C48 860E0194 */  lh      $t6, 0x0194($s0)           ## 00000194
/* 009BC 80B32C4C 24060800 */  addiu   $a2, $zero, 0x0800         ## $a2 = 00000800
/* 009C0 80B32C50 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 009C4 80B32C54 15C00011 */  bne     $t6, $zero, .L80B32C9C     
/* 009C8 80B32C58 24051800 */  addiu   $a1, $zero, 0x1800         ## $a1 = 00001800
/* 009CC 80B32C5C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 009D0 80B32C60 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 009D4 80B32C64 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 009D8 80B32C68 10400008 */  beq     $v0, $zero, .L80B32C8C     
/* 009DC 80B32C6C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 009E0 80B32C70 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 009E4 80B32C74 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 009E8 80B32C78 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
/* 009EC 80B32C7C 01E1C021 */  addu    $t8, $t7, $at              
/* 009F0 80B32C80 A61800B6 */  sh      $t8, 0x00B6($s0)           ## 000000B6
/* 009F4 80B32C84 10000025 */  beq     $zero, $zero, .L80B32D1C   
/* 009F8 80B32C88 A6190194 */  sh      $t9, 0x0194($s0)           ## 00000194
.L80B32C8C:
/* 009FC 80B32C8C 860800B4 */  lh      $t0, 0x00B4($s0)           ## 000000B4
/* 00A00 80B32C90 00084840 */  sll     $t1, $t0,  1               
/* 00A04 80B32C94 10000021 */  beq     $zero, $zero, .L80B32D1C   
/* 00A08 80B32C98 A60900B8 */  sh      $t1, 0x00B8($s0)           ## 000000B8
.L80B32C9C:
/* 00A0C 80B32C9C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00A10 80B32CA0 24060800 */  addiu   $a2, $zero, 0x0800         ## $a2 = 00000800
/* 00A14 80B32CA4 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00A18 80B32CA8 C606000C */  lwc1    $f6, 0x000C($s0)           ## 0000000C
/* 00A1C 80B32CAC 4606203C */  c.lt.s  $f4, $f6                   
/* 00A20 80B32CB0 00000000 */  nop
/* 00A24 80B32CB4 45020014 */  bc1fl   .L80B32D08                 
/* 00A28 80B32CB8 960D0088 */  lhu     $t5, 0x0088($s0)           ## 00000088
/* 00A2C 80B32CBC 860A00B4 */  lh      $t2, 0x00B4($s0)           ## 000000B4
/* 00A30 80B32CC0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00A34 80B32CC4 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00A38 80B32CC8 1940000A */  blez    $t2, .L80B32CF4            
/* 00A3C 80B32CCC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00A40 80B32CD0 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00A44 80B32CD4 240C0190 */  addiu   $t4, $zero, 0x0190         ## $t4 = 00000190
/* 00A48 80B32CD8 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00A4C 80B32CDC AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 00A50 80B32CE0 0C00A527 */  jal     func_8002949C              
/* 00A54 80B32CE4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00A58 80B32CE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A5C 80B32CEC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A60 80B32CF0 240538C4 */  addiu   $a1, $zero, 0x38C4         ## $a1 = 000038C4
.L80B32CF4:
/* 00A64 80B32CF4 0C2CC94E */  jal     func_80B32538              
/* 00A68 80B32CF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A6C 80B32CFC 10000008 */  beq     $zero, $zero, .L80B32D20   
/* 00A70 80B32D00 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A74 80B32D04 960D0088 */  lhu     $t5, 0x0088($s0)           ## 00000088
.L80B32D08:
/* 00A78 80B32D08 31AE0001 */  andi    $t6, $t5, 0x0001           ## $t6 = 00000000
/* 00A7C 80B32D0C 51C00004 */  beql    $t6, $zero, .L80B32D20     
/* 00A80 80B32D10 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A84 80B32D14 0C2CC925 */  jal     func_80B32494              
/* 00A88 80B32D18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B32D1C:
/* 00A8C 80B32D1C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B32D20:
/* 00A90 80B32D20 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00A94 80B32D24 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A98 80B32D28 03E00008 */  jr      $ra                        
/* 00A9C 80B32D2C 00000000 */  nop


