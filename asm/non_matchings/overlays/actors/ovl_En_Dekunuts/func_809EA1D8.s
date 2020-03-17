glabel func_809EA1D8
/* 00C78 809EA1D8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00C7C 809EA1DC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C80 809EA1E0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C84 809EA1E4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C88 809EA1E8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00C8C 809EA1EC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00C90 809EA1F0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00C94 809EA1F4 10400008 */  beq     $v0, $zero, .L809EA218     
/* 00C98 809EA1F8 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00C9C 809EA1FC 860E008A */  lh      $t6, 0x008A($s0)           ## 0000008A
/* 00CA0 809EA200 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 00CA4 809EA204 A2180195 */  sb      $t8, 0x0195($s0)           ## 00000195
/* 00CA8 809EA208 01C17821 */  addu    $t7, $t6, $at              
/* 00CAC 809EA20C A60F0198 */  sh      $t7, 0x0198($s0)           ## 00000198
/* 00CB0 809EA210 0C27A648 */  jal     func_809E9920              
/* 00CB4 809EA214 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809EA218:
/* 00CB8 809EA218 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00CBC 809EA21C 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00CC0 809EA220 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00CC4 809EA224 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 00CC8 809EA228 24070E38 */  addiu   $a3, $zero, 0x0E38         ## $a3 = 00000E38
/* 00CCC 809EA22C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00CD0 809EA230 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00CD4 809EA234 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00CD8 809EA238 03E00008 */  jr      $ra                        
/* 00CDC 809EA23C 00000000 */  nop


