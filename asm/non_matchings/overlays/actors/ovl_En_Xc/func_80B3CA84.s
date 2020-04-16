.late_rodata
glabel D_80B421F8
    .float -2225.0

.text
glabel func_80B3CA84
/* 008A4 80B3CA84 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008A8 80B3CA88 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008AC 80B3CA8C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 008B0 80B3CA90 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 008B4 80B3CA94 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 008B8 80B3CA98 15C1002B */  bne     $t6, $at, .L80B3CB48       
/* 008BC 80B3CA9C 00000000 */  nop
/* 008C0 80B3CAA0 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 008C4 80B3CAA4 3C0180B4 */  lui     $at, %hi(D_80B421F8)       ## $at = 80B40000
/* 008C8 80B3CAA8 C42421F8 */  lwc1    $f4, %lo(D_80B421F8)($at)  
/* 008CC 80B3CAAC C440002C */  lwc1    $f0, 0x002C($v0)           ## 0000002D
/* 008D0 80B3CAB0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 008D4 80B3CAB4 4604003C */  c.lt.s  $f0, $f4                   
/* 008D8 80B3CAB8 00000000 */  nop
/* 008DC 80B3CABC 45000020 */  bc1f    .L80B3CB40                 
/* 008E0 80B3CAC0 00000000 */  nop
/* 008E4 80B3CAC4 0C02FF21 */  jal     func_800BFC84              
/* 008E8 80B3CAC8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 008EC 80B3CACC 1440001C */  bne     $v0, $zero, .L80B3CB40     
/* 008F0 80B3CAD0 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 008F4 80B3CAD4 3C020200 */  lui     $v0, 0x0200                ## $v0 = 02000000
/* 008F8 80B3CAD8 24423F80 */  addiu   $v0, $v0, 0x3F80           ## $v0 = 02003F80
/* 008FC 80B3CADC 00027900 */  sll     $t7, $v0,  4               
/* 00900 80B3CAE0 000FC702 */  srl     $t8, $t7, 28               
/* 00904 80B3CAE4 0018C880 */  sll     $t9, $t8,  2               
/* 00908 80B3CAE8 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 0090C 80B3CAEC 01194021 */  addu    $t0, $t0, $t9              
/* 00910 80B3CAF0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00914 80B3CAF4 8D086FA8 */  lw      $t0, 0x6FA8($t0)           ## 80166FA8
/* 00918 80B3CAF8 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0091C 80B3CAFC 00414824 */  and     $t1, $v0, $at              
/* 00920 80B3CB00 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00924 80B3CB04 01095021 */  addu    $t2, $t0, $t1              
/* 00928 80B3CB08 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 0092C 80B3CB0C 01415821 */  addu    $t3, $t2, $at              
/* 00930 80B3CB10 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00934 80B3CB14 ACCB1D68 */  sw      $t3, 0x1D68($a2)           ## 00001D68
/* 00938 80B3CB18 946D0EDE */  lhu     $t5, 0x0EDE($v1)           ## 8015F53E
/* 0093C 80B3CB1C 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00940 80B3CB20 A06C1414 */  sb      $t4, 0x1414($v1)           ## 8015FA74
/* 00944 80B3CB24 35AE0001 */  ori     $t6, $t5, 0x0001           ## $t6 = 00000001
/* 00948 80B3CB28 A46E0EDE */  sh      $t6, 0x0EDE($v1)           ## 8015F53E
/* 0094C 80B3CB2C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00950 80B3CB30 0C021344 */  jal     Item_Give              
/* 00954 80B3CB34 2405005A */  addiu   $a1, $zero, 0x005A         ## $a1 = 0000005A
/* 00958 80B3CB38 10000003 */  beq     $zero, $zero, .L80B3CB48   
/* 0095C 80B3CB3C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B3CB40:
/* 00960 80B3CB40 10000001 */  beq     $zero, $zero, .L80B3CB48   
/* 00964 80B3CB44 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B3CB48:
/* 00968 80B3CB48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0096C 80B3CB4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00970 80B3CB50 03E00008 */  jr      $ra                        
/* 00974 80B3CB54 00000000 */  nop
