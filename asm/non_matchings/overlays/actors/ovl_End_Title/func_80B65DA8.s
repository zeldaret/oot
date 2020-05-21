.rdata
glabel D_80B698B4
    .asciz "../z_end_title.c"
    .balign 4

glabel D_80B698C8
    .asciz "../z_end_title.c"
    .balign 4

.text
glabel func_80B65DA8
/* 00688 80B65DA8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0068C 80B65DAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00690 80B65DB0 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00694 80B65DB4 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00698 80B65DB8 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
/* 0069C 80B65DBC 3C0680B7 */  lui     $a2, %hi(D_80B698B4)       ## $a2 = 80B70000
/* 006A0 80B65DC0 2841044D */  slti    $at, $v0, 0x044D           
/* 006A4 80B65DC4 54200007 */  bnel    $at, $zero, .L80B65DE4     
/* 006A8 80B65DC8 8FB9004C */  lw      $t9, 0x004C($sp)           
/* 006AC 80B65DCC 9082014C */  lbu     $v0, 0x014C($a0)           ## 0000014C
/* 006B0 80B65DD0 284100FF */  slti    $at, $v0, 0x00FF           
/* 006B4 80B65DD4 10200002 */  beq     $at, $zero, .L80B65DE0     
/* 006B8 80B65DD8 24580003 */  addiu   $t8, $v0, 0x0003           ## $t8 = 00000003
/* 006BC 80B65DDC A098014C */  sb      $t8, 0x014C($a0)           ## 0000014C
.L80B65DE0:
/* 006C0 80B65DE0 8FB9004C */  lw      $t9, 0x004C($sp)           
.L80B65DE4:
/* 006C4 80B65DE4 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFE0
/* 006C8 80B65DE8 24C698B4 */  addiu   $a2, $a2, %lo(D_80B698B4)  ## $a2 = 80B698B4
/* 006CC 80B65DEC 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
/* 006D0 80B65DF0 24070252 */  addiu   $a3, $zero, 0x0252         ## $a3 = 00000252
/* 006D4 80B65DF4 0C031AB1 */  jal     Graph_OpenDisps              
/* 006D8 80B65DF8 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 006DC 80B65DFC 8FA80038 */  lw      $t0, 0x0038($sp)           
/* 006E0 80B65E00 0C024FCD */  jal     func_80093F34              
/* 006E4 80B65E04 8D0402B0 */  lw      $a0, 0x02B0($t0)           ## 000002B0
/* 006E8 80B65E08 8FA80038 */  lw      $t0, 0x0038($sp)           
/* 006EC 80B65E0C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 006F0 80B65E10 3C0AFA00 */  lui     $t2, 0xFA00                ## $t2 = FA000000
/* 006F4 80B65E14 AD0202B0 */  sw      $v0, 0x02B0($t0)           ## 000002B0
/* 006F8 80B65E18 354A0080 */  ori     $t2, $t2, 0x0080           ## $t2 = FA000080
/* 006FC 80B65E1C AD0902B0 */  sw      $t1, 0x02B0($t0)           ## 000002B0
/* 00700 80B65E20 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00704 80B65E24 8FAB0048 */  lw      $t3, 0x0048($sp)           
/* 00708 80B65E28 3C0F80B7 */  lui     $t7, %hi(D_80B69720)       ## $t7 = 80B70000
/* 0070C 80B65E2C 25EF9720 */  addiu   $t7, $t7, %lo(D_80B69720)  ## $t7 = 80B69720
/* 00710 80B65E30 916D014C */  lbu     $t5, 0x014C($t3)           ## 0000014C
/* 00714 80B65E34 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 00718 80B65E38 3C0680B7 */  lui     $a2, %hi(D_80B698C8)       ## $a2 = 80B70000
/* 0071C 80B65E3C AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00720 80B65E40 8D0202B0 */  lw      $v0, 0x02B0($t0)           ## 000002B0
/* 00724 80B65E44 24C698C8 */  addiu   $a2, $a2, %lo(D_80B698C8)  ## $a2 = 80B698C8
/* 00728 80B65E48 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFE0
/* 0072C 80B65E4C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00730 80B65E50 AD0E02B0 */  sw      $t6, 0x02B0($t0)           ## 000002B0
/* 00734 80B65E54 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 00738 80B65E58 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0073C 80B65E5C 8FB9004C */  lw      $t9, 0x004C($sp)           
/* 00740 80B65E60 24070258 */  addiu   $a3, $zero, 0x0258         ## $a3 = 00000258
/* 00744 80B65E64 0C031AD5 */  jal     Graph_CloseDisps              
/* 00748 80B65E68 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
/* 0074C 80B65E6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00750 80B65E70 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00754 80B65E74 03E00008 */  jr      $ra                        
/* 00758 80B65E78 00000000 */  nop
/* 0075C 80B65E7C 00000000 */  nop
