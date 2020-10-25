glabel func_80B3FA4C
/* 0386C 80B3FA4C 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 03870 80B3FA50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03874 80B3FA54 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 03878 80B3FA58 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 0387C 80B3FA5C 8C8F02A8 */  lw      $t7, 0x02A8($a0)           ## 000002A8
/* 03880 80B3FA60 3C1880B4 */  lui     $t8, %hi(D_80B41DB0)       ## $t8 = 80B40000
/* 03884 80B3FA64 27181DB0 */  addiu   $t8, $t8, %lo(D_80B41DB0)  ## $t8 = 80B41DB0
/* 03888 80B3FA68 51E0001A */  beql    $t7, $zero, .L80B3FAD4     
/* 0388C 80B3FA6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03890 80B3FA70 8F080000 */  lw      $t0, 0x0000($t8)           ## 80B41DB0
/* 03894 80B3FA74 27A4001C */  addiu   $a0, $sp, 0x001C           ## $a0 = FFFFFFD4
/* 03898 80B3FA78 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFEC
/* 0389C 80B3FA7C AC880000 */  sw      $t0, 0x0000($a0)           ## FFFFFFD4
/* 038A0 80B3FA80 8F190004 */  lw      $t9, 0x0004($t8)           ## 80B41DB4
/* 038A4 80B3FA84 AC990004 */  sw      $t9, 0x0004($a0)           ## FFFFFFD8
/* 038A8 80B3FA88 8F080008 */  lw      $t0, 0x0008($t8)           ## 80B41DB8
/* 038AC 80B3FA8C 0C0346BD */  jal     Matrix_MultVec3f              
/* 038B0 80B3FA90 AC880008 */  sw      $t0, 0x0008($a0)           ## FFFFFFDC
/* 038B4 80B3FA94 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 038B8 80B3FA98 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 038BC 80B3FA9C 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 038C0 80B3FAA0 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFEC
/* 038C4 80B3FAA4 27A60028 */  addiu   $a2, $sp, 0x0028           ## $a2 = FFFFFFE0
/* 038C8 80B3FAA8 27A70018 */  addiu   $a3, $sp, 0x0018           ## $a3 = FFFFFFD0
/* 038CC 80B3FAAC 0C029B84 */  jal     SkinMatrix_Vec3fMtxFMultXYZW              
/* 038D0 80B3FAB0 00812021 */  addu    $a0, $a0, $at              
/* 038D4 80B3FAB4 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 038D8 80B3FAB8 27A50028 */  addiu   $a1, $sp, 0x0028           ## $a1 = FFFFFFE0
/* 038DC 80B3FABC 24060050 */  addiu   $a2, $zero, 0x0050         ## $a2 = 00000050
/* 038E0 80B3FAC0 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 038E4 80B3FAC4 240728C1 */  addiu   $a3, $zero, 0x28C1         ## $a3 = 000028C1
/* 038E8 80B3FAC8 8FA90048 */  lw      $t1, 0x0048($sp)           
/* 038EC 80B3FACC AD2002A8 */  sw      $zero, 0x02A8($t1)         ## 000002A8
/* 038F0 80B3FAD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B3FAD4:
/* 038F4 80B3FAD4 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 038F8 80B3FAD8 03E00008 */  jr      $ra                        
/* 038FC 80B3FADC 00000000 */  nop
