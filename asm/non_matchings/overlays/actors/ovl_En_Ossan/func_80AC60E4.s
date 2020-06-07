glabel func_80AC60E4
/* 03444 80AC60E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03448 80AC60E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0344C 80AC60EC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03450 80AC60F0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03454 80AC60F4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 03458 80AC60F8 0C042F6F */  jal     func_8010BDBC              
/* 0345C 80AC60FC 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 03460 80AC6100 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 03464 80AC6104 5441000D */  bnel    $v0, $at, .L80AC613C       
/* 03468 80AC6108 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0346C 80AC610C 0C041AF2 */  jal     func_80106BC8              
/* 03470 80AC6110 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 03474 80AC6114 10400008 */  beq     $v0, $zero, .L80AC6138     
/* 03478 80AC6118 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0347C 80AC611C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 03480 80AC6120 944E0F16 */  lhu     $t6, 0x0F16($v0)           ## 8015F576
/* 03484 80AC6124 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 03488 80AC6128 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0348C 80AC612C 35CF1000 */  ori     $t7, $t6, 0x1000           ## $t7 = 00001000
/* 03490 80AC6130 0C2B0E6B */  jal     func_80AC39AC              
/* 03494 80AC6134 A44F0F16 */  sh      $t7, 0x0F16($v0)           ## 8015F576
.L80AC6138:
/* 03498 80AC6138 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC613C:
/* 0349C 80AC613C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 034A0 80AC6140 03E00008 */  jr      $ra                        
/* 034A4 80AC6144 00000000 */  nop
