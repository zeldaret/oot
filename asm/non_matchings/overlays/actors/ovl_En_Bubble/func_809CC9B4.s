glabel func_809CC9B4
/* 00DB4 809CC9B4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00DB8 809CC9B8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00DBC 809CC9BC AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00DC0 809CC9C0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00DC4 809CC9C4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00DC8 809CC9C8 0C2731B9 */  jal     func_809CC6E4              
/* 00DCC 809CC9CC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00DD0 809CC9D0 10400008 */  beq     $v0, $zero, .L809CC9F4     
/* 00DD4 809CC9D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DD8 809CC9D8 0C272F2F */  jal     func_809CBCBC              
/* 00DDC 809CC9DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DE0 809CC9E0 3C0E809D */  lui     $t6, %hi(func_809CCA60)    ## $t6 = 809D0000
/* 00DE4 809CC9E4 25CECA60 */  addiu   $t6, $t6, %lo(func_809CCA60) ## $t6 = 809CCA60
/* 00DE8 809CC9E8 A602020A */  sh      $v0, 0x020A($s0)           ## 0000020A
/* 00DEC 809CC9EC 10000017 */  beq     $zero, $zero, .L809CCA4C   
/* 00DF0 809CC9F0 AE0E014C */  sw      $t6, 0x014C($s0)           ## 0000014C
.L809CC9F4:
/* 00DF4 809CC9F4 0C27305B */  jal     func_809CC16C              
/* 00DF8 809CC9F8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00DFC 809CC9FC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00E00 809CCA00 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 00E04 809CCA04 C6040224 */  lwc1    $f4, 0x0224($s0)           ## 00000224
/* 00E08 809CCA08 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 00E0C 809CCA0C 44815000 */  mtc1    $at, $f10                  ## $f10 = 16.00
/* 00E10 809CCA10 46062200 */  add.s   $f8, $f4, $f6              
/* 00E14 809CCA14 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00E18 809CCA18 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00E1C 809CCA1C 02212821 */  addu    $a1, $s1, $at              
/* 00E20 809CCA20 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00E24 809CCA24 26060150 */  addiu   $a2, $s0, 0x0150           ## $a2 = 00000150
/* 00E28 809CCA28 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E2C 809CCA2C E61000BC */  swc1    $f16, 0x00BC($s0)          ## 000000BC
/* 00E30 809CCA30 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00E34 809CCA34 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00E38 809CCA38 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00E3C 809CCA3C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00E40 809CCA40 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00E44 809CCA44 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00E48 809CCA48 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L809CCA4C:
/* 00E4C 809CCA4C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E50 809CCA50 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00E54 809CCA54 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00E58 809CCA58 03E00008 */  jr      $ra                        
/* 00E5C 809CCA5C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
