glabel func_80B8E404
/* 013B4 80B8E404 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 013B8 80B8E408 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 013BC 80B8E40C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 013C0 80B8E410 AFA40088 */  sw      $a0, 0x0088($sp)           
/* 013C4 80B8E414 AFA60090 */  sw      $a2, 0x0090($sp)           
/* 013C8 80B8E418 AFA70094 */  sw      $a3, 0x0094($sp)           
/* 013CC 80B8E41C C4A60000 */  lwc1    $f6, 0x0000($a1)           ## 00000000
/* 013D0 80B8E420 C4900000 */  lwc1    $f16, 0x0000($a0)          ## 00000000
/* 013D4 80B8E424 C4AA0004 */  lwc1    $f10, 0x0004($a1)          ## 00000004
/* 013D8 80B8E428 C4920004 */  lwc1    $f18, 0x0004($a0)          ## 00000004
/* 013DC 80B8E42C C4880008 */  lwc1    $f8, 0x0008($a0)           ## 00000008
/* 013E0 80B8E430 46103081 */  sub.s   $f2, $f6, $f16             
/* 013E4 80B8E434 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 013E8 80B8E438 E7A80038 */  swc1    $f8, 0x0038($sp)           
/* 013EC 80B8E43C 46125301 */  sub.s   $f12, $f10, $f18           
/* 013F0 80B8E440 46021282 */  mul.s   $f10, $f2, $f2             
/* 013F4 80B8E444 C7A60038 */  lwc1    $f6, 0x0038($sp)           
/* 013F8 80B8E448 C4A40008 */  lwc1    $f4, 0x0008($a1)           ## 00000008
/* 013FC 80B8E44C 460C6202 */  mul.s   $f8, $f12, $f12            
/* 01400 80B8E450 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01404 80B8E454 46062381 */  sub.s   $f14, $f4, $f6             
/* 01408 80B8E458 460E7182 */  mul.s   $f6, $f14, $f14            
/* 0140C 80B8E45C 46085100 */  add.s   $f4, $f10, $f8             
/* 01410 80B8E460 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01414 80B8E464 46062280 */  add.s   $f10, $f4, $f6             
/* 01418 80B8E468 C7A40090 */  lwc1    $f4, 0x0090($sp)           
/* 0141C 80B8E46C 460A4032 */  c.eq.s  $f8, $f10                  
/* 01420 80B8E470 E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 01424 80B8E474 45020004 */  bc1fl   .L80B8E488                 
/* 01428 80B8E478 46102181 */  sub.s   $f6, $f4, $f16             
/* 0142C 80B8E47C 1000006D */  beq     $zero, $zero, .L80B8E634   
/* 01430 80B8E480 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01434 80B8E484 46102181 */  sub.s   $f6, $f4, $f16             
.L80B8E488:
/* 01438 80B8E488 C7AA0094 */  lwc1    $f10, 0x0094($sp)          
/* 0143C 80B8E48C E7A40020 */  swc1    $f4, 0x0020($sp)           
/* 01440 80B8E490 C7A40038 */  lwc1    $f4, 0x0038($sp)           
/* 01444 80B8E494 46023202 */  mul.s   $f8, $f6, $f2              
/* 01448 80B8E498 46125181 */  sub.s   $f6, $f10, $f18            
/* 0144C 80B8E49C E7AA0024 */  swc1    $f10, 0x0024($sp)          
/* 01450 80B8E4A0 87A2009E */  lh      $v0, 0x009E($sp)           
/* 01454 80B8E4A4 87B800A2 */  lh      $t8, 0x00A2($sp)           
/* 01458 80B8E4A8 460C3182 */  mul.s   $f6, $f6, $f12             
/* 0145C 80B8E4AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01460 80B8E4B0 0302C823 */  subu    $t9, $t8, $v0              
/* 01464 80B8E4B4 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 01468 80B8E4B8 27A6005C */  addiu   $a2, $sp, 0x005C           ## $a2 = FFFFFFD4
/* 0146C 80B8E4BC 46064200 */  add.s   $f8, $f8, $f6              
/* 01470 80B8E4C0 C7A60098 */  lwc1    $f6, 0x0098($sp)           
/* 01474 80B8E4C4 46043281 */  sub.s   $f10, $f6, $f4             
/* 01478 80B8E4C8 E7A60028 */  swc1    $f6, 0x0028($sp)           
/* 0147C 80B8E4CC 460E5282 */  mul.s   $f10, $f10, $f14           
/* 01480 80B8E4D0 460A4200 */  add.s   $f8, $f8, $f10             
/* 01484 80B8E4D4 C7AA0034 */  lwc1    $f10, 0x0034($sp)          
/* 01488 80B8E4D8 460A4003 */  div.s   $f0, $f8, $f10             
/* 0148C 80B8E4DC 46001202 */  mul.s   $f8, $f2, $f0              
/* 01490 80B8E4E0 46104280 */  add.s   $f10, $f8, $f16            
/* 01494 80B8E4E4 46006202 */  mul.s   $f8, $f12, $f0             
/* 01498 80B8E4E8 00000000 */  nop
/* 0149C 80B8E4EC 46007182 */  mul.s   $f6, $f14, $f0             
/* 014A0 80B8E4F0 E7AA0080 */  swc1    $f10, 0x0080($sp)          
/* 014A4 80B8E4F4 E7AA002C */  swc1    $f10, 0x002C($sp)          
/* 014A8 80B8E4F8 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 014AC 80B8E4FC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 014B0 80B8E500 46124200 */  add.s   $f8, $f8, $f18             
/* 014B4 80B8E504 46043180 */  add.s   $f6, $f6, $f4              
/* 014B8 80B8E508 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 014BC 80B8E50C E7A8007C */  swc1    $f8, 0x007C($sp)           
/* 014C0 80B8E510 468052A0 */  cvt.s.w $f10, $f10                 
/* 014C4 80B8E514 E7A60078 */  swc1    $f6, 0x0078($sp)           
/* 014C8 80B8E518 46802120 */  cvt.s.w $f4, $f4                   
/* 014CC 80B8E51C 46002102 */  mul.s   $f4, $f4, $f0              
/* 014D0 80B8E520 460A2080 */  add.s   $f2, $f4, $f10             
/* 014D4 80B8E524 C7AA0020 */  lwc1    $f10, 0x0020($sp)          
/* 014D8 80B8E528 C7A4002C */  lwc1    $f4, 0x002C($sp)           
/* 014DC 80B8E52C 460A2301 */  sub.s   $f12, $f4, $f10            
/* 014E0 80B8E530 C7A40024 */  lwc1    $f4, 0x0024($sp)           
/* 014E4 80B8E534 C7AA0028 */  lwc1    $f10, 0x0028($sp)          
/* 014E8 80B8E538 46044381 */  sub.s   $f14, $f8, $f4             
/* 014EC 80B8E53C 46021202 */  mul.s   $f8, $f2, $f2              
/* 014F0 80B8E540 460A3401 */  sub.s   $f16, $f6, $f10            
/* 014F4 80B8E544 460C6102 */  mul.s   $f4, $f12, $f12            
/* 014F8 80B8E548 00000000 */  nop
/* 014FC 80B8E54C 460E7182 */  mul.s   $f6, $f14, $f14            
/* 01500 80B8E550 46062280 */  add.s   $f10, $f4, $f6             
/* 01504 80B8E554 46108102 */  mul.s   $f4, $f16, $f16            
/* 01508 80B8E558 46045180 */  add.s   $f6, $f10, $f4             
/* 0150C 80B8E55C 4608303E */  c.le.s  $f6, $f8                   
/* 01510 80B8E560 00000000 */  nop
/* 01514 80B8E564 45000033 */  bc1f    .L80B8E634                 
/* 01518 80B8E568 00000000 */  nop
/* 0151C 80B8E56C 0C01DFB4 */  jal     Math_Vec3f_Diff
              ## Vec3f_Sub
