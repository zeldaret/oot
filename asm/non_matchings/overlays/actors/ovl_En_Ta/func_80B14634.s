glabel func_80B14634
/* 00B94 80B14634 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00B98 80B14638 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B9C 80B1463C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00BA0 80B14640 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00BA4 80B14644 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BA8 80B14648 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00BAC 80B1464C 0C00BC65 */  jal     func_8002F194              
/* 00BB0 80B14650 AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 00BB4 80B14654 1040001D */  beq     $v0, $zero, .L80B146CC     
/* 00BB8 80B14658 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00BBC 80B1465C 0C00BCDA */  jal     func_8002F368              
/* 00BC0 80B14660 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00BC4 80B14664 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00BC8 80B14668 1441000D */  bne     $v0, $at, .L80B146A0       
/* 00BCC 80B1466C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BD0 80B14670 8FB80024 */  lw      $t8, 0x0024($sp)           
/* 00BD4 80B14674 240F702B */  addiu   $t7, $zero, 0x702B         ## $t7 = 0000702B
/* 00BD8 80B14678 3C0580B1 */  lui     $a1, %hi(func_80B14570)    ## $a1 = 80B10000
/* 00BDC 80B1467C 3C0680B1 */  lui     $a2, %hi(func_80B167C0)    ## $a2 = 80B10000
/* 00BE0 80B14680 24C667C0 */  addiu   $a2, $a2, %lo(func_80B167C0) ## $a2 = 80B167C0
/* 00BE4 80B14684 24A54570 */  addiu   $a1, $a1, %lo(func_80B14570) ## $a1 = 80B14570
/* 00BE8 80B14688 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BEC 80B1468C 0C2C4EA8 */  jal     func_80B13AA0              
/* 00BF0 80B14690 A70F010E */  sh      $t7, 0x010E($t8)           ## 0000010E
/* 00BF4 80B14694 24190028 */  addiu   $t9, $zero, 0x0028         ## $t9 = 00000028
/* 00BF8 80B14698 10000012 */  beq     $zero, $zero, .L80B146E4   
/* 00BFC 80B1469C A61902CC */  sh      $t9, 0x02CC($s0)           ## 000002CC
.L80B146A0:
/* 00C00 80B146A0 10400004 */  beq     $v0, $zero, .L80B146B4     
/* 00C04 80B146A4 3C0580B1 */  lui     $a1, %hi(func_80B145F8)    ## $a1 = 80B10000
/* 00C08 80B146A8 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 00C0C 80B146AC 2408702A */  addiu   $t0, $zero, 0x702A         ## $t0 = 0000702A
/* 00C10 80B146B0 A528010E */  sh      $t0, 0x010E($t1)           ## 0000010E
.L80B146B4:
/* 00C14 80B146B4 3C0680B1 */  lui     $a2, %hi(func_80B167FC)    ## $a2 = 80B10000
/* 00C18 80B146B8 24C667FC */  addiu   $a2, $a2, %lo(func_80B167FC) ## $a2 = 80B167FC
/* 00C1C 80B146BC 0C2C4EA8 */  jal     func_80B13AA0              
/* 00C20 80B146C0 24A545F8 */  addiu   $a1, $a1, %lo(func_80B145F8) ## $a1 = 80B145F8
/* 00C24 80B146C4 10000008 */  beq     $zero, $zero, .L80B146E8   
/* 00C28 80B146C8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B146CC:
/* 00C2C 80B146CC 240A702A */  addiu   $t2, $zero, 0x702A         ## $t2 = 0000702A
/* 00C30 80B146D0 A60A010E */  sh      $t2, 0x010E($s0)           ## 0000010E
/* 00C34 80B146D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C38 80B146D8 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
/* 00C3C 80B146DC 0C00BCA6 */  jal     func_8002F298              
/* 00C40 80B146E0 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
.L80B146E4:
/* 00C44 80B146E4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B146E8:
/* 00C48 80B146E8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00C4C 80B146EC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00C50 80B146F0 03E00008 */  jr      $ra                        
/* 00C54 80B146F4 00000000 */  nop
