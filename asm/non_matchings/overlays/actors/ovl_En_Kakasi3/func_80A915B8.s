glabel func_80A915B8
/* 00898 80A915B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0089C 80A915BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008A0 80A915C0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 008A4 80A915C4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 008A8 80A915C8 0C042F6F */  jal     func_8010BDBC              
/* 008AC 80A915CC 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 008B0 80A915D0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 008B4 80A915D4 5441000F */  bnel    $v0, $at, .L80A91614       
/* 008B8 80A915D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008BC 80A915DC 0C041AF2 */  jal     func_80106BC8              
/* 008C0 80A915E0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 008C4 80A915E4 5040000B */  beql    $v0, $zero, .L80A91614     
/* 008C8 80A915E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008CC 80A915EC 0C041B33 */  jal     func_80106CCC              
/* 008D0 80A915F0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 008D4 80A915F4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 008D8 80A915F8 0C042F56 */  jal     func_8010BD58              
/* 008DC 80A915FC 2405002C */  addiu   $a1, $zero, 0x002C         ## $a1 = 0000002C
/* 008E0 80A91600 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 008E4 80A91604 3C0E80A9 */  lui     $t6, %hi(func_80A91620)    ## $t6 = 80A90000
/* 008E8 80A91608 25CE1620 */  addiu   $t6, $t6, %lo(func_80A91620) ## $t6 = 80A91620
/* 008EC 80A9160C ADEE014C */  sw      $t6, 0x014C($t7)           ## 0000014C
/* 008F0 80A91610 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A91614:
/* 008F4 80A91614 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008F8 80A91618 03E00008 */  jr      $ra                        
/* 008FC 80A9161C 00000000 */  nop
