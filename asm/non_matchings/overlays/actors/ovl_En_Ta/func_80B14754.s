glabel func_80B14754
/* 00CB4 80B14754 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00CB8 80B14758 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00CBC 80B1475C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00CC0 80B14760 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00CC4 80B14764 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CC8 80B14768 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00CCC 80B1476C 0C00BC65 */  jal     func_8002F194              
/* 00CD0 80B14770 AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 00CD4 80B14774 1040001D */  beq     $v0, $zero, .L80B147EC     
/* 00CD8 80B14778 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00CDC 80B1477C 0C00BCDA */  jal     func_8002F368              
/* 00CE0 80B14780 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00CE4 80B14784 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00CE8 80B14788 1441000D */  bne     $v0, $at, .L80B147C0       
/* 00CEC 80B1478C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CF0 80B14790 8FB80024 */  lw      $t8, 0x0024($sp)           
/* 00CF4 80B14794 240F702B */  addiu   $t7, $zero, 0x702B         ## $t7 = 0000702B
/* 00CF8 80B14798 3C0580B1 */  lui     $a1, %hi(func_80B14570)    ## $a1 = 80B10000
/* 00CFC 80B1479C 3C0680B1 */  lui     $a2, %hi(func_80B167C0)    ## $a2 = 80B10000
/* 00D00 80B147A0 24C667C0 */  addiu   $a2, $a2, %lo(func_80B167C0) ## $a2 = 80B167C0
/* 00D04 80B147A4 24A54570 */  addiu   $a1, $a1, %lo(func_80B14570) ## $a1 = 80B14570
/* 00D08 80B147A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D0C 80B147AC 0C2C4EA8 */  jal     func_80B13AA0              
/* 00D10 80B147B0 A70F010E */  sh      $t7, 0x010E($t8)           ## 0000010E
/* 00D14 80B147B4 24190028 */  addiu   $t9, $zero, 0x0028         ## $t9 = 00000028
/* 00D18 80B147B8 10000012 */  beq     $zero, $zero, .L80B14804   
/* 00D1C 80B147BC A61902CC */  sh      $t9, 0x02CC($s0)           ## 000002CC
.L80B147C0:
/* 00D20 80B147C0 10400004 */  beq     $v0, $zero, .L80B147D4     
/* 00D24 80B147C4 3C0580B1 */  lui     $a1, %hi(func_80B14398)    ## $a1 = 80B10000
/* 00D28 80B147C8 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 00D2C 80B147CC 24085015 */  addiu   $t0, $zero, 0x5015         ## $t0 = 00005015
/* 00D30 80B147D0 A528010E */  sh      $t0, 0x010E($t1)           ## 0000010E
.L80B147D4:
/* 00D34 80B147D4 3C0680B1 */  lui     $a2, %hi(func_80B167FC)    ## $a2 = 80B10000
/* 00D38 80B147D8 24C667FC */  addiu   $a2, $a2, %lo(func_80B167FC) ## $a2 = 80B167FC
/* 00D3C 80B147DC 0C2C4EA8 */  jal     func_80B13AA0              
/* 00D40 80B147E0 24A54398 */  addiu   $a1, $a1, %lo(func_80B14398) ## $a1 = 80B14398
/* 00D44 80B147E4 10000008 */  beq     $zero, $zero, .L80B14808   
/* 00D48 80B147E8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B147EC:
/* 00D4C 80B147EC 240A5015 */  addiu   $t2, $zero, 0x5015         ## $t2 = 00005015
/* 00D50 80B147F0 A60A010E */  sh      $t2, 0x010E($s0)           ## 0000010E
/* 00D54 80B147F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D58 80B147F8 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
/* 00D5C 80B147FC 0C00BCA6 */  jal     func_8002F298              
/* 00D60 80B14800 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
.L80B14804:
/* 00D64 80B14804 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B14808:
/* 00D68 80B14808 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D6C 80B1480C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00D70 80B14810 03E00008 */  jr      $ra                        
/* 00D74 80B14814 00000000 */  nop
