glabel func_80A6E8CC
/* 0052C 80A6E8CC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00530 80A6E8D0 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00534 80A6E8D4 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00538 80A6E8D8 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 0053C 80A6E8DC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00540 80A6E8E0 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00544 80A6E8E4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00548 80A6E8E8 0C042F6F */  jal     func_8010BDBC              
/* 0054C 80A6E8EC AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 00550 80A6E8F0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00554 80A6E8F4 5441001C */  bnel    $v0, $at, .L80A6E968       
/* 00558 80A6E8F8 860202AA */  lh      $v0, 0x02AA($s0)           ## 000002AA
/* 0055C 80A6E8FC 0C041AF2 */  jal     func_80106BC8              
/* 00560 80A6E900 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00564 80A6E904 10400017 */  beq     $v0, $zero, .L80A6E964     
/* 00568 80A6E908 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0056C 80A6E90C 0C042DC8 */  jal     func_8010B720              
/* 00570 80A6E910 240510B3 */  addiu   $a1, $zero, 0x10B3         ## $a1 = 000010B3
/* 00574 80A6E914 3C0580A7 */  lui     $a1, %hi(func_80A6E7BC)    ## $a1 = 80A70000
/* 00578 80A6E918 24A5E7BC */  addiu   $a1, $a1, %lo(func_80A6E7BC) ## $a1 = 80A6E7BC
/* 0057C 80A6E91C 0C29B8E8 */  jal     func_80A6E3A0              
/* 00580 80A6E920 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00584 80A6E924 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00588 80A6E928 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 0058C 80A6E92C 24840528 */  addiu   $a0, $a0, 0x0528           ## $a0 = 06000528
/* 00590 80A6E930 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00594 80A6E934 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00598 80A6E938 44814000 */  mtc1    $at, $f8                   ## $f8 = 8.00
/* 0059C 80A6E93C 468021A0 */  cvt.s.w $f6, $f4                   
/* 005A0 80A6E940 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 005A4 80A6E944 24A50528 */  addiu   $a1, $a1, 0x0528           ## $a1 = 06000528
/* 005A8 80A6E948 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 005AC 80A6E94C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 005B0 80A6E950 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 005B4 80A6E954 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 005B8 80A6E958 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 005BC 80A6E95C 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 005C0 80A6E960 E7A80018 */  swc1    $f8, 0x0018($sp)           
.L80A6E964:
/* 005C4 80A6E964 860202AA */  lh      $v0, 0x02AA($s0)           ## 000002AA
.L80A6E968:
/* 005C8 80A6E968 18400008 */  blez    $v0, .L80A6E98C            
/* 005CC 80A6E96C 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 005D0 80A6E970 A60F02AA */  sh      $t7, 0x02AA($s0)           ## 000002AA
/* 005D4 80A6E974 861802AA */  lh      $t8, 0x02AA($s0)           ## 000002AA
/* 005D8 80A6E978 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 005DC 80A6E97C 57000004 */  bnel    $t8, $zero, .L80A6E990     
/* 005E0 80A6E980 961902A8 */  lhu     $t9, 0x02A8($s0)           ## 000002A8
/* 005E4 80A6E984 0C00BDF7 */  jal     func_8002F7DC              
/* 005E8 80A6E988 24052813 */  addiu   $a1, $zero, 0x2813         ## $a1 = 00002813
.L80A6E98C:
/* 005EC 80A6E98C 961902A8 */  lhu     $t9, 0x02A8($s0)           ## 000002A8
.L80A6E990:
/* 005F0 80A6E990 37280001 */  ori     $t0, $t9, 0x0001           ## $t0 = 00000001
/* 005F4 80A6E994 A60802A8 */  sh      $t0, 0x02A8($s0)           ## 000002A8
/* 005F8 80A6E998 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 005FC 80A6E99C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00600 80A6E9A0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00604 80A6E9A4 03E00008 */  jr      $ra                        
/* 00608 80A6E9A8 00000000 */  nop


