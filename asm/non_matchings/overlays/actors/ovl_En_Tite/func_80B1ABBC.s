glabel func_80B1ABBC
/* 0213C 80B1ABBC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02140 80B1ABC0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02144 80B1ABC4 908202F9 */  lbu     $v0, 0x02F9($a0)           ## 000002F9
/* 02148 80B1ABC8 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 0214C 80B1ABCC 51C0004D */  beql    $t6, $zero, .L80B1AD04     
/* 02150 80B1ABD0 908F00AF */  lbu     $t7, 0x00AF($a0)           ## 000000AF
/* 02154 80B1ABD4 908F02BC */  lbu     $t7, 0x02BC($a0)           ## 000002BC
/* 02158 80B1ABD8 29E10006 */  slti    $at, $t7, 0x0006           
/* 0215C 80B1ABDC 54200049 */  bnel    $at, $zero, .L80B1AD04     
/* 02160 80B1ABE0 908F00AF */  lbu     $t7, 0x00AF($a0)           ## 000000AF
/* 02164 80B1ABE4 908300B1 */  lbu     $v1, 0x00B1($a0)           ## 000000B1
/* 02168 80B1ABE8 3058FFFD */  andi    $t8, $v0, 0xFFFD           ## $t8 = 00000000
/* 0216C 80B1ABEC 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 02170 80B1ABF0 10610064 */  beq     $v1, $at, .L80B1AD84       
/* 02174 80B1ABF4 A09802F9 */  sb      $t8, 0x02F9($a0)           ## 000002F9
/* 02178 80B1ABF8 A08302E4 */  sb      $v1, 0x02E4($a0)           ## 000002E4
/* 0217C 80B1ABFC 8C850304 */  lw      $a1, 0x0304($a0)           ## 00000304
/* 02180 80B1AC00 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02184 80B1AC04 0C00D594 */  jal     func_80035650              
/* 02188 80B1AC08 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0218C 80B1AC0C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02190 80B1AC10 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02194 80B1AC14 908200B1 */  lbu     $v0, 0x00B1($a0)           ## 000000B1
/* 02198 80B1AC18 10410003 */  beq     $v0, $at, .L80B1AC28       
/* 0219C 80B1AC1C 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 021A0 80B1AC20 54410012 */  bnel    $v0, $at, .L80B1AC6C       
/* 021A4 80B1AC24 90890114 */  lbu     $t1, 0x0114($a0)           ## 00000114
.L80B1AC28:
/* 021A8 80B1AC28 909902BC */  lbu     $t9, 0x02BC($a0)           ## 000002BC
/* 021AC 80B1AC2C 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 021B0 80B1AC30 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 021B4 80B1AC34 13210053 */  beq     $t9, $at, .L80B1AD84       
/* 021B8 80B1AC38 24060078 */  addiu   $a2, $zero, 0x0078         ## $a2 = 00000078
/* 021BC 80B1AC3C 24080050 */  addiu   $t0, $zero, 0x0050         ## $t0 = 00000050
/* 021C0 80B1AC40 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 021C4 80B1AC44 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 021C8 80B1AC48 0C00D09B */  jal     func_8003426C              
/* 021CC 80B1AC4C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 021D0 80B1AC50 0C00D58A */  jal     Actor_ApplyDamage
              
/* 021D4 80B1AC54 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 021D8 80B1AC58 0C2C687B */  jal     func_80B1A1EC              
/* 021DC 80B1AC5C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 021E0 80B1AC60 10000049 */  beq     $zero, $zero, .L80B1AD88   
/* 021E4 80B1AC64 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 021E8 80B1AC68 90890114 */  lbu     $t1, 0x0114($a0)           ## 00000114
.L80B1AC6C:
/* 021EC 80B1AC6C 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 021F0 80B1AC70 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 021F4 80B1AC74 11200004 */  beq     $t1, $zero, .L80B1AC88     
/* 021F8 80B1AC78 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 021FC 80B1AC7C 948A0112 */  lhu     $t2, 0x0112($a0)           ## 00000112
/* 02200 80B1AC80 314B4000 */  andi    $t3, $t2, 0x4000           ## $t3 = 00000000
/* 02204 80B1AC84 15600007 */  bne     $t3, $zero, .L80B1ACA4     
.L80B1AC88:
/* 02208 80B1AC88 240C0008 */  addiu   $t4, $zero, 0x0008         ## $t4 = 00000008
/* 0220C 80B1AC8C AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 02210 80B1AC90 0C00D09B */  jal     func_8003426C              
/* 02214 80B1AC94 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02218 80B1AC98 0C00D58A */  jal     Actor_ApplyDamage
              
