glabel ObjSwitch_Update
/* 013FC 80B9E60C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01400 80B9E610 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01404 80B9E614 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01408 80B9E618 84820168 */  lh      $v0, 0x0168($a0)           ## 00000168
/* 0140C 80B9E61C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01410 80B9E620 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01414 80B9E624 18400002 */  blez    $v0, .L80B9E630            
/* 01418 80B9E628 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0141C 80B9E62C A48E0168 */  sh      $t6, 0x0168($a0)           ## 00000168
.L80B9E630:
/* 01420 80B9E630 84E2016C */  lh      $v0, 0x016C($a3)           ## 0000016C
/* 01424 80B9E634 18400002 */  blez    $v0, .L80B9E640            
/* 01428 80B9E638 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 0142C 80B9E63C A4EF016C */  sh      $t7, 0x016C($a3)           ## 0000016C
.L80B9E640:
/* 01430 80B9E640 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 01434 80B9E644 8CF90164 */  lw      $t9, 0x0164($a3)           ## 00000164
/* 01438 80B9E648 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0143C 80B9E64C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01440 80B9E650 0320F809 */  jalr    $ra, $t9                   
/* 01444 80B9E654 00000000 */  nop
/* 01448 80B9E658 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 0144C 80B9E65C 84F8001C */  lh      $t8, 0x001C($a3)           ## 0000001C
/* 01450 80B9E660 33080007 */  andi    $t0, $t8, 0x0007           ## $t0 = 00000000
/* 01454 80B9E664 2D010005 */  sltiu   $at, $t0, 0x0005           
/* 01458 80B9E668 10200032 */  beq     $at, $zero, .L80B9E734     
/* 0145C 80B9E66C 00084080 */  sll     $t0, $t0,  2               
/* 01460 80B9E670 3C0180BA */  lui     $at, %hi(jtbl_80B9EF80)       ## $at = 80BA0000
/* 01464 80B9E674 00280821 */  addu    $at, $at, $t0              
/* 01468 80B9E678 8C28EF80 */  lw      $t0, %lo(jtbl_80B9EF80)($at)  
/* 0146C 80B9E67C 01000008 */  jr      $t0                        
/* 01470 80B9E680 00000000 */  nop
glabel L80B9E684
/* 01474 80B9E684 90E90160 */  lbu     $t1, 0x0160($a3)           ## 00000160
/* 01478 80B9E688 1000002A */  beq     $zero, $zero, .L80B9E734   
/* 0147C 80B9E68C A0E9017F */  sb      $t1, 0x017F($a3)           ## 0000017F
glabel L80B9E690
/* 01480 80B9E690 90E20191 */  lbu     $v0, 0x0191($a3)           ## 00000191
/* 01484 80B9E694 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01488 80B9E698 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0148C 80B9E69C 304AFFFD */  andi    $t2, $v0, 0xFFFD           ## $t2 = 00000000
/* 01490 80B9E6A0 A0EA0191 */  sb      $t2, 0x0191($a3)           ## 00000191
/* 01494 80B9E6A4 02012821 */  addu    $a1, $s0, $at              
/* 01498 80B9E6A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0149C 80B9E6AC 24E60180 */  addiu   $a2, $a3, 0x0180           ## $a2 = 00000180
/* 014A0 80B9E6B0 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 014A4 80B9E6B4 A0E2017F */  sb      $v0, 0x017F($a3)           ## 0000017F
/* 014A8 80B9E6B8 1000001F */  beq     $zero, $zero, .L80B9E738   
/* 014AC 80B9E6BC 8FBF001C */  lw      $ra, 0x001C($sp)           
glabel L80B9E6C0
/* 014B0 80B9E6C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014B4 80B9E6C4 0C023A62 */  jal     func_8008E988              
/* 014B8 80B9E6C8 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 014BC 80B9E6CC 14400005 */  bne     $v0, $zero, .L80B9E6E4     
/* 014C0 80B9E6D0 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 014C4 80B9E6D4 84E2016A */  lh      $v0, 0x016A($a3)           ## 0000016A
/* 014C8 80B9E6D8 18400002 */  blez    $v0, .L80B9E6E4            
/* 014CC 80B9E6DC 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = FFFFFFFF
/* 014D0 80B9E6E0 A4EB016A */  sh      $t3, 0x016A($a3)           ## 0000016A
.L80B9E6E4:
/* 014D4 80B9E6E4 90E20191 */  lbu     $v0, 0x0191($a3)           ## 00000191
/* 014D8 80B9E6E8 84ED016A */  lh      $t5, 0x016A($a3)           ## 0000016A
/* 014DC 80B9E6EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014E0 80B9E6F0 304CFFFD */  andi    $t4, $v0, 0xFFFD           ## $t4 = 00000000
/* 014E4 80B9E6F4 A0EC0191 */  sb      $t4, 0x0191($a3)           ## 00000191
/* 014E8 80B9E6F8 1DA00008 */  bgtz    $t5, .L80B9E71C            
/* 014EC 80B9E6FC A0E2017F */  sb      $v0, 0x017F($a3)           ## 0000017F
/* 014F0 80B9E700 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 014F4 80B9E704 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 014F8 80B9E708 02012821 */  addu    $a1, $s0, $at              
/* 014FC 80B9E70C 24E60180 */  addiu   $a2, $a3, 0x0180           ## $a2 = 00000180
/* 01500 80B9E710 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01504 80B9E714 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 01508 80B9E718 8FA70020 */  lw      $a3, 0x0020($sp)           
.L80B9E71C:
/* 0150C 80B9E71C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01510 80B9E720 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01514 80B9E724 02012821 */  addu    $a1, $s0, $at              
/* 01518 80B9E728 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0151C 80B9E72C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01520 80B9E730 24E60180 */  addiu   $a2, $a3, 0x0180           ## $a2 = 00000180
.L80B9E734:
/* 01524 80B9E734 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9E738:
/* 01528 80B9E738 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0152C 80B9E73C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01530 80B9E740 03E00008 */  jr      $ra                        
/* 01534 80B9E744 00000000 */  nop


