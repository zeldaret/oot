.late_rodata
glabel D_80A7BA94
 .word 0x448A6000
glabel D_80A7BA98
 .word 0xC569C000

.text
glabel EnIn_Init
/* 00EBC 80A79E6C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00EC0 80A79E70 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00EC4 80A79E74 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00EC8 80A79E78 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00ECC 80A79E7C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00ED0 80A79E80 00A12021 */  addu    $a0, $a1, $at              
/* 00ED4 80A79E84 240500C0 */  addiu   $a1, $zero, 0x00C0         ## $a1 = 000000C0
/* 00ED8 80A79E88 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00EDC 80A79E8C AFA60030 */  sw      $a2, 0x0030($sp)           
/* 00EE0 80A79E90 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 00EE4 80A79E94 3C198016 */  lui     $t9, %hi(gSaveContext+0x1368)
/* 00EE8 80A79E98 3C0C80A8 */  lui     $t4, %hi(func_80A79FB0)    ## $t4 = 80A80000
/* 00EEC 80A79E9C A0C201E4 */  sb      $v0, 0x01E4($a2)           ## 000001E4
/* 00EF0 80A79EA0 80CE01E4 */  lb      $t6, 0x01E4($a2)           ## 000001E4
/* 00EF4 80A79EA4 3C0280A8 */  lui     $v0, %hi(D_80A7B998)       ## $v0 = 80A80000
/* 00EF8 80A79EA8 2739F9C8 */  addiu   $t9, %lo(gSaveContext+0x1368)
/* 00EFC 80A79EAC 05C10009 */  bgez    $t6, .L80A79ED4            
/* 00F00 80A79EB0 258C9FB0 */  addiu   $t4, $t4, %lo(func_80A79FB0) ## $t4 = 80A79FB0
/* 00F04 80A79EB4 84CF001C */  lh      $t7, 0x001C($a2)           ## 0000001C
/* 00F08 80A79EB8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00F0C 80A79EBC 59E00006 */  blezl   $t7, .L80A79ED8            
/* 00F10 80A79EC0 8F290000 */  lw      $t1, 0x0000($t9)           ## 8015F9C8
/* 00F14 80A79EC4 0C00B55C */  jal     Actor_Kill
              
/* 00F18 80A79EC8 ACC00190 */  sw      $zero, 0x0190($a2)         ## 00000190
/* 00F1C 80A79ECC 10000026 */  beq     $zero, $zero, .L80A79F68   
/* 00F20 80A79ED0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A79ED4:
/* 00F24 80A79ED4 8F290000 */  lw      $t1, 0x0000($t9)           ## 00000000
.L80A79ED8:
/* 00F28 80A79ED8 27B8001C */  addiu   $t8, $sp, 0x001C           ## $t8 = FFFFFFEC
/* 00F2C 80A79EDC 8F280004 */  lw      $t0, 0x0004($t9)           ## 00000004
/* 00F30 80A79EE0 AF090000 */  sw      $t1, 0x0000($t8)           ## FFFFFFEC
/* 00F34 80A79EE4 8F290008 */  lw      $t1, 0x0008($t9)           ## 00000008
/* 00F38 80A79EE8 2442B998 */  addiu   $v0, $v0, %lo(D_80A7B998)  ## $v0 = FFFFB998
/* 00F3C 80A79EEC AF080004 */  sw      $t0, 0x0004($t8)           ## FFFFFFF0
/* 00F40 80A79EF0 AF090008 */  sw      $t1, 0x0008($t8)           ## FFFFFFF4
/* 00F44 80A79EF4 8C4A0000 */  lw      $t2, 0x0000($v0)           ## FFFFB998
/* 00F48 80A79EF8 C7A4001C */  lwc1    $f4, 0x001C($sp)           
/* 00F4C 80A79EFC 3C0180A8 */  lui     $at, %hi(D_80A7BA94)       ## $at = 80A80000
/* 00F50 80A79F00 55400018 */  bnel    $t2, $zero, .L80A79F64     
/* 00F54 80A79F04 ACCC0190 */  sw      $t4, 0x0190($a2)           ## 00000190
/* 00F58 80A79F08 C426BA94 */  lwc1    $f6, %lo(D_80A7BA94)($at)  
/* 00F5C 80A79F0C C7A80020 */  lwc1    $f8, 0x0020($sp)           
/* 00F60 80A79F10 46062032 */  c.eq.s  $f4, $f6                   
/* 00F64 80A79F14 00000000 */  nop
/* 00F68 80A79F18 45020012 */  bc1fl   .L80A79F64                 
/* 00F6C 80A79F1C ACCC0190 */  sw      $t4, 0x0190($a2)           ## 00000190
/* 00F70 80A79F20 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00F74 80A79F24 C7B00024 */  lwc1    $f16, 0x0024($sp)          
/* 00F78 80A79F28 3C0180A8 */  lui     $at, %hi(D_80A7BA98)       ## $at = 80A80000
/* 00F7C 80A79F2C 460A4032 */  c.eq.s  $f8, $f10                  
/* 00F80 80A79F30 00000000 */  nop
/* 00F84 80A79F34 4502000B */  bc1fl   .L80A79F64                 
/* 00F88 80A79F38 ACCC0190 */  sw      $t4, 0x0190($a2)           ## 00000190
/* 00F8C 80A79F3C C432BA98 */  lwc1    $f18, %lo(D_80A7BA98)($at) 
/* 00F90 80A79F40 3C018016 */  lui     $at, %hi(gSaveContext+0x13fa)
/* 00F94 80A79F44 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00F98 80A79F48 46128032 */  c.eq.s  $f16, $f18                 
/* 00F9C 80A79F4C 00000000 */  nop
/* 00FA0 80A79F50 45020004 */  bc1fl   .L80A79F64                 
/* 00FA4 80A79F54 ACCC0190 */  sw      $t4, 0x0190($a2)           ## 00000190
/* 00FA8 80A79F58 A420FA5A */  sh      $zero, %lo(gSaveContext+0x13fa)($at)
/* 00FAC 80A79F5C AC4B0000 */  sw      $t3, 0x0000($v0)           ## FFFFB998
/* 00FB0 80A79F60 ACCC0190 */  sw      $t4, 0x0190($a2)           ## 00000190
.L80A79F64:
/* 00FB4 80A79F64 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A79F68:
/* 00FB8 80A79F68 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00FBC 80A79F6C 03E00008 */  jr      $ra                        
/* 00FC0 80A79F70 00000000 */  nop
