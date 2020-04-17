.rdata
glabel D_80855320
    .asciz "DEBUG MODE"
    .balign 4

.text
glabel func_8084FCAC
/* 1DA9C 8084FCAC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1DAA0 8084FCB0 3C078086 */  lui     $a3, %hi(D_80858AB4)       ## $a3 = 80860000
/* 1DAA4 8084FCB4 24E78AB4 */  addiu   $a3, $a3, %lo(D_80858AB4)  ## $a3 = 80858AB4
/* 1DAA8 8084FCB8 24AF0014 */  addiu   $t7, $a1, 0x0014           ## $t7 = 00000014
/* 1DAAC 8084FCBC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1DAB0 8084FCC0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 1DAB4 8084FCC4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 1DAB8 8084FCC8 ACEF0000 */  sw      $t7, 0x0000($a3)           ## 80858AB4
/* 1DABC 8084FCCC 95E30000 */  lhu     $v1, 0x0000($t7)           ## 00000014
/* 1DAC0 8084FCD0 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 1DAC4 8084FCD4 34217FCF */  ori     $at, $at, 0x7FCF           ## $at = FFFF7FCF
/* 1DAC8 8084FCD8 0061C027 */  nor     $t8, $v1, $at              
/* 1DACC 8084FCDC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1DAD0 8084FCE0 17000005 */  bne     $t8, $zero, .L8084FCF8     
/* 1DAD4 8084FCE4 01E03025 */  or      $a2, $t7, $zero            ## $a2 = 00000014
/* 1DAD8 8084FCE8 95F9000C */  lhu     $t9, 0x000C($t7)           ## 00000020
/* 1DADC 8084FCEC 2401BFFF */  addiu   $at, $zero, 0xBFFF         ## $at = FFFFBFFF
/* 1DAE0 8084FCF0 03214027 */  nor     $t0, $t9, $at              
/* 1DAE4 8084FCF4 11000008 */  beq     $t0, $zero, .L8084FD18     
.L8084FCF8:
/* 1DAE8 8084FCF8 2401FFDF */  addiu   $at, $zero, 0xFFDF         ## $at = FFFFFFDF
/* 1DAEC 8084FCFC 00614827 */  nor     $t1, $v1, $at              
/* 1DAF0 8084FD00 15200013 */  bne     $t1, $zero, .L8084FD50     
/* 1DAF4 8084FD04 00000000 */  nop
/* 1DAF8 8084FD08 94CA000C */  lhu     $t2, 0x000C($a2)           ## 00000020
/* 1DAFC 8084FD0C 2401FEFF */  addiu   $at, $zero, 0xFEFF         ## $at = FFFFFEFF
/* 1DB00 8084FD10 01415827 */  nor     $t3, $t2, $at              
/* 1DB04 8084FD14 1560000E */  bne     $t3, $zero, .L8084FD50     
.L8084FD18:
/* 1DB08 8084FD18 3C028085 */  lui     $v0, %hi(D_808535D0)       ## $v0 = 80850000
/* 1DB0C 8084FD1C 244235D0 */  addiu   $v0, $v0, %lo(D_808535D0)  ## $v0 = 808535D0
/* 1DB10 8084FD20 8C4C0000 */  lw      $t4, 0x0000($v0)           ## 808535D0
/* 1DB14 8084FD24 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1DB18 8084FD28 398D0001 */  xori    $t5, $t4, 0x0001           ## $t5 = 00000001
/* 1DB1C 8084FD2C 11A00008 */  beq     $t5, $zero, .L8084FD50     
/* 1DB20 8084FD30 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 808535D0
/* 1DB24 8084FD34 0C030129 */  jal     Gameplay_GetCamera              
/* 1DB28 8084FD38 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 1DB2C 8084FD3C 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1DB30 8084FD40 0C016911 */  jal     func_8005A444              
/* 1DB34 8084FD44 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 1DB38 8084FD48 3C078086 */  lui     $a3, %hi(D_80858AB4)       ## $a3 = 80860000
/* 1DB3C 8084FD4C 24E78AB4 */  addiu   $a3, $a3, %lo(D_80858AB4)  ## $a3 = 80858AB4
.L8084FD50:
/* 1DB40 8084FD50 3C028085 */  lui     $v0, %hi(D_808535D0)       ## $v0 = 80850000
/* 1DB44 8084FD54 244235D0 */  addiu   $v0, $v0, %lo(D_808535D0)  ## $v0 = 808535D0
/* 1DB48 8084FD58 8C4F0000 */  lw      $t7, 0x0000($v0)           ## 808535D0
/* 1DB4C 8084FD5C 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 1DB50 8084FD60 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 1DB54 8084FD64 11E00080 */  beq     $t7, $zero, .L8084FF68     
/* 1DB58 8084FD68 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 1DB5C 8084FD6C 8CF80000 */  lw      $t8, 0x0000($a3)           ## 80858AB4
/* 1DB60 8084FD70 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 1DB64 8084FD74 3C068085 */  lui     $a2, %hi(D_80855320)       ## $a2 = 80850000
/* 1DB68 8084FD78 97190000 */  lhu     $t9, 0x0000($t8)           ## 00000000
/* 1DB6C 8084FD7C 24C65320 */  addiu   $a2, $a2, %lo(D_80855320)  ## $a2 = 80855320
/* 1DB70 8084FD80 03214027 */  nor     $t0, $t9, $at              
/* 1DB74 8084FD84 15000005 */  bne     $t0, $zero, .L8084FD9C     
/* 1DB78 8084FD88 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 1DB7C 8084FD8C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 1DB80 8084FD90 44811000 */  mtc1    $at, $f2                   ## $f2 = 100.00
/* 1DB84 8084FD94 10000003 */  beq     $zero, $zero, .L8084FDA4   
/* 1DB88 8084FD98 00000000 */  nop
.L8084FD9C:
/* 1DB8C 8084FD9C 44811000 */  mtc1    $at, $f2                   ## $f2 = 100.00
/* 1DB90 8084FDA0 00000000 */  nop
.L8084FDA4:
/* 1DB94 8084FDA4 0C018DD7 */  jal     func_8006375C              
/* 1DB98 8084FDA8 E7A20024 */  swc1    $f2, 0x0024($sp)           
/* 1DB9C 8084FDAC 3C098086 */  lui     $t1, %hi(D_80858AB4)       ## $t1 = 80860000
/* 1DBA0 8084FDB0 8D298AB4 */  lw      $t1, %lo(D_80858AB4)($t1)  
/* 1DBA4 8084FDB4 2401FFDF */  addiu   $at, $zero, 0xFFDF         ## $at = FFFFFFDF
/* 1DBA8 8084FDB8 C7A20024 */  lwc1    $f2, 0x0024($sp)           
/* 1DBAC 8084FDBC 95230000 */  lhu     $v1, 0x0000($t1)           ## 80860000
/* 1DBB0 8084FDC0 00615027 */  nor     $t2, $v1, $at              
/* 1DBB4 8084FDC4 1140004C */  beq     $t2, $zero, .L8084FEF8     
/* 1DBB8 8084FDC8 2401BFFF */  addiu   $at, $zero, 0xBFFF         ## $at = FFFFBFFF
/* 1DBBC 8084FDCC 00615827 */  nor     $t3, $v1, $at              
/* 1DBC0 8084FDD0 15600008 */  bne     $t3, $zero, .L8084FDF4     
/* 1DBC4 8084FDD4 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 1DBC8 8084FDD8 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 1DBCC 8084FDDC 3C0C8086 */  lui     $t4, %hi(D_80858AB4)       ## $t4 = 80860000
/* 1DBD0 8084FDE0 46022180 */  add.s   $f6, $f4, $f2              
/* 1DBD4 8084FDE4 E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
/* 1DBD8 8084FDE8 8D8C8AB4 */  lw      $t4, %lo(D_80858AB4)($t4)  
/* 1DBDC 8084FDEC 1000000B */  beq     $zero, $zero, .L8084FE1C   
/* 1DBE0 8084FDF0 95830000 */  lhu     $v1, 0x0000($t4)           ## 80860000
.L8084FDF4:
/* 1DBE4 8084FDF4 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 1DBE8 8084FDF8 00616827 */  nor     $t5, $v1, $at              
/* 1DBEC 8084FDFC 55A00008 */  bnel    $t5, $zero, .L8084FE20     
/* 1DBF0 8084FE00 306F0F00 */  andi    $t7, $v1, 0x0F00           ## $t7 = 00000000
/* 1DBF4 8084FE04 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 1DBF8 8084FE08 3C0E8086 */  lui     $t6, %hi(D_80858AB4)       ## $t6 = 80860000
/* 1DBFC 8084FE0C 46024281 */  sub.s   $f10, $f8, $f2             
/* 1DC00 8084FE10 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 1DC04 8084FE14 8DCE8AB4 */  lw      $t6, %lo(D_80858AB4)($t6)  
/* 1DC08 8084FE18 95C30000 */  lhu     $v1, 0x0000($t6)           ## 80860000
.L8084FE1C:
/* 1DC0C 8084FE1C 306F0F00 */  andi    $t7, $v1, 0x0F00           ## $t7 = 00000000
.L8084FE20:
/* 1DC10 8084FE20 11E00035 */  beq     $t7, $zero, .L8084FEF8     
/* 1DC14 8084FE24 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 1DC18 8084FE28 845807A0 */  lh      $t8, 0x07A0($v0)           ## 000007A0
/* 1DC1C 8084FE2C 0018C880 */  sll     $t9, $t8,  2               
/* 1DC20 8084FE30 00594021 */  addu    $t0, $v0, $t9              
/* 1DC24 8084FE34 8D040790 */  lw      $a0, 0x0790($t0)           ## 00000790
/* 1DC28 8084FE38 0C016A52 */  jal     func_8005A948              
/* 1DC2C 8084FE3C E7A20024 */  swc1    $f2, 0x0024($sp)           
/* 1DC30 8084FE40 3C098086 */  lui     $t1, %hi(D_80858AB4)       ## $t1 = 80860000
/* 1DC34 8084FE44 8D298AB4 */  lw      $t1, %lo(D_80858AB4)($t1)  
/* 1DC38 8084FE48 2401FBFF */  addiu   $at, $zero, 0xFBFF         ## $at = FFFFFBFF
/* 1DC3C 8084FE4C 00022400 */  sll     $a0, $v0, 16               
/* 1DC40 8084FE50 95230000 */  lhu     $v1, 0x0000($t1)           ## 80860000
/* 1DC44 8084FE54 00042403 */  sra     $a0, $a0, 16               
/* 1DC48 8084FE58 C7A20024 */  lwc1    $f2, 0x0024($sp)           
/* 1DC4C 8084FE5C 00615027 */  nor     $t2, $v1, $at              
/* 1DC50 8084FE60 15400007 */  bne     $t2, $zero, .L8084FE80     
/* 1DC54 8084FE64 2401FDFF */  addiu   $at, $zero, 0xFDFF         ## $at = FFFFFDFF
/* 1DC58 8084FE68 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1DC5C 8084FE6C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 1DC60 8084FE70 00812021 */  addu    $a0, $a0, $at              
/* 1DC64 8084FE74 00042400 */  sll     $a0, $a0, 16               
/* 1DC68 8084FE78 10000010 */  beq     $zero, $zero, .L8084FEBC   
/* 1DC6C 8084FE7C 00042403 */  sra     $a0, $a0, 16               
.L8084FE80:
/* 1DC70 8084FE80 00615827 */  nor     $t3, $v1, $at              
/* 1DC74 8084FE84 15600006 */  bne     $t3, $zero, .L8084FEA0     
/* 1DC78 8084FE88 2401FEFF */  addiu   $at, $zero, 0xFEFF         ## $at = FFFFFEFF
/* 1DC7C 8084FE8C 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1DC80 8084FE90 24844000 */  addiu   $a0, $a0, 0x4000           ## $a0 = 00004000
/* 1DC84 8084FE94 00042400 */  sll     $a0, $a0, 16               
/* 1DC88 8084FE98 10000008 */  beq     $zero, $zero, .L8084FEBC   
/* 1DC8C 8084FE9C 00042403 */  sra     $a0, $a0, 16               
.L8084FEA0:
/* 1DC90 8084FEA0 00616027 */  nor     $t4, $v1, $at              
/* 1DC94 8084FEA4 55800006 */  bnel    $t4, $zero, .L8084FEC0     
/* 1DC98 8084FEA8 A7A40022 */  sh      $a0, 0x0022($sp)           
/* 1DC9C 8084FEAC 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1DCA0 8084FEB0 2484C000 */  addiu   $a0, $a0, 0xC000           ## $a0 = FFFFC000
/* 1DCA4 8084FEB4 00042400 */  sll     $a0, $a0, 16               
/* 1DCA8 8084FEB8 00042403 */  sra     $a0, $a0, 16               
.L8084FEBC:
/* 1DCAC 8084FEBC A7A40022 */  sh      $a0, 0x0022($sp)           
.L8084FEC0:
/* 1DCB0 8084FEC0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 1DCB4 8084FEC4 E7A20024 */  swc1    $f2, 0x0024($sp)           
/* 1DCB8 8084FEC8 C7A20024 */  lwc1    $f2, 0x0024($sp)           
/* 1DCBC 8084FECC C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 1DCC0 8084FED0 87A40022 */  lh      $a0, 0x0022($sp)           
/* 1DCC4 8084FED4 46001482 */  mul.s   $f18, $f2, $f0             
/* 1DCC8 8084FED8 46128100 */  add.s   $f4, $f16, $f18            
/* 1DCCC 8084FEDC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 1DCD0 8084FEE0 E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 1DCD4 8084FEE4 C7A20024 */  lwc1    $f2, 0x0024($sp)           
/* 1DCD8 8084FEE8 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 1DCDC 8084FEEC 46001202 */  mul.s   $f8, $f2, $f0              
/* 1DCE0 8084FEF0 46083280 */  add.s   $f10, $f6, $f8             
/* 1DCE4 8084FEF4 E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
.L8084FEF8:
/* 1DCE8 8084FEF8 0C20C884 */  jal     func_80832210              
/* 1DCEC 8084FEFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1DCF0 8084FF00 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 1DCF4 8084FF04 3C068086 */  lui     $a2, %hi(D_80858AB4)       ## $a2 = 80860000
/* 1DCF8 8084FF08 2401FFDF */  addiu   $at, $zero, 0xFFDF         ## $at = FFFFFFDF
/* 1DCFC 8084FF0C E600006C */  swc1    $f0, 0x006C($s0)           ## 0000006C
/* 1DD00 8084FF10 E6000064 */  swc1    $f0, 0x0064($s0)           ## 00000064
/* 1DD04 8084FF14 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 1DD08 8084FF18 E600005C */  swc1    $f0, 0x005C($s0)           ## 0000005C
/* 1DD0C 8084FF1C 8CC68AB4 */  lw      $a2, %lo(D_80858AB4)($a2)  
/* 1DD10 8084FF20 94CD0000 */  lhu     $t5, 0x0000($a2)           ## 80860000
/* 1DD14 8084FF24 01A17027 */  nor     $t6, $t5, $at              
/* 1DD18 8084FF28 55C0000B */  bnel    $t6, $zero, .L8084FF58     
/* 1DD1C 8084FF2C 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 1DD20 8084FF30 94CF000C */  lhu     $t7, 0x000C($a2)           ## 8086000C
/* 1DD24 8084FF34 2401FDFF */  addiu   $at, $zero, 0xFDFF         ## $at = FFFFFDFF
/* 1DD28 8084FF38 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 1DD2C 8084FF3C 01E1C027 */  nor     $t8, $t7, $at              
/* 1DD30 8084FF40 17000004 */  bne     $t8, $zero, .L8084FF54     
/* 1DD34 8084FF44 3C050001 */  lui     $a1, 0x0001                ## $a1 = 00010000
/* 1DD38 8084FF48 00A42821 */  addu    $a1, $a1, $a0              
/* 1DD3C 8084FF4C 0C00B34E */  jal     Flags_SetTempClear
              
/* 1DD40 8084FF50 80A51CBC */  lb      $a1, 0x1CBC($a1)           ## 00011CBC
.L8084FF54:
/* 1DD44 8084FF54 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
.L8084FF58:
/* 1DD48 8084FF58 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 1DD4C 8084FF5C 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 1DD50 8084FF60 10000001 */  beq     $zero, $zero, .L8084FF68   
/* 1DD54 8084FF64 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8084FF68:
/* 1DD58 8084FF68 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1DD5C 8084FF6C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 1DD60 8084FF70 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 1DD64 8084FF74 03E00008 */  jr      $ra                        
/* 1DD68 8084FF78 00000000 */  nop
