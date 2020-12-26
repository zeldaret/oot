glabel func_80AC69A4
/* 03D04 80AC69A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03D08 80AC69A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03D0C 80AC69AC 848201F4 */  lh      $v0, 0x01F4($a0)           ## 000001F4
/* 03D10 80AC69B0 2442FFFF */  addiu   $v0, $v0, 0xFFFF           ## $v0 = FFFFFFFF
/* 03D14 80AC69B4 00021400 */  sll     $v0, $v0, 16               
/* 03D18 80AC69B8 00021403 */  sra     $v0, $v0, 16               
/* 03D1C 80AC69BC 50400004 */  beql    $v0, $zero, .L80AC69D0     
/* 03D20 80AC69C0 848201F2 */  lh      $v0, 0x01F2($a0)           ## 000001F2
/* 03D24 80AC69C4 1000001B */  beq     $zero, $zero, .L80AC6A34   
/* 03D28 80AC69C8 A48201F4 */  sh      $v0, 0x01F4($a0)           ## 000001F4
/* 03D2C 80AC69CC 848201F2 */  lh      $v0, 0x01F2($a0)           ## 000001F2
.L80AC69D0:
/* 03D30 80AC69D0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 03D34 80AC69D4 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000000
/* 03D38 80AC69D8 00021400 */  sll     $v0, $v0, 16               
/* 03D3C 80AC69DC 00021403 */  sra     $v0, $v0, 16               
/* 03D40 80AC69E0 28410003 */  slti    $at, $v0, 0x0003           
/* 03D44 80AC69E4 54200012 */  bnel    $at, $zero, .L80AC6A30     
/* 03D48 80AC69E8 A48201F2 */  sh      $v0, 0x01F2($a0)           ## 000001F2
/* 03D4C 80AC69EC A48001F2 */  sh      $zero, 0x01F2($a0)         ## 000001F2
/* 03D50 80AC69F0 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 03D54 80AC69F4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03D58 80AC69F8 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 03D5C 80AC69FC 44812000 */  mtc1    $at, $f4                   ## $f4 = 60.00
/* 03D60 80AC6A00 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03D64 80AC6A04 3C1980AC */  lui     $t9, %hi(func_80AC6970)    ## $t9 = 80AC0000
/* 03D68 80AC6A08 46040182 */  mul.s   $f6, $f0, $f4              
/* 03D6C 80AC6A0C 27396970 */  addiu   $t9, $t9, %lo(func_80AC6970) ## $t9 = 80AC6970
/* 03D70 80AC6A10 AC9901F8 */  sw      $t9, 0x01F8($a0)           ## 000001F8
/* 03D74 80AC6A14 4600320D */  trunc.w.s $f8, $f6                   
/* 03D78 80AC6A18 440F4000 */  mfc1    $t7, $f8                   
/* 03D7C 80AC6A1C 00000000 */  nop
/* 03D80 80AC6A20 25F80014 */  addiu   $t8, $t7, 0x0014           ## $t8 = 00000014
/* 03D84 80AC6A24 10000003 */  beq     $zero, $zero, .L80AC6A34   
/* 03D88 80AC6A28 A49801F4 */  sh      $t8, 0x01F4($a0)           ## 000001F4
/* 03D8C 80AC6A2C A48201F2 */  sh      $v0, 0x01F2($a0)           ## 000001F2
.L80AC6A30:
/* 03D90 80AC6A30 A48801F4 */  sh      $t0, 0x01F4($a0)           ## 000001F4
.L80AC6A34:
/* 03D94 80AC6A34 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03D98 80AC6A38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03D9C 80AC6A3C 03E00008 */  jr      $ra                        
/* 03DA0 80AC6A40 00000000 */  nop
