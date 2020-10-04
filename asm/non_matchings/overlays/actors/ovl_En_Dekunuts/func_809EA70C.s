glabel func_809EA70C
/* 011AC 809EA70C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 011B0 809EA710 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 011B4 809EA714 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 011B8 809EA718 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 011BC 809EA71C 908202D9 */  lbu     $v0, 0x02D9($a0)           ## 000002D9
/* 011C0 809EA720 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 011C4 809EA724 260502E0 */  addiu   $a1, $s0, 0x02E0           ## $a1 = 000002E0
/* 011C8 809EA728 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 011CC 809EA72C 11C00030 */  beq     $t6, $zero, .L809EA7F0     
/* 011D0 809EA730 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 011D4 809EA734 A08F02D9 */  sb      $t7, 0x02D9($a0)           ## 000002D9
/* 011D8 809EA738 0C00D594 */  jal     func_80035650              
/* 011DC 809EA73C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 011E0 809EA740 921800AE */  lbu     $t8, 0x00AE($s0)           ## 000000AE
/* 011E4 809EA744 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 011E8 809EA748 17010025 */  bne     $t8, $at, .L809EA7E0       
/* 011EC 809EA74C 00000000 */  nop
/* 011F0 809EA750 920200B1 */  lbu     $v0, 0x00B1($s0)           ## 000000B1
/* 011F4 809EA754 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 011F8 809EA758 14400004 */  bne     $v0, $zero, .L809EA76C     
/* 011FC 809EA75C 00000000 */  nop
/* 01200 809EA760 921900B0 */  lbu     $t9, 0x00B0($s0)           ## 000000B0
/* 01204 809EA764 5320002D */  beql    $t9, $zero, .L809EA81C     
/* 01208 809EA768 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809EA76C:
/* 0120C 809EA76C 10410013 */  beq     $v0, $at, .L809EA7BC       
/* 01210 809EA770 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01214 809EA774 14410007 */  bne     $v0, $at, .L809EA794       
/* 01218 809EA778 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0121C 809EA77C 24080032 */  addiu   $t0, $zero, 0x0032         ## $t0 = 00000032
/* 01220 809EA780 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 01224 809EA784 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01228 809EA788 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 0122C 809EA78C 0C00A997 */  jal     EffectSsFCircle_Spawn              
/* 01230 809EA790 24070028 */  addiu   $a3, $zero, 0x0028         ## $a3 = 00000028
.L809EA794:
/* 01234 809EA794 0C27A676 */  jal     func_809E99D8              
/* 01238 809EA798 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0123C 809EA79C 0C00D58A */  jal     Actor_ApplyDamage
              
/* 01240 809EA7A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01244 809EA7A4 1440001C */  bne     $v0, $zero, .L809EA818     
/* 01248 809EA7A8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0124C 809EA7AC 0C00CB1F */  jal     func_80032C7C              
/* 01250 809EA7B0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01254 809EA7B4 10000019 */  beq     $zero, $zero, .L809EA81C   
/* 01258 809EA7B8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809EA7BC:
/* 0125C 809EA7BC 8E0A0190 */  lw      $t2, 0x0190($s0)           ## 00000190
/* 01260 809EA7C0 3C09809F */  lui     $t1, %hi(func_809EA534)    ## $t1 = 809F0000
/* 01264 809EA7C4 2529A534 */  addiu   $t1, $t1, %lo(func_809EA534) ## $t1 = 809EA534
/* 01268 809EA7C8 512A0014 */  beql    $t1, $t2, .L809EA81C       
/* 0126C 809EA7CC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01270 809EA7D0 0C27A6AD */  jal     func_809E9AB4              
/* 01274 809EA7D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01278 809EA7D8 10000010 */  beq     $zero, $zero, .L809EA81C   
/* 0127C 809EA7DC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809EA7E0:
/* 01280 809EA7E0 0C27A62D */  jal     func_809E98B4              
/* 01284 809EA7E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01288 809EA7E8 1000000C */  beq     $zero, $zero, .L809EA81C   
/* 0128C 809EA7EC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809EA7F0:
/* 01290 809EA7F0 920B00AE */  lbu     $t3, 0x00AE($s0)           ## 000000AE
/* 01294 809EA7F4 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 01298 809EA7F8 8FAC002C */  lw      $t4, 0x002C($sp)           
/* 0129C 809EA7FC 55610007 */  bnel    $t3, $at, .L809EA81C       
/* 012A0 809EA800 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 012A4 809EA804 918D1C26 */  lbu     $t5, 0x1C26($t4)           ## 00001C26
/* 012A8 809EA808 51A00004 */  beql    $t5, $zero, .L809EA81C     
/* 012AC 809EA80C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 012B0 809EA810 0C27A62D */  jal     func_809E98B4              
/* 012B4 809EA814 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809EA818:
/* 012B8 809EA818 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809EA81C:
/* 012BC 809EA81C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 012C0 809EA820 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 012C4 809EA824 03E00008 */  jr      $ra                        
/* 012C8 809EA828 00000000 */  nop
