glabel func_80A1C1E4
/* 01844 80A1C1E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01848 80A1C1E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0184C 80A1C1EC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01850 80A1C1F0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01854 80A1C1F4 0C042F6F */  jal     func_8010BDBC              
/* 01858 80A1C1F8 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 0185C 80A1C1FC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01860 80A1C200 5441000E */  bnel    $v0, $at, .L80A1C23C       
/* 01864 80A1C204 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01868 80A1C208 0C041AF2 */  jal     func_80106BC8              
/* 0186C 80A1C20C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01870 80A1C210 5040000A */  beql    $v0, $zero, .L80A1C23C     
/* 01874 80A1C214 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01878 80A1C218 0C041B33 */  jal     func_80106CCC              
/* 0187C 80A1C21C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01880 80A1C220 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 01884 80A1C224 3C0F80A2 */  lui     $t7, %hi(func_80A1C400)    ## $t7 = 80A20000
/* 01888 80A1C228 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 0188C 80A1C22C 25EFC400 */  addiu   $t7, $t7, %lo(func_80A1C400) ## $t7 = 80A1C400
/* 01890 80A1C230 A44E0386 */  sh      $t6, 0x0386($v0)           ## 00000386
/* 01894 80A1C234 AC4F0354 */  sw      $t7, 0x0354($v0)           ## 00000354
/* 01898 80A1C238 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A1C23C:
/* 0189C 80A1C23C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018A0 80A1C240 03E00008 */  jr      $ra                        
/* 018A4 80A1C244 00000000 */  nop


