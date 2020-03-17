glabel func_80A1C718
/* 01D78 80A1C718 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01D7C 80A1C71C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01D80 80A1C720 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01D84 80A1C724 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01D88 80A1C728 0C2870D1 */  jal     func_80A1C344              
/* 01D8C 80A1C72C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01D90 80A1C730 93AE0023 */  lbu     $t6, 0x0023($sp)           
/* 01D94 80A1C734 11C00005 */  beq     $t6, $zero, .L80A1C74C     
/* 01D98 80A1C738 00000000 */  nop
/* 01D9C 80A1C73C 0C01E221 */  jal     func_80078884              
/* 01DA0 80A1C740 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 01DA4 80A1C744 10000003 */  beq     $zero, $zero, .L80A1C754   
/* 01DA8 80A1C748 00000000 */  nop
.L80A1C74C:
/* 01DAC 80A1C74C 0C01E221 */  jal     func_80078884              
/* 01DB0 80A1C750 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
.L80A1C754:
/* 01DB4 80A1C754 0C03B616 */  jal     func_800ED858              
/* 01DB8 80A1C758 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 01DBC 80A1C75C 8FB8001C */  lw      $t8, 0x001C($sp)           
/* 01DC0 80A1C760 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01DC4 80A1C764 240F0037 */  addiu   $t7, $zero, 0x0037         ## $t7 = 00000037
/* 01DC8 80A1C768 00380821 */  addu    $at, $at, $t8              
/* 01DCC 80A1C76C A02F03DC */  sb      $t7, 0x03DC($at)           ## 000103DC
/* 01DD0 80A1C770 8FA80018 */  lw      $t0, 0x0018($sp)           
/* 01DD4 80A1C774 3C1980A2 */  lui     $t9, %hi(func_80A1C790)    ## $t9 = 80A20000
/* 01DD8 80A1C778 2739C790 */  addiu   $t9, $t9, %lo(func_80A1C790) ## $t9 = 80A1C790
/* 01DDC 80A1C77C AD190354 */  sw      $t9, 0x0354($t0)           ## 00000354
/* 01DE0 80A1C780 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01DE4 80A1C784 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01DE8 80A1C788 03E00008 */  jr      $ra                        
/* 01DEC 80A1C78C 00000000 */  nop


