glabel func_809FDC38
/* 00008 809FDC38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0000C 809FDC3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00010 809FDC40 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00014 809FDC44 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00018 809FDC48 24050021 */  addiu   $a1, $zero, 0x0021         ## $a1 = 00000021
/* 0001C 809FDC4C 10400003 */  beq     $v0, $zero, .L809FDC5C     
/* 00020 809FDC50 3043FFFF */  andi    $v1, $v0, 0xFFFF           ## $v1 = 00000000
/* 00024 809FDC54 1000001D */  beq     $zero, $zero, .L809FDCCC   
/* 00028 809FDC58 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L809FDC5C:
/* 0002C 809FDC5C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00030 809FDC60 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00034 809FDC64 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 00038 809FDC68 8DEF71B8 */  lw      $t7, 0x71B8($t7)           ## 801271B8
/* 0003C 809FDC6C 8C4E00A0 */  lw      $t6, 0x00A0($v0)           ## 8015E700
/* 00040 809FDC70 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 00044 809FDC74 933971F6 */  lbu     $t9, 0x71F6($t9)           ## 801271F6
/* 00048 809FDC78 01CFC024 */  and     $t8, $t6, $t7              
/* 0004C 809FDC7C 3C098012 */  lui     $t1, 0x8012                ## $t1 = 80120000
/* 00050 809FDC80 03384007 */  srav    $t0, $t8, $t9              
/* 00054 809FDC84 5100000B */  beql    $t0, $zero, .L809FDCB4     
/* 00058 809FDC88 944C0F1A */  lhu     $t4, 0x0F1A($v0)           ## 8015F57A
/* 0005C 809FDC8C 8D29716C */  lw      $t1, 0x716C($t1)           ## 8012716C
/* 00060 809FDC90 8C4A00A4 */  lw      $t2, 0x00A4($v0)           ## 8015E704
/* 00064 809FDC94 012A5824 */  and     $t3, $t1, $t2              
/* 00068 809FDC98 11600003 */  beq     $t3, $zero, .L809FDCA8     
/* 0006C 809FDC9C 00000000 */  nop
/* 00070 809FDCA0 1000000A */  beq     $zero, $zero, .L809FDCCC   
/* 00074 809FDCA4 2402301E */  addiu   $v0, $zero, 0x301E         ## $v0 = 0000301E
.L809FDCA8:
/* 00078 809FDCA8 10000008 */  beq     $zero, $zero, .L809FDCCC   
/* 0007C 809FDCAC 2402301D */  addiu   $v0, $zero, 0x301D         ## $v0 = 0000301D
/* 00080 809FDCB0 944C0F1A */  lhu     $t4, 0x0F1A($v0)           ## 00003F37
.L809FDCB4:
/* 00084 809FDCB4 2402301A */  addiu   $v0, $zero, 0x301A         ## $v0 = 0000301A
/* 00088 809FDCB8 318D0008 */  andi    $t5, $t4, 0x0008           ## $t5 = 00000000
/* 0008C 809FDCBC 11A00003 */  beq     $t5, $zero, .L809FDCCC     
/* 00090 809FDCC0 00000000 */  nop
/* 00094 809FDCC4 10000001 */  beq     $zero, $zero, .L809FDCCC   
/* 00098 809FDCC8 2402301B */  addiu   $v0, $zero, 0x301B         ## $v0 = 0000301B
.L809FDCCC:
/* 0009C 809FDCCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000A0 809FDCD0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000A4 809FDCD4 03E00008 */  jr      $ra                        
/* 000A8 809FDCD8 00000000 */  nop
