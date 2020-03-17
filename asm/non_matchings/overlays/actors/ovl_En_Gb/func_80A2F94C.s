glabel func_80A2F94C
/* 007CC 80A2F94C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007D0 80A2F950 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007D4 80A2F954 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 007D8 80A2F958 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 007DC 80A2F95C 0C042F6F */  jal     func_8010BDBC              
/* 007E0 80A2F960 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 007E4 80A2F964 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 007E8 80A2F968 54410012 */  bnel    $v0, $at, .L80A2F9B4       
/* 007EC 80A2F96C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007F0 80A2F970 0C041AF2 */  jal     func_80106BC8              
/* 007F4 80A2F974 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 007F8 80A2F978 1040000D */  beq     $v0, $zero, .L80A2F9B0     
/* 007FC 80A2F97C 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00800 80A2F980 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00804 80A2F984 94620F0E */  lhu     $v0, 0x0F0E($v1)           ## 8015F56E
/* 00808 80A2F988 304E0040 */  andi    $t6, $v0, 0x0040           ## $t6 = 00000000
/* 0080C 80A2F98C 15C00002 */  bne     $t6, $zero, .L80A2F998     
/* 00810 80A2F990 344F0040 */  ori     $t7, $v0, 0x0040           ## $t7 = 00000040
/* 00814 80A2F994 A46F0F0E */  sh      $t7, 0x0F0E($v1)           ## 8015F56E
.L80A2F998:
/* 00818 80A2F998 0C28BC60 */  jal     func_80A2F180              
/* 0081C 80A2F99C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00820 80A2F9A0 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 00824 80A2F9A4 3C1880A3 */  lui     $t8, %hi(func_80A2F83C)    ## $t8 = 80A30000
/* 00828 80A2F9A8 2718F83C */  addiu   $t8, $t8, %lo(func_80A2F83C) ## $t8 = 80A2F83C
/* 0082C 80A2F9AC AF380238 */  sw      $t8, 0x0238($t9)           ## 00000238
.L80A2F9B0:
/* 00830 80A2F9B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A2F9B4:
/* 00834 80A2F9B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00838 80A2F9B8 03E00008 */  jr      $ra                        
/* 0083C 80A2F9BC 00000000 */  nop


