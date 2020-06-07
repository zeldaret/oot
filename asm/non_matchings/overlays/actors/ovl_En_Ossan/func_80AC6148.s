glabel func_80AC6148
/* 034A8 80AC6148 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 034AC 80AC614C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 034B0 80AC6150 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 034B4 80AC6154 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 034B8 80AC6158 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 034BC 80AC615C 0C042F6F */  jal     func_8010BDBC              
/* 034C0 80AC6160 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 034C4 80AC6164 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 034C8 80AC6168 54410010 */  bnel    $v0, $at, .L80AC61AC       
/* 034CC 80AC616C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 034D0 80AC6170 0C041AF2 */  jal     func_80106BC8              
/* 034D4 80AC6174 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 034D8 80AC6178 1040000B */  beq     $v0, $zero, .L80AC61A8     
/* 034DC 80AC617C 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 034E0 80AC6180 240E0016 */  addiu   $t6, $zero, 0x0016         ## $t6 = 00000016
/* 034E4 80AC6184 A5EE01FC */  sh      $t6, 0x01FC($t7)           ## 000001FC
/* 034E8 80AC6188 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 034EC 80AC618C 0C042DC8 */  jal     func_8010B720              
/* 034F0 80AC6190 24053012 */  addiu   $a1, $zero, 0x3012         ## $a1 = 00003012
/* 034F4 80AC6194 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 034F8 80AC6198 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 034FC 80AC619C 94580F16 */  lhu     $t8, 0x0F16($v0)           ## 8015F576
/* 03500 80AC61A0 37191000 */  ori     $t9, $t8, 0x1000           ## $t9 = 00001000
/* 03504 80AC61A4 A4590F16 */  sh      $t9, 0x0F16($v0)           ## 8015F576
.L80AC61A8:
/* 03508 80AC61A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC61AC:
/* 0350C 80AC61AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03510 80AC61B0 03E00008 */  jr      $ra                        
/* 03514 80AC61B4 00000000 */  nop
