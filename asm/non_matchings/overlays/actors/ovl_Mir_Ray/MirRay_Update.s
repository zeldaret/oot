glabel MirRay_Update
/* 005B4 80B8D604 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 005B8 80B8D608 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 005BC 80B8D60C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 005C0 80B8D610 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 005C4 80B8D614 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 005C8 80B8D618 3C0180B9 */  lui     $at, %hi(D_80B8E670)       ## $at = 80B90000
/* 005CC 80B8D61C A020E670 */  sb      $zero, %lo(D_80B8E670)($at) 
/* 005D0 80B8D620 AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 005D4 80B8D624 908F02AE */  lbu     $t7, 0x02AE($a0)           ## 000002AE
/* 005D8 80B8D628 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005DC 80B8D62C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 005E0 80B8D630 55E0002B */  bnel    $t7, $zero, .L80B8D6E0     
/* 005E4 80B8D634 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 005E8 80B8D638 8498001C */  lh      $t8, 0x001C($a0)           ## 0000001C
/* 005EC 80B8D63C 3C0280B9 */  lui     $v0, %hi(D_80B8E717)       ## $v0 = 80B90000
/* 005F0 80B8D640 0018C940 */  sll     $t9, $t8,  5               
/* 005F4 80B8D644 00591021 */  addu    $v0, $v0, $t9              
/* 005F8 80B8D648 9042E717 */  lbu     $v0, %lo(D_80B8E717)($v0)  
/* 005FC 80B8D64C 30480002 */  andi    $t0, $v0, 0x0002           ## $t0 = 00000000
/* 00600 80B8D650 1100000B */  beq     $t0, $zero, .L80B8D680     
/* 00604 80B8D654 30490004 */  andi    $t1, $v0, 0x0004           ## $t1 = 00000000
/* 00608 80B8D658 51200004 */  beql    $t1, $zero, .L80B8D66C     
/* 0060C 80B8D65C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00610 80B8D660 0C2E3414 */  jal     func_80B8D050              
/* 00614 80B8D664 00000000 */  nop
/* 00618 80B8D668 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80B8D66C:
/* 0061C 80B8D66C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00620 80B8D670 02212821 */  addu    $a1, $s1, $at              
/* 00624 80B8D674 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00628 80B8D678 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 0062C 80B8D67C 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
.L80B8D680:
/* 00630 80B8D680 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00634 80B8D684 C606022C */  lwc1    $f6, 0x022C($s0)           ## 0000022C
/* 00638 80B8D688 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0063C 80B8D68C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00640 80B8D690 4606203C */  c.lt.s  $f4, $f6                   
/* 00644 80B8D694 02212821 */  addu    $a1, $s1, $at              
/* 00648 80B8D698 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0064C 80B8D69C 45020004 */  bc1fl   .L80B8D6B0                 
/* 00650 80B8D6A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00654 80B8D6A4 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00658 80B8D6A8 260601AC */  addiu   $a2, $s0, 0x01AC           ## $a2 = 000001AC
/* 0065C 80B8D6AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B8D6B0:
/* 00660 80B8D6B0 0C2E3444 */  jal     func_80B8D110              
/* 00664 80B8D6B4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00668 80B8D6B8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0066C 80B8D6BC C60A022C */  lwc1    $f10, 0x022C($s0)          ## 0000022C
/* 00670 80B8D6C0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00674 80B8D6C4 460A403C */  c.lt.s  $f8, $f10                  
/* 00678 80B8D6C8 00000000 */  nop
/* 0067C 80B8D6CC 45020004 */  bc1fl   .L80B8D6E0                 
/* 00680 80B8D6D0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00684 80B8D6D4 0C00BE3C */  jal     func_8002F8F0              
/* 00688 80B8D6D8 24051049 */  addiu   $a1, $zero, 0x1049         ## $a1 = 00001049
/* 0068C 80B8D6DC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B8D6E0:
/* 00690 80B8D6E0 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00694 80B8D6E4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00698 80B8D6E8 03E00008 */  jr      $ra                        
/* 0069C 80B8D6EC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


