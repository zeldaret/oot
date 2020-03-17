glabel func_80B88E3C
/* 000CC 80B88E3C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 000D0 80B88E40 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 000D4 80B88E44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000D8 80B88E48 00451021 */  addu    $v0, $v0, $a1              
/* 000DC 80B88E4C 904203DC */  lbu     $v0, 0x03DC($v0)           ## 000103DC
/* 000E0 80B88E50 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 000E4 80B88E54 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000E8 80B88E58 10410004 */  beq     $v0, $at, .L80B88E6C       
/* 000EC 80B88E5C 8CA71C44 */  lw      $a3, 0x1C44($a1)           ## 00001C44
/* 000F0 80B88E60 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 000F4 80B88E64 54410006 */  bnel    $v0, $at, .L80B88E80       
/* 000F8 80B88E68 84C201A8 */  lh      $v0, 0x01A8($a2)           ## 000001A8
.L80B88E6C:
/* 000FC 80B88E6C 0C00B55C */  jal     Actor_Kill
              
/* 00100 80B88E70 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00104 80B88E74 10000017 */  beq     $zero, $zero, .L80B88ED4   
/* 00108 80B88E78 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0010C 80B88E7C 84C201A8 */  lh      $v0, 0x01A8($a2)           ## 000001A8
.L80B88E80:
/* 00110 80B88E80 3C0F80B9 */  lui     $t7, %hi(MagicFire_Update)    ## $t7 = 80B90000
/* 00114 80B88E84 25EF8EE0 */  addiu   $t7, $t7, %lo(MagicFire_Update) ## $t7 = 80B88EE0
/* 00118 80B88E88 18400004 */  blez    $v0, .L80B88E9C            
/* 0011C 80B88E8C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00120 80B88E90 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00124 80B88E94 10000008 */  beq     $zero, $zero, .L80B88EB8   
/* 00128 80B88E98 A4CE01A8 */  sh      $t6, 0x01A8($a2)           ## 000001A8
.L80B88E9C:
/* 0012C 80B88E9C ACCF0130 */  sw      $t7, 0x0130($a2)           ## 00000130
/* 00130 80B88EA0 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00134 80B88EA4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00138 80B88EA8 0C00BDF7 */  jal     func_8002F7DC              
/* 0013C 80B88EAC 24050879 */  addiu   $a1, $zero, 0x0879         ## $a1 = 00000879
/* 00140 80B88EB0 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00144 80B88EB4 8FA70018 */  lw      $a3, 0x0018($sp)           
.L80B88EB8:
/* 00148 80B88EB8 8CF90024 */  lw      $t9, 0x0024($a3)           ## 00000024
/* 0014C 80B88EBC ACD90024 */  sw      $t9, 0x0024($a2)           ## 00000024
/* 00150 80B88EC0 8CF80028 */  lw      $t8, 0x0028($a3)           ## 00000028
/* 00154 80B88EC4 ACD80028 */  sw      $t8, 0x0028($a2)           ## 00000028
/* 00158 80B88EC8 8CF9002C */  lw      $t9, 0x002C($a3)           ## 0000002C
/* 0015C 80B88ECC ACD9002C */  sw      $t9, 0x002C($a2)           ## 0000002C
/* 00160 80B88ED0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B88ED4:
/* 00164 80B88ED4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00168 80B88ED8 03E00008 */  jr      $ra                        
/* 0016C 80B88EDC 00000000 */  nop


