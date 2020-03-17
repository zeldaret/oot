glabel func_8086EAC0
/* 002F0 8086EAC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002F4 8086EAC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002F8 8086EAC8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 002FC 8086EACC 908202A2 */  lbu     $v0, 0x02A2($a0)           ## 000002A2
/* 00300 8086EAD0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00304 8086EAD4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00308 8086EAD8 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 0030C 8086EADC 11C00009 */  beq     $t6, $zero, .L8086EB04     
/* 00310 8086EAE0 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00314 8086EAE4 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
/* 00318 8086EAE8 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 0031C 8086EAEC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00320 8086EAF0 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00324 8086EAF4 90F802A2 */  lbu     $t8, 0x02A2($a3)           ## 000002A2
/* 00328 8086EAF8 3319FFFD */  andi    $t9, $t8, 0xFFFD           ## $t9 = 00000000
/* 0032C 8086EAFC 332200FF */  andi    $v0, $t9, 0x00FF           ## $v0 = 00000000
/* 00330 8086EB00 A0F902A2 */  sb      $t9, 0x02A2($a3)           ## 000002A2
.L8086EB04:
/* 00334 8086EB04 30480001 */  andi    $t0, $v0, 0x0001           ## $t0 = 00000000
/* 00338 8086EB08 11000008 */  beq     $t0, $zero, .L8086EB2C     
/* 0033C 8086EB0C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00340 8086EB10 24E50164 */  addiu   $a1, $a3, 0x0164           ## $a1 = 00000164
/* 00344 8086EB14 0C017232 */  jal     func_8005C8C8              
/* 00348 8086EB18 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0034C 8086EB1C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00350 8086EB20 90E902A2 */  lbu     $t1, 0x02A2($a3)           ## 000002A2
/* 00354 8086EB24 312AFFFE */  andi    $t2, $t1, 0xFFFE           ## $t2 = 00000000
/* 00358 8086EB28 A0EA02A2 */  sb      $t2, 0x02A2($a3)           ## 000002A2
.L8086EB2C:
/* 0035C 8086EB2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00360 8086EB30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00364 8086EB34 03E00008 */  jr      $ra                        
/* 00368 8086EB38 00000000 */  nop


