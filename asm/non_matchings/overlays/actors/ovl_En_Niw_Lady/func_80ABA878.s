glabel func_80ABA878
/* 00C38 80ABA878 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00C3C 80ABA87C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C40 80ABA880 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C44 80ABA884 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00C48 80ABA888 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C4C 80ABA88C 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00C50 80ABA890 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00C54 80ABA894 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00C58 80ABA898 0C042F6F */  jal     func_8010BDBC              
/* 00C5C 80ABA89C AFAE002C */  sw      $t6, 0x002C($sp)           
/* 00C60 80ABA8A0 10400005 */  beq     $v0, $zero, .L80ABA8B8     
/* 00C64 80ABA8A4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00C68 80ABA8A8 0C042F6F */  jal     func_8010BDBC              
/* 00C6C 80ABA8AC 00000000 */  nop
/* 00C70 80ABA8B0 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00C74 80ABA8B4 14410002 */  bne     $v0, $at, .L80ABA8C0       
.L80ABA8B8:
/* 00C78 80ABA8B8 240F000B */  addiu   $t7, $zero, 0x000B         ## $t7 = 0000000B
/* 00C7C 80ABA8BC A60F026E */  sh      $t7, 0x026E($s0)           ## 0000026E
.L80ABA8C0:
/* 00C80 80ABA8C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C84 80ABA8C4 0C00BC65 */  jal     func_8002F194              
/* 00C88 80ABA8C8 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00C8C 80ABA8CC 10400031 */  beq     $v0, $zero, .L80ABA994     
/* 00C90 80ABA8D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C94 80ABA8D4 0C00BCDA */  jal     func_8002F368              
/* 00C98 80ABA8D8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00C9C 80ABA8DC 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00CA0 80ABA8E0 14410014 */  bne     $v0, $at, .L80ABA934       
/* 00CA4 80ABA8E4 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 00CA8 80ABA8E8 9718F540 */  lhu     $t8, -0x0AC0($t8)          ## 8015F540
/* 00CAC 80ABA8EC 33190400 */  andi    $t9, $t8, 0x0400           ## $t9 = 00000000
/* 00CB0 80ABA8F0 13200010 */  beq     $t9, $zero, .L80ABA934     
/* 00CB4 80ABA8F4 00000000 */  nop
/* 00CB8 80ABA8F8 0C01E221 */  jal     func_80078884              
/* 00CBC 80ABA8FC 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 00CC0 80ABA900 3C0880AC */  lui     $t0, %hi(D_80ABB3FA)       ## $t0 = 80AC0000
/* 00CC4 80ABA904 8508B3FA */  lh      $t0, %lo(D_80ABB3FA)($t0)  
/* 00CC8 80ABA908 8FA9002C */  lw      $t1, 0x002C($sp)           
/* 00CCC 80ABA90C 3C0D80AC */  lui     $t5, %hi(func_80ABAB08)    ## $t5 = 80AC0000
/* 00CD0 80ABA910 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 00CD4 80ABA914 A528010E */  sh      $t0, 0x010E($t1)           ## 0000010E
/* 00CD8 80ABA918 860A027A */  lh      $t2, 0x027A($s0)           ## 0000027A
/* 00CDC 80ABA91C 25ADAB08 */  addiu   $t5, $t5, %lo(func_80ABAB08) ## $t5 = 80ABAB08
/* 00CE0 80ABA920 A60C0262 */  sh      $t4, 0x0262($s0)           ## 00000262
/* 00CE4 80ABA924 254B0015 */  addiu   $t3, $t2, 0x0015           ## $t3 = 00000015
/* 00CE8 80ABA928 A60B026E */  sh      $t3, 0x026E($s0)           ## 0000026E
/* 00CEC 80ABA92C 1000001D */  beq     $zero, $zero, .L80ABA9A4   
/* 00CF0 80ABA930 AE0D0250 */  sw      $t5, 0x0250($s0)           ## 00000250
.L80ABA934:
/* 00CF4 80ABA934 10400009 */  beq     $v0, $zero, .L80ABA95C     
/* 00CF8 80ABA938 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00CFC 80ABA93C 3C0E80AC */  lui     $t6, %hi(D_80ABB3FE)       ## $t6 = 80AC0000
/* 00D00 80ABA940 85CEB3FE */  lh      $t6, %lo(D_80ABB3FE)($t6)  
/* 00D04 80ABA944 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 00D08 80ABA948 A5EE010E */  sh      $t6, 0x010E($t7)           ## 0000010E
/* 00D0C 80ABA94C 8618027A */  lh      $t8, 0x027A($s0)           ## 0000027A
/* 00D10 80ABA950 27190015 */  addiu   $t9, $t8, 0x0015           ## $t9 = 00000015
/* 00D14 80ABA954 10000013 */  beq     $zero, $zero, .L80ABA9A4   
/* 00D18 80ABA958 A619026E */  sh      $t9, 0x026E($s0)           ## 0000026E
.L80ABA95C:
/* 00D1C 80ABA95C 8609027A */  lh      $t1, 0x027A($s0)           ## 0000027A
/* 00D20 80ABA960 920B0273 */  lbu     $t3, 0x0273($s0)           ## 00000273
/* 00D24 80ABA964 A2080274 */  sb      $t0, 0x0274($s0)           ## 00000274
/* 00D28 80ABA968 252A0015 */  addiu   $t2, $t1, 0x0015           ## $t2 = 00000015
/* 00D2C 80ABA96C 15600005 */  bne     $t3, $zero, .L80ABA984     
/* 00D30 80ABA970 A60A026E */  sh      $t2, 0x026E($s0)           ## 0000026E
/* 00D34 80ABA974 3C0C80AC */  lui     $t4, %hi(func_80ABA778)    ## $t4 = 80AC0000
/* 00D38 80ABA978 258CA778 */  addiu   $t4, $t4, %lo(func_80ABA778) ## $t4 = 80ABA778
/* 00D3C 80ABA97C 10000009 */  beq     $zero, $zero, .L80ABA9A4   
/* 00D40 80ABA980 AE0C0250 */  sw      $t4, 0x0250($s0)           ## 00000250
.L80ABA984:
/* 00D44 80ABA984 3C0D80AC */  lui     $t5, %hi(func_80ABA9B8)    ## $t5 = 80AC0000
/* 00D48 80ABA988 25ADA9B8 */  addiu   $t5, $t5, %lo(func_80ABA9B8) ## $t5 = 80ABA9B8
/* 00D4C 80ABA98C 10000005 */  beq     $zero, $zero, .L80ABA9A4   
/* 00D50 80ABA990 AE0D0250 */  sw      $t5, 0x0250($s0)           ## 00000250
.L80ABA994:
/* 00D54 80ABA994 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00D58 80ABA998 3C064248 */  lui     $a2, 0x4248                ## $a2 = 42480000
/* 00D5C 80ABA99C 0C00BCA6 */  jal     func_8002F298              
/* 00D60 80ABA9A0 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
.L80ABA9A4:
/* 00D64 80ABA9A4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D68 80ABA9A8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D6C 80ABA9AC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00D70 80ABA9B0 03E00008 */  jr      $ra                        
/* 00D74 80ABA9B4 00000000 */  nop


