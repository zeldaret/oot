glabel func_8084FA54
/* 1D844 8084FA54 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1D848 8084FA58 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 1D84C 8084FA5C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1D850 8084FA60 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 1D854 8084FA64 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 1D858 8084FA68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1D85C 8084FA6C A08E06AD */  sb      $t6, 0x06AD($a0)           ## 000006AD
/* 1D860 8084FA70 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 1D864 8084FA74 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 1D868 8084FA78 0C20EB53 */  jal     func_8083AD4C              
/* 1D86C 8084FA7C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1D870 8084FA80 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1D874 8084FA84 0C028EF0 */  jal     func_800A3BC0              
/* 1D878 8084FA88 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 1D87C 8084FA8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1D880 8084FA90 0C20D99C */  jal     func_80836670              
/* 1D884 8084FA94 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 1D888 8084FA98 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1D88C 8084FA9C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1D890 8084FAA0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 1D894 8084FAA4 0C212AF6 */  jal     func_8084ABD8              
/* 1D898 8084FAA8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 1D89C 8084FAAC 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 1D8A0 8084FAB0 961906AE */  lhu     $t9, 0x06AE($s0)           ## 000006AE
/* 1D8A4 8084FAB4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 1D8A8 8084FAB8 004FC023 */  subu    $t8, $v0, $t7              
/* 1D8AC 8084FABC 37280080 */  ori     $t0, $t9, 0x0080           ## $t0 = 00000080
/* 1D8B0 8084FAC0 A61806BE */  sh      $t8, 0x06BE($s0)           ## 000006BE
/* 1D8B4 8084FAC4 A60806AE */  sh      $t0, 0x06AE($s0)           ## 000006AE
/* 1D8B8 8084FAC8 02211821 */  addu    $v1, $s1, $at              
/* 1D8BC 8084FACC 80641E5C */  lb      $a0, 0x1E5C($v1)           ## 00001E5C
/* 1D8C0 8084FAD0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 1D8C4 8084FAD4 00310821 */  addu    $at, $at, $s1              
/* 1D8C8 8084FAD8 04810008 */  bgez    $a0, .L8084FAFC            
/* 1D8CC 8084FADC 24890001 */  addiu   $t1, $a0, 0x0001           ## $t1 = 00000001
/* 1D8D0 8084FAE0 A0291E5C */  sb      $t1, 0x1E5C($at)           ## 00011E5C
/* 1D8D4 8084FAE4 806A1E5C */  lb      $t2, 0x1E5C($v1)           ## 00001E5C
/* 1D8D8 8084FAE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1D8DC 8084FAEC 55400004 */  bnel    $t2, $zero, .L8084FB00     
/* 1D8E0 8084FAF0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1D8E4 8084FAF4 0C20F052 */  jal     func_8083C148              
/* 1D8E8 8084FAF8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L8084FAFC:
/* 1D8EC 8084FAFC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084FB00:
/* 1D8F0 8084FB00 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 1D8F4 8084FB04 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 1D8F8 8084FB08 03E00008 */  jr      $ra                        
/* 1D8FC 8084FB0C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
