glabel func_80B9DA64
/* 00854 80B9DA64 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00858 80B9DA68 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0085C 80B9DA6C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00860 80B9DA70 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00864 80B9DA74 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 00868 80B9DA78 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0086C 80B9DA7C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00870 80B9DA80 306E0007 */  andi    $t6, $v1, 0x0007           ## $t6 = 00000000
/* 00874 80B9DA84 14CE0016 */  bne     $a2, $t6, .L80B9DAE0       
/* 00878 80B9DA88 00031103 */  sra     $v0, $v1,  4               
/* 0087C 80B9DA8C 908F0191 */  lbu     $t7, 0x0191($a0)           ## 00000191
/* 00880 80B9DA90 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00884 80B9DA94 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00888 80B9DA98 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 0088C 80B9DA9C 5300000B */  beql    $t8, $zero, .L80B9DACC     
/* 00890 80B9DAA0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00894 80B9DAA4 0C2E76F6 */  jal     func_80B9DBD8              
/* 00898 80B9DAA8 00000000 */  nop
/* 0089C 80B9DAAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008A0 80B9DAB0 0C2E7553 */  jal     func_80B9D54C              
/* 008A4 80B9DAB4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 008A8 80B9DAB8 92190191 */  lbu     $t9, 0x0191($s0)           ## 00000191
/* 008AC 80B9DABC 3328FFFD */  andi    $t0, $t9, 0xFFFD           ## $t0 = 00000000
/* 008B0 80B9DAC0 10000040 */  beq     $zero, $zero, .L80B9DBC4   
/* 008B4 80B9DAC4 A2080191 */  sb      $t0, 0x0191($s0)           ## 00000191
/* 008B8 80B9DAC8 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80B9DACC:
/* 008BC 80B9DACC 26060180 */  addiu   $a2, $s0, 0x0180           ## $a2 = 00000180
/* 008C0 80B9DAD0 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 008C4 80B9DAD4 00812821 */  addu    $a1, $a0, $at              
/* 008C8 80B9DAD8 1000003B */  beq     $zero, $zero, .L80B9DBC8   
/* 008CC 80B9DADC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9DAE0:
/* 008D0 80B9DAE0 30420007 */  andi    $v0, $v0, 0x0007           ## $v0 = 00000000
/* 008D4 80B9DAE4 10400009 */  beq     $v0, $zero, .L80B9DB0C     
/* 008D8 80B9DAE8 00000000 */  nop
/* 008DC 80B9DAEC 10460012 */  beq     $v0, $a2, .L80B9DB38       
/* 008E0 80B9DAF0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 008E4 80B9DAF4 1041001F */  beq     $v0, $at, .L80B9DB74       
/* 008E8 80B9DAF8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 008EC 80B9DAFC 10410028 */  beq     $v0, $at, .L80B9DBA0       
/* 008F0 80B9DB00 00000000 */  nop
/* 008F4 80B9DB04 10000030 */  beq     $zero, $zero, .L80B9DBC8   
/* 008F8 80B9DB08 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9DB0C:
/* 008FC 80B9DB0C 0C010D5B */  jal     func_8004356C              
/* 00900 80B9DB10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00904 80B9DB14 5040002C */  beql    $v0, $zero, .L80B9DBC8     
/* 00908 80B9DB18 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0090C 80B9DB1C 0C2E76F6 */  jal     func_80B9DBD8              
/* 00910 80B9DB20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00914 80B9DB24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00918 80B9DB28 0C2E7553 */  jal     func_80B9D54C              
/* 0091C 80B9DB2C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00920 80B9DB30 10000025 */  beq     $zero, $zero, .L80B9DBC8   
/* 00924 80B9DB34 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9DB38:
/* 00928 80B9DB38 920A0160 */  lbu     $t2, 0x0160($s0)           ## 00000160
/* 0092C 80B9DB3C 314B0002 */  andi    $t3, $t2, 0x0002           ## $t3 = 00000000
/* 00930 80B9DB40 51600021 */  beql    $t3, $zero, .L80B9DBC8     
/* 00934 80B9DB44 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00938 80B9DB48 920C017F */  lbu     $t4, 0x017F($s0)           ## 0000017F
/* 0093C 80B9DB4C 318D0002 */  andi    $t5, $t4, 0x0002           ## $t5 = 00000000
/* 00940 80B9DB50 55A0001D */  bnel    $t5, $zero, .L80B9DBC8     
/* 00944 80B9DB54 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00948 80B9DB58 0C2E76F6 */  jal     func_80B9DBD8              
/* 0094C 80B9DB5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00950 80B9DB60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00954 80B9DB64 0C2E7553 */  jal     func_80B9D54C              
/* 00958 80B9DB68 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0095C 80B9DB6C 10000016 */  beq     $zero, $zero, .L80B9DBC8   
/* 00960 80B9DB70 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9DB74:
/* 00964 80B9DB74 0C010D6D */  jal     func_800435B4              
/* 00968 80B9DB78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0096C 80B9DB7C 50400012 */  beql    $v0, $zero, .L80B9DBC8     
/* 00970 80B9DB80 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00974 80B9DB84 0C2E76F6 */  jal     func_80B9DBD8              
/* 00978 80B9DB88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0097C 80B9DB8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00980 80B9DB90 0C2E7553 */  jal     func_80B9D54C              
/* 00984 80B9DB94 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00988 80B9DB98 1000000B */  beq     $zero, $zero, .L80B9DBC8   
/* 0098C 80B9DB9C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9DBA0:
/* 00990 80B9DBA0 0C010D6D */  jal     func_800435B4              
/* 00994 80B9DBA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00998 80B9DBA8 50400007 */  beql    $v0, $zero, .L80B9DBC8     
/* 0099C 80B9DBAC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 009A0 80B9DBB0 0C2E76F6 */  jal     func_80B9DBD8              
/* 009A4 80B9DBB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009A8 80B9DBB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009AC 80B9DBBC 0C2E757E */  jal     func_80B9D5F8              
/* 009B0 80B9DBC0 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80B9DBC4:
/* 009B4 80B9DBC4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B9DBC8:
/* 009B8 80B9DBC8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 009BC 80B9DBCC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 009C0 80B9DBD0 03E00008 */  jr      $ra                        
/* 009C4 80B9DBD4 00000000 */  nop


