glabel BgMoriHashigo_Destroy
/* 003C0 808A2920 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003C4 808A2924 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003C8 808A2928 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003CC 808A292C 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 003D0 808A2930 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 003D4 808A2934 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003D8 808A2938 14400006 */  bne     $v0, $zero, .L808A2954     
/* 003DC 808A293C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 003E0 808A2940 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
/* 003E4 808A2944 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 003E8 808A2948 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 003EC 808A294C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 003F0 808A2950 84E2001C */  lh      $v0, 0x001C($a3)           ## 0000001C
.L808A2954:
/* 003F4 808A2954 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 003F8 808A2958 14410003 */  bne     $v0, $at, .L808A2968       
/* 003FC 808A295C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00400 808A2960 0C016F32 */  jal     func_8005BCC8              
/* 00404 808A2964 24E50164 */  addiu   $a1, $a3, 0x0164           ## $a1 = 00000164
.L808A2968:
/* 00408 808A2968 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0040C 808A296C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00410 808A2970 03E00008 */  jr      $ra                        
/* 00414 808A2974 00000000 */  nop
