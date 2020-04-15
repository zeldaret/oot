glabel BgSpot18Basket_Update
/* 00D24 808B8434 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00D28 808B8438 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00D2C 808B843C AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00D30 808B8440 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00D34 808B8444 848E0216 */  lh      $t6, 0x0216($a0)           ## 00000216
/* 00D38 808B8448 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D3C 808B844C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00D40 808B8450 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00D44 808B8454 A48F0216 */  sh      $t7, 0x0216($a0)           ## 00000216
/* 00D48 808B8458 8E190204 */  lw      $t9, 0x0204($s0)           ## 00000204
/* 00D4C 808B845C 0320F809 */  jalr    $ra, $t9                   
/* 00D50 808B8460 00000000 */  nop
/* 00D54 808B8464 26180024 */  addiu   $t8, $s0, 0x0024           ## $t8 = 00000024
/* 00D58 808B8468 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00D5C 808B846C 262407C0 */  addiu   $a0, $s1, 0x07C0           ## $a0 = 000007C0
/* 00D60 808B8470 26050078 */  addiu   $a1, $s0, 0x0078           ## $a1 = 00000078
/* 00D64 808B8474 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFF4
/* 00D68 808B8478 0C00F269 */  jal     func_8003C9A4              
/* 00D6C 808B847C 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 00D70 808B8480 8E090204 */  lw      $t1, 0x0204($s0)           ## 00000204
/* 00D74 808B8484 3C08808B */  lui     $t0, %hi(func_808B7AFC)    ## $t0 = 808B0000
/* 00D78 808B8488 25087AFC */  addiu   $t0, $t0, %lo(func_808B7AFC) ## $t0 = 808B7AFC
/* 00D7C 808B848C 11090014 */  beq     $t0, $t1, .L808B84E0       
/* 00D80 808B8490 E6000080 */  swc1    $f0, 0x0080($s0)           ## 00000080
/* 00D84 808B8494 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00D88 808B8498 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00D8C 808B849C 02212821 */  addu    $a1, $s1, $at              
/* 00D90 808B84A0 26060164 */  addiu   $a2, $s0, 0x0164           ## $a2 = 00000164
/* 00D94 808B84A4 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00D98 808B84A8 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00D9C 808B84AC 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00DA0 808B84B0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DA4 808B84B4 8E0B0204 */  lw      $t3, 0x0204($s0)           ## 00000204
/* 00DA8 808B84B8 3C0A808B */  lui     $t2, %hi(func_808B7B6C)    ## $t2 = 808B0000
/* 00DAC 808B84BC 254A7B6C */  addiu   $t2, $t2, %lo(func_808B7B6C) ## $t2 = 808B7B6C
/* 00DB0 808B84C0 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00DB4 808B84C4 114B0006 */  beq     $t2, $t3, .L808B84E0       
/* 00DB8 808B84C8 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00DBC 808B84CC 920C0175 */  lbu     $t4, 0x0175($s0)           ## 00000175
/* 00DC0 808B84D0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DC4 808B84D4 318DFFFD */  andi    $t5, $t4, 0xFFFD           ## $t5 = 00000000
/* 00DC8 808B84D8 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00DCC 808B84DC A20D0175 */  sb      $t5, 0x0175($s0)           ## 00000175
.L808B84E0:
/* 00DD0 808B84E0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DD4 808B84E4 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00DD8 808B84E8 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00DDC 808B84EC 03E00008 */  jr      $ra                        
/* 00DE0 808B84F0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
