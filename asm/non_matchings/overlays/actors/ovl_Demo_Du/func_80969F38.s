glabel func_80969F38
/* 00468 80969F38 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0046C 80969F3C AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00470 80969F40 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 00474 80969F44 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00478 80969F48 8CC21C44 */  lw      $v0, 0x1C44($a2)           ## 00001C44
/* 0047C 80969F4C 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00480 80969F50 44813000 */  mtc1    $at, $f6                   ## $f6 = 80.00
/* 00484 80969F54 C4440028 */  lwc1    $f4, 0x0028($v0)           ## 00000028
/* 00488 80969F58 C4400024 */  lwc1    $f0, 0x0024($v0)           ## 00000024
/* 0048C 80969F5C C44C002C */  lwc1    $f12, 0x002C($v0)          ## 0000002C
/* 00490 80969F60 46062080 */  add.s   $f2, $f4, $f6              
/* 00494 80969F64 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00498 80969F68 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 0049C 80969F6C AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 004A0 80969F70 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 004A4 80969F74 E7A20014 */  swc1    $f2, 0x0014($sp)           
/* 004A8 80969F78 AFA6003C */  sw      $a2, 0x003C($sp)           
/* 004AC 80969F7C AFA00024 */  sw      $zero, 0x0024($sp)         
/* 004B0 80969F80 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 004B4 80969F84 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 004B8 80969F88 2407008B */  addiu   $a3, $zero, 0x008B         ## $a3 = 0000008B
/* 004BC 80969F8C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 004C0 80969F90 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 004C4 80969F94 E7AC0018 */  swc1    $f12, 0x0018($sp)          
/* 004C8 80969F98 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 004CC 80969F9C 0C021344 */  jal     Item_Give              
/* 004D0 80969FA0 24050067 */  addiu   $a1, $zero, 0x0067         ## $a1 = 00000067
/* 004D4 80969FA4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 004D8 80969FA8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 004DC 80969FAC 03E00008 */  jr      $ra                        
/* 004E0 80969FB0 00000000 */  nop
