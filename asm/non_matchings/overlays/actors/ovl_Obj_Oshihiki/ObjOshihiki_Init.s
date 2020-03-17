glabel ObjOshihiki_Init
/* 005E8 80B9B768 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 005EC 80B9B76C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 005F0 80B9B770 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 005F4 80B9B774 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005F8 80B9B778 0C2E6D61 */  jal     func_80B9B584              
/* 005FC 80B9B77C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00600 80B9B780 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00604 80B9B784 00021203 */  sra     $v0, $v0,  8               
/* 00608 80B9B788 304300FF */  andi    $v1, $v0, 0x00FF           ## $v1 = 00000000
/* 0060C 80B9B78C 04600025 */  bltz    $v1, .L80B9B824            
/* 00610 80B9B790 28610040 */  slti    $at, $v1, 0x0040           
/* 00614 80B9B794 10200023 */  beq     $at, $zero, .L80B9B824     
/* 00618 80B9B798 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0061C 80B9B79C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00620 80B9B7A0 3045003F */  andi    $a1, $v0, 0x003F           ## $a1 = 00000000
/* 00624 80B9B7A4 50400011 */  beql    $v0, $zero, .L80B9B7EC     
/* 00628 80B9B7A8 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 0062C 80B9B7AC 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00630 80B9B7B0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00634 80B9B7B4 3042000F */  andi    $v0, $v0, 0x000F           ## $v0 = 00000000
/* 00638 80B9B7B8 10400007 */  beq     $v0, $zero, .L80B9B7D8     
/* 0063C 80B9B7BC 00000000 */  nop
/* 00640 80B9B7C0 10410005 */  beq     $v0, $at, .L80B9B7D8       
/* 00644 80B9B7C4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00648 80B9B7C8 10410003 */  beq     $v0, $at, .L80B9B7D8       
/* 0064C 80B9B7CC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00650 80B9B7D0 54410015 */  bnel    $v0, $at, .L80B9B828       
/* 00654 80B9B7D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B9B7D8:
/* 00658 80B9B7D8 0C00B55C */  jal     Actor_Kill
              
/* 0065C 80B9B7DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00660 80B9B7E0 10000029 */  beq     $zero, $zero, .L80B9B888   
/* 00664 80B9B7E4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00668 80B9B7E8 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L80B9B7EC:
/* 0066C 80B9B7EC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00670 80B9B7F0 3042000F */  andi    $v0, $v0, 0x000F           ## $v0 = 00000000
/* 00674 80B9B7F4 10410007 */  beq     $v0, $at, .L80B9B814       
/* 00678 80B9B7F8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0067C 80B9B7FC 10410005 */  beq     $v0, $at, .L80B9B814       
/* 00680 80B9B800 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00684 80B9B804 10410003 */  beq     $v0, $at, .L80B9B814       
/* 00688 80B9B808 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 0068C 80B9B80C 54410006 */  bnel    $v0, $at, .L80B9B828       
/* 00690 80B9B810 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B9B814:
/* 00694 80B9B814 0C00B55C */  jal     Actor_Kill
              
/* 00698 80B9B818 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0069C 80B9B81C 1000001A */  beq     $zero, $zero, .L80B9B888   
/* 006A0 80B9B820 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9B824:
/* 006A4 80B9B824 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B9B828:
/* 006A8 80B9B828 0C2E6D7D */  jal     func_80B9B5F4              
/* 006AC 80B9B82C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 006B0 80B9B830 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006B4 80B9B834 0C2E6D8B */  jal     func_80B9B62C              
/* 006B8 80B9B838 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 006BC 80B9B83C 3C0580BA */  lui     $a1, %hi(D_80B9CA60)       ## $a1 = 80BA0000
/* 006C0 80B9B840 24A5CA60 */  addiu   $a1, $a1, %lo(D_80B9CA60)  ## $a1 = 80B9CA60
/* 006C4 80B9B844 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 006C8 80B9B848 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006CC 80B9B84C 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 006D0 80B9B850 A20E00AE */  sb      $t6, 0x00AE($s0)           ## 000000AE
/* 006D4 80B9B854 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 006D8 80B9B858 0C2E6DA3 */  jal     func_80B9B68C              
/* 006DC 80B9B85C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006E0 80B9B860 0C2E6CB6 */  jal     func_80B9B2D8              
/* 006E4 80B9B864 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006E8 80B9B868 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006EC 80B9B86C 0C2E7044 */  jal     func_80B9C110              
/* 006F0 80B9B870 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 006F4 80B9B874 3C0480BA */  lui     $a0, %hi(D_80B9CBD4)       ## $a0 = 80BA0000
/* 006F8 80B9B878 2484CBD4 */  addiu   $a0, $a0, %lo(D_80B9CBD4)  ## $a0 = 80B9CBD4
/* 006FC 80B9B87C 0C00084C */  jal     osSyncPrintf
              
/* 00700 80B9B880 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00704 80B9B884 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9B888:
/* 00708 80B9B888 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0070C 80B9B88C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00710 80B9B890 03E00008 */  jr      $ra                        
/* 00714 80B9B894 00000000 */  nop


