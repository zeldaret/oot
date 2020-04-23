glabel BgSpot06Objects_Destroy
/* 003DC 808AEB5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003E0 808AEB60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003E4 808AEB64 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003E8 808AEB68 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 003EC 808AEB6C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 003F0 808AEB70 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 003F4 808AEB74 10400007 */  beq     $v0, $zero, .L808AEB94     
/* 003F8 808AEB78 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 003FC 808AEB7C 1041000A */  beq     $v0, $at, .L808AEBA8       
/* 00400 808AEB80 24E50170 */  addiu   $a1, $a3, 0x0170           ## $a1 = 00000170
/* 00404 808AEB84 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00408 808AEB88 10410009 */  beq     $v0, $at, .L808AEBB0       
/* 0040C 808AEB8C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00410 808AEB90 14410007 */  bne     $v0, $at, .L808AEBB0       
.L808AEB94:
/* 00414 808AEB94 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00418 808AEB98 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 0041C 808AEB9C 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
/* 00420 808AEBA0 10000004 */  beq     $zero, $zero, .L808AEBB4   
/* 00424 808AEBA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808AEBA8:
/* 00428 808AEBA8 0C016F32 */  jal     func_8005BCC8              
/* 0042C 808AEBAC 8FA4001C */  lw      $a0, 0x001C($sp)           
.L808AEBB0:
/* 00430 808AEBB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808AEBB4:
/* 00434 808AEBB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00438 808AEBB8 03E00008 */  jr      $ra                        
/* 0043C 808AEBBC 00000000 */  nop
