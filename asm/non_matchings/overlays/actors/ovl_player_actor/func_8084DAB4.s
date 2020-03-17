glabel func_8084DAB4
/* 1B8A4 8084DAB4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1B8A8 8084DAB8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 1B8AC 8084DABC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1B8B0 8084DAC0 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 1B8B4 8084DAC4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 1B8B8 8084DAC8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 1B8BC 8084DACC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 1B8C0 8084DAD0 3C068086 */  lui     $a2, %hi(D_80858AB4)       ## $a2 = 80860000
/* 1B8C4 8084DAD4 8CC68AB4 */  lw      $a2, %lo(D_80858AB4)($a2)  
/* 1B8C8 8084DAD8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1B8CC 8084DADC 0C212C56 */  jal     func_8084B158              
/* 1B8D0 8084DAE0 8E070838 */  lw      $a3, 0x0838($s0)           ## 00000838
/* 1B8D4 8084DAE4 0C212C00 */  jal     func_8084B000              
/* 1B8D8 8084DAE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1B8DC 8084DAEC 3C068085 */  lui     $a2, %hi(D_80854444)       ## $a2 = 80850000
/* 1B8E0 8084DAF0 24C64444 */  addiu   $a2, $a2, %lo(D_80854444)  ## $a2 = 80854444
/* 1B8E4 8084DAF4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1B8E8 8084DAF8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1B8EC 8084DAFC 0C20DCD2 */  jal     func_80837348              
/* 1B8F0 8084DB00 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 1B8F4 8084DB04 1440002A */  bne     $v0, $zero, .L8084DBB0     
/* 1B8F8 8084DB08 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1B8FC 8084DB0C 3C068086 */  lui     $a2, %hi(D_80858AB4)       ## $a2 = 80860000
/* 1B900 8084DB10 8CC68AB4 */  lw      $a2, %lo(D_80858AB4)($a2)  
/* 1B904 8084DB14 0C20F44B */  jal     func_8083D12C              
/* 1B908 8084DB18 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1B90C 8084DB1C 14400024 */  bne     $v0, $zero, .L8084DBB0     
/* 1B910 8084DB20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1B914 8084DB24 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFFC
/* 1B918 8084DB28 27A6002A */  addiu   $a2, $sp, 0x002A           ## $a2 = FFFFFFFA
/* 1B91C 8084DB2C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 1B920 8084DB30 0C20DC9A */  jal     func_80837268              
/* 1B924 8084DB34 AFB10010 */  sw      $s1, 0x0010($sp)           
/* 1B928 8084DB38 C7A4002C */  lwc1    $f4, 0x002C($sp)           
/* 1B92C 8084DB3C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 1B930 8084DB40 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1B934 8084DB44 46062032 */  c.eq.s  $f4, $f6                   
/* 1B938 8084DB48 00000000 */  nop
/* 1B93C 8084DB4C 45000005 */  bc1f    .L8084DB64                 
/* 1B940 8084DB50 00000000 */  nop
/* 1B944 8084DB54 0C20E3C6 */  jal     func_80838F18              
/* 1B948 8084DB58 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1B94C 8084DB5C 10000010 */  beq     $zero, $zero, .L8084DBA0   
/* 1B950 8084DB60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8084DB64:
/* 1B954 8084DB64 0C20CF01 */  jal     func_80833C04              
/* 1B958 8084DB68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1B95C 8084DB6C 14400007 */  bne     $v0, $zero, .L8084DB8C     
/* 1B960 8084DB70 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1B964 8084DB74 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1B968 8084DB78 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1B96C 8084DB7C 0C21355D */  jal     func_8084D574              
/* 1B970 8084DB80 87A6002A */  lh      $a2, 0x002A($sp)           
/* 1B974 8084DB84 10000006 */  beq     $zero, $zero, .L8084DBA0   
/* 1B978 8084DB88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8084DB8C:
/* 1B97C 8084DB8C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1B980 8084DB90 27A6002C */  addiu   $a2, $sp, 0x002C           ## $a2 = FFFFFFFC
/* 1B984 8084DB94 0C213660 */  jal     func_8084D980              
/* 1B988 8084DB98 27A7002A */  addiu   $a3, $sp, 0x002A           ## $a3 = FFFFFFFA
/* 1B98C 8084DB9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8084DBA0:
/* 1B990 8084DBA0 26050838 */  addiu   $a1, $s0, 0x0838           ## $a1 = 00000838
/* 1B994 8084DBA4 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 1B998 8084DBA8 0C21354C */  jal     func_8084D530              
/* 1B99C 8084DBAC 87A7002A */  lh      $a3, 0x002A($sp)           
.L8084DBB0:
/* 1B9A0 8084DBB0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 1B9A4 8084DBB4 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 1B9A8 8084DBB8 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 1B9AC 8084DBBC 03E00008 */  jr      $ra                        
/* 1B9B0 8084DBC0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


