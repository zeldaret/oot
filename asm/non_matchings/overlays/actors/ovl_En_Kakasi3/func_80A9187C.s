glabel func_80A9187C
/* 00B5C 80A9187C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B60 80A91880 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B64 80A91884 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B68 80A91888 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B6C 80A9188C 0C042F6F */  jal     func_8010BDBC              
/* 00B70 80A91890 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00B74 80A91894 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00B78 80A91898 5441000F */  bnel    $v0, $at, .L80A918D8       
/* 00B7C 80A9189C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B80 80A918A0 0C041AF2 */  jal     func_80106BC8              
/* 00B84 80A918A4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00B88 80A918A8 5040000B */  beql    $v0, $zero, .L80A918D8     
/* 00B8C 80A918AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B90 80A918B0 0C041B33 */  jal     func_80106CCC              
/* 00B94 80A918B4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00B98 80A918B8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00B9C 80A918BC 0C042F56 */  jal     func_8010BD58              
/* 00BA0 80A918C0 24050028 */  addiu   $a1, $zero, 0x0028         ## $a1 = 00000028
/* 00BA4 80A918C4 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00BA8 80A918C8 3C0E80A9 */  lui     $t6, %hi(func_80A918E4)    ## $t6 = 80A90000
/* 00BAC 80A918CC 25CE18E4 */  addiu   $t6, $t6, %lo(func_80A918E4) ## $t6 = 80A918E4
/* 00BB0 80A918D0 ADEE014C */  sw      $t6, 0x014C($t7)           ## 0000014C
/* 00BB4 80A918D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A918D8:
/* 00BB8 80A918D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BBC 80A918DC 03E00008 */  jr      $ra                        
/* 00BC0 80A918E0 00000000 */  nop


