glabel func_80B41BA4
/* 059C4 80B41BA4 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 059C8 80B41BA8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 059CC 80B41BAC AFB00028 */  sw      $s0, 0x0028($sp)           
/* 059D0 80B41BB0 AFA40078 */  sw      $a0, 0x0078($sp)           
/* 059D4 80B41BB4 AFA5007C */  sw      $a1, 0x007C($sp)           
/* 059D8 80B41BB8 8482025C */  lh      $v0, 0x025C($a0)           ## 0000025C
/* 059DC 80B41BBC 3C1880B4 */  lui     $t8, %hi(D_80B41D6C)       ## $t8 = 80B40000
/* 059E0 80B41BC0 3C0680B4 */  lui     $a2, %hi(D_80B421A0)       ## $a2 = 80B40000
/* 059E4 80B41BC4 00027880 */  sll     $t7, $v0,  2               
/* 059E8 80B41BC8 030FC021 */  addu    $t8, $t8, $t7              
/* 059EC 80B41BCC 8F181D6C */  lw      $t8, %lo(D_80B41D6C)($t8)  
/* 059F0 80B41BD0 24C621A0 */  addiu   $a2, $a2, %lo(D_80B421A0)  ## $a2 = 80B421A0
/* 059F4 80B41BD4 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFD0
/* 059F8 80B41BD8 AFB80068 */  sw      $t8, 0x0068($sp)           
/* 059FC 80B41BDC 8CB00000 */  lw      $s0, 0x0000($a1)           ## 00000000
/* 05A00 80B41BE0 2407048C */  addiu   $a3, $zero, 0x048C         ## $a3 = 0000048C
/* 05A04 80B41BE4 0C031AB1 */  jal     func_800C6AC4              
/* 05A08 80B41BE8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 05A0C 80B41BEC 8FA40078 */  lw      $a0, 0x0078($sp)           
/* 05A10 80B41BF0 8FA5007C */  lw      $a1, 0x007C($sp)           
/* 05A14 80B41BF4 0C00BAF3 */  jal     func_8002EBCC              
/* 05A18 80B41BF8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 05A1C 80B41BFC 0C024F46 */  jal     func_80093D18              
/* 05A20 80B41C00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05A24 80B41C04 8FA70068 */  lw      $a3, 0x0068($sp)           
/* 05A28 80B41C08 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 05A2C 80B41C0C 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 05A30 80B41C10 00075100 */  sll     $t2, $a3,  4               
/* 05A34 80B41C14 000A5F02 */  srl     $t3, $t2, 28               
/* 05A38 80B41C18 3C0D8016 */  lui     $t5, 0x8016                ## $t5 = 80160000
/* 05A3C 80B41C1C 24680008 */  addiu   $t0, $v1, 0x0008           ## $t0 = 00000008
/* 05A40 80B41C20 AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 05A44 80B41C24 25AD6FA8 */  addiu   $t5, $t5, 0x6FA8           ## $t5 = 80166FA8
/* 05A48 80B41C28 000B6080 */  sll     $t4, $t3,  2               
/* 05A4C 80B41C2C 35290020 */  ori     $t1, $t1, 0x0020           ## $t1 = DB060020
/* 05A50 80B41C30 018D2021 */  addu    $a0, $t4, $t5              
/* 05A54 80B41C34 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 05A58 80B41C38 8C8E0000 */  lw      $t6, 0x0000($a0)           ## 00000000
/* 05A5C 80B41C3C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 05A60 80B41C40 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 05A64 80B41C44 00E12824 */  and     $a1, $a3, $at              
/* 05A68 80B41C48 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 05A6C 80B41C4C 01C57821 */  addu    $t7, $t6, $a1              
/* 05A70 80B41C50 01E6C021 */  addu    $t8, $t7, $a2              
/* 05A74 80B41C54 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 05A78 80B41C58 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 05A7C 80B41C5C 3C08DB06 */  lui     $t0, 0xDB06                ## $t0 = DB060000
/* 05A80 80B41C60 35080024 */  ori     $t0, $t0, 0x0024           ## $t0 = DB060024
/* 05A84 80B41C64 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 05A88 80B41C68 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 05A8C 80B41C6C AC680000 */  sw      $t0, 0x0000($v1)           ## 00000000
/* 05A90 80B41C70 8C890000 */  lw      $t1, 0x0000($a0)           ## 00000000
/* 05A94 80B41C74 3C0D80B4 */  lui     $t5, %hi(func_80B41B0C)    ## $t5 = 80B40000
/* 05A98 80B41C78 3C0C80B4 */  lui     $t4, %hi(func_80B41A88)    ## $t4 = 80B40000
/* 05A9C 80B41C7C 01255021 */  addu    $t2, $t1, $a1              
/* 05AA0 80B41C80 01465821 */  addu    $t3, $t2, $a2              
/* 05AA4 80B41C84 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 05AA8 80B41C88 8FA30078 */  lw      $v1, 0x0078($sp)           
/* 05AAC 80B41C8C 258C1A88 */  addiu   $t4, $t4, %lo(func_80B41A88) ## $t4 = 80B41A88
/* 05AB0 80B41C90 25AD1B0C */  addiu   $t5, $t5, %lo(func_80B41B0C) ## $t5 = 80B41B0C
/* 05AB4 80B41C94 2462014C */  addiu   $v0, $v1, 0x014C           ## $v0 = 0000014C
/* 05AB8 80B41C98 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 05ABC 80B41C9C 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 05AC0 80B41CA0 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 05AC4 80B41CA4 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 05AC8 80B41CA8 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 05ACC 80B41CAC 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 05AD0 80B41CB0 0C0286B2 */  jal     func_800A1AC8              
/* 05AD4 80B41CB4 AFA30018 */  sw      $v1, 0x0018($sp)           
/* 05AD8 80B41CB8 3C0680B4 */  lui     $a2, %hi(D_80B421B0)       ## $a2 = 80B40000
/* 05ADC 80B41CBC 24C621B0 */  addiu   $a2, $a2, %lo(D_80B421B0)  ## $a2 = 80B421B0
/* 05AE0 80B41CC0 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFD0
/* 05AE4 80B41CC4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 05AE8 80B41CC8 0C031AD5 */  jal     func_800C6B54              
/* 05AEC 80B41CCC 240704B7 */  addiu   $a3, $zero, 0x04B7         ## $a3 = 000004B7
/* 05AF0 80B41CD0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 05AF4 80B41CD4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 05AF8 80B41CD8 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 05AFC 80B41CDC 03E00008 */  jr      $ra                        
/* 05B00 80B41CE0 00000000 */  nop