/* 01520 80B8E570 AFA70088 */  sw      $a3, 0x0088($sp)           
/* 01524 80B8E574 8FA70088 */  lw      $a3, 0x0088($sp)           
/* 01528 80B8E578 C7AA0090 */  lwc1    $f10, 0x0090($sp)          
/* 0152C 80B8E57C C7A60094 */  lwc1    $f6, 0x0094($sp)           
/* 01530 80B8E580 C4E40000 */  lwc1    $f4, 0x0000($a3)           ## 00000000
/* 01534 80B8E584 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFFD4
/* 01538 80B8E588 27A50050 */  addiu   $a1, $sp, 0x0050           ## $a1 = FFFFFFC8
/* 0153C 80B8E58C 46045201 */  sub.s   $f8, $f10, $f4             
/* 01540 80B8E590 E7A80050 */  swc1    $f8, 0x0050($sp)           
/* 01544 80B8E594 C4EA0004 */  lwc1    $f10, 0x0004($a3)          ## 00000004
/* 01548 80B8E598 C7A80098 */  lwc1    $f8, 0x0098($sp)           
/* 0154C 80B8E59C 460A3101 */  sub.s   $f4, $f6, $f10             
/* 01550 80B8E5A0 E7A40054 */  swc1    $f4, 0x0054($sp)           
/* 01554 80B8E5A4 C4E60008 */  lwc1    $f6, 0x0008($a3)           ## 00000008
/* 01558 80B8E5A8 46064281 */  sub.s   $f10, $f8, $f6             
/* 0155C 80B8E5AC 0C032BFB */  jal     func_800CAFEC              
/* 01560 80B8E5B0 E7AA0058 */  swc1    $f10, 0x0058($sp)          
/* 01564 80B8E5B4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01568 80B8E5B8 C7A80090 */  lwc1    $f8, 0x0090($sp)           
/* 0156C 80B8E5BC 4604003C */  c.lt.s  $f0, $f4                   
/* 01570 80B8E5C0 00000000 */  nop
/* 01574 80B8E5C4 45020004 */  bc1fl   .L80B8E5D8                 
/* 01578 80B8E5C8 C6060000 */  lwc1    $f6, 0x0000($s0)           ## 00000000
/* 0157C 80B8E5CC 10000019 */  beq     $zero, $zero, .L80B8E634   
/* 01580 80B8E5D0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01584 80B8E5D4 C6060000 */  lwc1    $f6, 0x0000($s0)           ## 00000000
.L80B8E5D8:
/* 01588 80B8E5D8 C7A40094 */  lwc1    $f4, 0x0094($sp)           
/* 0158C 80B8E5DC 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFFD4
/* 01590 80B8E5E0 46064281 */  sub.s   $f10, $f8, $f6             
/* 01594 80B8E5E4 27A50044 */  addiu   $a1, $sp, 0x0044           ## $a1 = FFFFFFBC
/* 01598 80B8E5E8 E7AA0044 */  swc1    $f10, 0x0044($sp)          
/* 0159C 80B8E5EC C6080004 */  lwc1    $f8, 0x0004($s0)           ## 00000004
/* 015A0 80B8E5F0 C7AA0098 */  lwc1    $f10, 0x0098($sp)          
/* 015A4 80B8E5F4 46082181 */  sub.s   $f6, $f4, $f8              
/* 015A8 80B8E5F8 E7A60048 */  swc1    $f6, 0x0048($sp)           
/* 015AC 80B8E5FC C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 015B0 80B8E600 46045201 */  sub.s   $f8, $f10, $f4             
/* 015B4 80B8E604 0C032BFB */  jal     func_800CAFEC              
/* 015B8 80B8E608 E7A8004C */  swc1    $f8, 0x004C($sp)           
/* 015BC 80B8E60C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 015C0 80B8E610 00000000 */  nop
/* 015C4 80B8E614 4600303C */  c.lt.s  $f6, $f0                   
/* 015C8 80B8E618 00000000 */  nop
/* 015CC 80B8E61C 45000003 */  bc1f    .L80B8E62C                 
/* 015D0 80B8E620 00000000 */  nop
/* 015D4 80B8E624 10000003 */  beq     $zero, $zero, .L80B8E634   
/* 015D8 80B8E628 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B8E62C:
/* 015DC 80B8E62C 10000001 */  beq     $zero, $zero, .L80B8E634   
/* 015E0 80B8E630 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B8E634:
/* 015E4 80B8E634 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 015E8 80B8E638 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 015EC 80B8E63C 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
/* 015F0 80B8E640 03E00008 */  jr      $ra                        
/* 015F4 80B8E644 00000000 */  nop
/* 015F8 80B8E648 00000000 */  nop
/* 015FC 80B8E64C 00000000 */  nop