/* 0221C 80B1AC9C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02220 80B1ACA0 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80B1ACA4:
/* 02224 80B1ACA4 908D00AF */  lbu     $t5, 0x00AF($a0)           ## 000000AF
/* 02228 80B1ACA8 2405386D */  addiu   $a1, $zero, 0x386D         ## $a1 = 0000386D
/* 0222C 80B1ACAC 15A00005 */  bne     $t5, $zero, .L80B1ACC4     
/* 02230 80B1ACB0 00000000 */  nop
/* 02234 80B1ACB4 0C2C698F */  jal     func_80B1A63C              
/* 02238 80B1ACB8 00000000 */  nop
/* 0223C 80B1ACBC 10000032 */  beq     $zero, $zero, .L80B1AD88   
/* 02240 80B1ACC0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B1ACC4:
/* 02244 80B1ACC4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02248 80B1ACC8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0224C 80B1ACCC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02250 80B1ACD0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02254 80B1ACD4 908E02BD */  lbu     $t6, 0x02BD($a0)           ## 000002BD
/* 02258 80B1ACD8 11C10005 */  beq     $t6, $at, .L80B1ACF0       
/* 0225C 80B1ACDC 00000000 */  nop
/* 02260 80B1ACE0 0C2C678A */  jal     func_80B19E28              
/* 02264 80B1ACE4 00000000 */  nop
/* 02268 80B1ACE8 10000027 */  beq     $zero, $zero, .L80B1AD88   
/* 0226C 80B1ACEC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B1ACF0:
/* 02270 80B1ACF0 0C2C6A91 */  jal     func_80B1AA44              
/* 02274 80B1ACF4 00000000 */  nop
/* 02278 80B1ACF8 10000023 */  beq     $zero, $zero, .L80B1AD88   
/* 0227C 80B1ACFC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02280 80B1AD00 908F00AF */  lbu     $t7, 0x00AF($a0)           ## 000000AF
.L80B1AD04:
/* 02284 80B1AD04 51E00020 */  beql    $t7, $zero, .L80B1AD88     
/* 02288 80B1AD08 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0228C 80B1AD0C 90B81C26 */  lbu     $t8, 0x1C26($a1)           ## 00001C26
/* 02290 80B1AD10 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 02294 80B1AD14 5300001C */  beql    $t8, $zero, .L80B1AD88     
/* 02298 80B1AD18 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0229C 80B1AD1C 44812000 */  mtc1    $at, $f4                   ## $f4 = 400.00
/* 022A0 80B1AD20 C4860090 */  lwc1    $f6, 0x0090($a0)           ## 00000090
/* 022A4 80B1AD24 4604303E */  c.le.s  $f6, $f4                   
/* 022A8 80B1AD28 00000000 */  nop
/* 022AC 80B1AD2C 45020016 */  bc1fl   .L80B1AD88                 
/* 022B0 80B1AD30 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 022B4 80B1AD34 94990088 */  lhu     $t9, 0x0088($a0)           ## 00000088
/* 022B8 80B1AD38 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 022BC 80B1AD3C 51000012 */  beql    $t0, $zero, .L80B1AD88     
/* 022C0 80B1AD40 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 022C4 80B1AD44 908902BD */  lbu     $t1, 0x02BD($a0)           ## 000002BD
/* 022C8 80B1AD48 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 022CC 80B1AD4C 55210006 */  bnel    $t1, $at, .L80B1AD68       
/* 022D0 80B1AD50 908202BC */  lbu     $v0, 0x02BC($a0)           ## 000002BC
/* 022D4 80B1AD54 0C2C6A91 */  jal     func_80B1AA44              
/* 022D8 80B1AD58 00000000 */  nop
/* 022DC 80B1AD5C 1000000A */  beq     $zero, $zero, .L80B1AD88   
/* 022E0 80B1AD60 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 022E4 80B1AD64 908202BC */  lbu     $v0, 0x02BC($a0)           ## 000002BC
.L80B1AD68:
/* 022E8 80B1AD68 28410006 */  slti    $at, $v0, 0x0006           
/* 022EC 80B1AD6C 10200003 */  beq     $at, $zero, .L80B1AD7C     
/* 022F0 80B1AD70 28410006 */  slti    $at, $v0, 0x0006           
/* 022F4 80B1AD74 54200004 */  bnel    $at, $zero, .L80B1AD88     
/* 022F8 80B1AD78 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B1AD7C:
/* 022FC 80B1AD7C 0C2C69DB */  jal     func_80B1A76C              
/* 02300 80B1AD80 00000000 */  nop
.L80B1AD84:
/* 02304 80B1AD84 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B1AD88:
/* 02308 80B1AD88 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0230C 80B1AD8C 03E00008 */  jr      $ra                        
/* 02310 80B1AD90 00000000 */  nop


