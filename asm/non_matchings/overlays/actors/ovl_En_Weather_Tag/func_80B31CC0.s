glabel func_80B31CC0
/* 00CA0 80B31CC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CA4 80B31CC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CA8 80B31CC8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00CAC 80B31CCC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00CB0 80B31CD0 8CA41C44 */  lw      $a0, 0x1C44($a1)           ## 00001C44
/* 00CB4 80B31CD4 0C00B6E3 */  jal     func_8002DB8C              
/* 00CB8 80B31CD8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00CBC 80B31CDC 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00CC0 80B31CE0 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00CC4 80B31CE4 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 00CC8 80B31CE8 85F8001C */  lh      $t8, 0x001C($t7)           ## 0000001C
/* 00CCC 80B31CEC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00CD0 80B31CF0 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 00CD4 80B31CF4 0018CA03 */  sra     $t9, $t8,  8               
/* 00CD8 80B31CF8 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 00CDC 80B31CFC 00000000 */  nop
/* 00CE0 80B31D00 468021A0 */  cvt.s.w $f6, $f4                   
/* 00CE4 80B31D04 46083282 */  mul.s   $f10, $f6, $f8             
/* 00CE8 80B31D08 46105480 */  add.s   $f18, $f10, $f16           
/* 00CEC 80B31D0C 4600903C */  c.lt.s  $f18, $f0                  
/* 00CF0 80B31D10 00000000 */  nop
/* 00CF4 80B31D14 45020013 */  bc1fl   .L80B31D64                 
/* 00CF8 80B31D18 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CFC 80B31D1C 0C01DDA1 */  jal     func_80077684              
/* 00D00 80B31D20 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00D04 80B31D24 8FA9001C */  lw      $t1, 0x001C($sp)           
/* 00D08 80B31D28 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00D0C 80B31D2C 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 00D10 80B31D30 00290821 */  addu    $at, $at, $t1              
/* 00D14 80B31D34 A0280B03 */  sb      $t0, 0x0B03($at)           ## 00010B03
/* 00D18 80B31D38 8FA2001C */  lw      $v0, 0x001C($sp)           
/* 00D1C 80B31D3C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00D20 80B31D40 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 00D24 80B31D44 00411021 */  addu    $v0, $v0, $at              
/* 00D28 80B31D48 A0400B12 */  sb      $zero, 0x0B12($v0)         ## 00000B12
/* 00D2C 80B31D4C A04A0B13 */  sb      $t2, 0x0B13($v0)           ## 00000B13
/* 00D30 80B31D50 3C0580B3 */  lui     $a1, %hi(func_80B31C20)    ## $a1 = 80B30000
/* 00D34 80B31D54 24A51C20 */  addiu   $a1, $a1, %lo(func_80B31C20) ## $a1 = 80B31C20
/* 00D38 80B31D58 0C2CC408 */  jal     func_80B31020              
/* 00D3C 80B31D5C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00D40 80B31D60 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B31D64:
/* 00D44 80B31D64 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D48 80B31D68 03E00008 */  jr      $ra                        
/* 00D4C 80B31D6C 00000000 */  nop


