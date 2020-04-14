glabel func_809A79F0
/* 00000 809A79F0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00004 809A79F4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00008 809A79F8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0000C 809A79FC 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00010 809A7A00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00014 809A7A04 00A12021 */  addu    $a0, $a1, $at              
/* 00018 809A7A08 84C50048 */  lh      $a1, 0x0048($a2)           ## 00000048
/* 0001C 809A7A0C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00020 809A7A10 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00024 809A7A14 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00028 809A7A18 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0002C 809A7A1C 00027400 */  sll     $t6, $v0, 16               
/* 00030 809A7A20 000E7C03 */  sra     $t7, $t6, 16               
/* 00034 809A7A24 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00038 809A7A28 05E00006 */  bltz    $t7, .L809A7A44            
/* 0003C 809A7A2C A4C2004A */  sh      $v0, 0x004A($a2)           ## 0000004A
/* 00040 809A7A30 84C5004A */  lh      $a1, 0x004A($a2)           ## 0000004A
/* 00044 809A7A34 0C026062 */  jal     Object_IsLoaded
              
/* 00048 809A7A38 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0004C 809A7A3C 14400004 */  bne     $v0, $zero, .L809A7A50     
/* 00050 809A7A40 8FA60020 */  lw      $a2, 0x0020($sp)           
.L809A7A44:
/* 00054 809A7A44 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 00058 809A7A48 A4D8005C */  sh      $t8, 0x005C($a2)           ## 0000005C
/* 0005C 809A7A4C ACC00028 */  sw      $zero, 0x0028($a2)         ## 00000028
.L809A7A50:
/* 00060 809A7A50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00064 809A7A54 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00068 809A7A58 03E00008 */  jr      $ra                        
/* 0006C 809A7A5C 00000000 */  nop
