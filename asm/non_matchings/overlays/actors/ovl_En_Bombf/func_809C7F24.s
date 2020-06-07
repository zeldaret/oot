.rdata
glabel D_809C8300
    .asciz "../z_en_bombf.c"
    .balign 4

.text
glabel func_809C7F24
/* 00FC4 809C7F24 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00FC8 809C7F28 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FCC 809C7F2C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00FD0 809C7F30 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00FD4 809C7F34 0C031A73 */  jal     Graph_Alloc
              
/* 00FD8 809C7F38 24050028 */  addiu   $a1, $zero, 0x0028         ## $a1 = 00000028
/* 00FDC 809C7F3C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00FE0 809C7F40 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00FE4 809C7F44 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 00FE8 809C7F48 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 00FEC 809C7F4C AFA20020 */  sw      $v0, 0x0020($sp)           
/* 00FF0 809C7F50 0C0347F5 */  jal     func_800D1FD4              
/* 00FF4 809C7F54 00812021 */  addu    $a0, $a0, $at              
/* 00FF8 809C7F58 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00FFC 809C7F5C 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 01000 809C7F60 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 01004 809C7F64 ACEE0000 */  sw      $t6, 0x0000($a3)           ## 00000000
/* 01008 809C7F68 3C05809D */  lui     $a1, %hi(D_809C8300)       ## $a1 = 809D0000
/* 0100C 809C7F6C 24E30008 */  addiu   $v1, $a3, 0x0008           ## $v1 = 00000008
/* 01010 809C7F70 AFA30020 */  sw      $v1, 0x0020($sp)           
/* 01014 809C7F74 24A58300 */  addiu   $a1, $a1, %lo(D_809C8300)  ## $a1 = 809C8300
/* 01018 809C7F78 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 0101C 809C7F7C 240603FD */  addiu   $a2, $zero, 0x03FD         ## $a2 = 000003FD
/* 01020 809C7F80 0C0346A2 */  jal     Matrix_NewMtx              
/* 01024 809C7F84 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 01028 809C7F88 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 0102C 809C7F8C 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 01030 809C7F90 3C0FDF00 */  lui     $t7, 0xDF00                ## $t7 = DF000000
/* 01034 809C7F94 ACE20004 */  sw      $v0, 0x0004($a3)           ## 00000004
/* 01038 809C7F98 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 0103C 809C7F9C AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 01040 809C7FA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01044 809C7FA4 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 01048 809C7FA8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0104C 809C7FAC 03E00008 */  jr      $ra                        
/* 01050 809C7FB0 00000000 */  nop
