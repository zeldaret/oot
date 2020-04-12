glabel func_809FDE9C
/* 0026C 809FDE9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00270 809FDEA0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00274 809FDEA4 848301F2 */  lh      $v1, 0x01F2($a0)           ## 000001F2
/* 00278 809FDEA8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0027C 809FDEAC 18600003 */  blez    $v1, .L809FDEBC            
/* 00280 809FDEB0 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 00284 809FDEB4 10000002 */  beq     $zero, $zero, .L809FDEC0   
/* 00288 809FDEB8 A48E01F2 */  sh      $t6, 0x01F2($a0)           ## 000001F2
.L809FDEBC:
/* 0028C 809FDEBC A4C001F2 */  sh      $zero, 0x01F2($a2)         ## 000001F2
.L809FDEC0:
/* 00290 809FDEC0 84C301F2 */  lh      $v1, 0x01F2($a2)           ## 000001F2
/* 00294 809FDEC4 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00298 809FDEC8 28610003 */  slti    $at, $v1, 0x0003           
/* 0029C 809FDECC 50200003 */  beql    $at, $zero, .L809FDEDC     
/* 002A0 809FDED0 90C201EC */  lbu     $v0, 0x01EC($a2)           ## 000001EC
/* 002A4 809FDED4 A0C301EF */  sb      $v1, 0x01EF($a2)           ## 000001EF
/* 002A8 809FDED8 90C201EC */  lbu     $v0, 0x01EC($a2)           ## 000001EC
.L809FDEDC:
/* 002AC 809FDEDC 10400009 */  beq     $v0, $zero, .L809FDF04     
/* 002B0 809FDEE0 00000000 */  nop
/* 002B4 809FDEE4 10440010 */  beq     $v0, $a0, .L809FDF28       
/* 002B8 809FDEE8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 002BC 809FDEEC 10410012 */  beq     $v0, $at, .L809FDF38       
/* 002C0 809FDEF0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 002C4 809FDEF4 10410014 */  beq     $v0, $at, .L809FDF48       
/* 002C8 809FDEF8 00000000 */  nop
/* 002CC 809FDEFC 10000016 */  beq     $zero, $zero, .L809FDF58   
/* 002D0 809FDF00 90C201ED */  lbu     $v0, 0x01ED($a2)           ## 000001ED
.L809FDF04:
/* 002D4 809FDF04 14600006 */  bne     $v1, $zero, .L809FDF20     
/* 002D8 809FDF08 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 002DC 809FDF0C 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 002E0 809FDF10 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 002E4 809FDF14 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 002E8 809FDF18 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 002EC 809FDF1C A4C201F2 */  sh      $v0, 0x01F2($a2)           ## 000001F2
.L809FDF20:
/* 002F0 809FDF20 1000000C */  beq     $zero, $zero, .L809FDF54   
/* 002F4 809FDF24 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
.L809FDF28:
/* 002F8 809FDF28 1460000A */  bne     $v1, $zero, .L809FDF54     
/* 002FC 809FDF2C 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00300 809FDF30 10000008 */  beq     $zero, $zero, .L809FDF54   
/* 00304 809FDF34 A0CF01EF */  sb      $t7, 0x01EF($a2)           ## 000001EF
.L809FDF38:
/* 00308 809FDF38 14600006 */  bne     $v1, $zero, .L809FDF54     
/* 0030C 809FDF3C 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00310 809FDF40 10000004 */  beq     $zero, $zero, .L809FDF54   
/* 00314 809FDF44 A0D801EF */  sb      $t8, 0x01EF($a2)           ## 000001EF
.L809FDF48:
/* 00318 809FDF48 54600003 */  bnel    $v1, $zero, .L809FDF58     
/* 0031C 809FDF4C 90C201ED */  lbu     $v0, 0x01ED($a2)           ## 000001ED
/* 00320 809FDF50 A0C001EF */  sb      $zero, 0x01EF($a2)         ## 000001EF
.L809FDF54:
/* 00324 809FDF54 90C201ED */  lbu     $v0, 0x01ED($a2)           ## 000001ED
.L809FDF58:
/* 00328 809FDF58 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0032C 809FDF5C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00330 809FDF60 10440008 */  beq     $v0, $a0, .L809FDF84       
/* 00334 809FDF64 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00338 809FDF68 10410008 */  beq     $v0, $at, .L809FDF8C       
/* 0033C 809FDF6C 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 00340 809FDF70 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00344 809FDF74 10410007 */  beq     $v0, $at, .L809FDF94       
/* 00348 809FDF78 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 0034C 809FDF7C 10000006 */  beq     $zero, $zero, .L809FDF98   
/* 00350 809FDF80 A0C001F0 */  sb      $zero, 0x01F0($a2)         ## 000001F0
.L809FDF84:
/* 00354 809FDF84 10000004 */  beq     $zero, $zero, .L809FDF98   
/* 00358 809FDF88 A0D901F0 */  sb      $t9, 0x01F0($a2)           ## 000001F0
.L809FDF8C:
/* 0035C 809FDF8C 10000002 */  beq     $zero, $zero, .L809FDF98   
/* 00360 809FDF90 A0C801F0 */  sb      $t0, 0x01F0($a2)           ## 000001F0
.L809FDF94:
/* 00364 809FDF94 A0C901F0 */  sb      $t1, 0x01F0($a2)           ## 000001F0
.L809FDF98:
/* 00368 809FDF98 90CA01EE */  lbu     $t2, 0x01EE($a2)           ## 000001EE
/* 0036C 809FDF9C 548A0004 */  bnel    $a0, $t2, .L809FDFB0       
/* 00370 809FDFA0 A0C001F1 */  sb      $zero, 0x01F1($a2)         ## 000001F1
/* 00374 809FDFA4 10000002 */  beq     $zero, $zero, .L809FDFB0   
/* 00378 809FDFA8 A0CB01F1 */  sb      $t3, 0x01F1($a2)           ## 000001F1
/* 0037C 809FDFAC A0C001F1 */  sb      $zero, 0x01F1($a2)         ## 000001F1
.L809FDFB0:
/* 00380 809FDFB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00384 809FDFB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00388 809FDFB8 03E00008 */  jr      $ra                        
/* 0038C 809FDFBC 00000000 */  nop
