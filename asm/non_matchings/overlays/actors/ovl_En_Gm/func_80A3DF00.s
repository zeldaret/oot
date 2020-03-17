glabel func_80A3DF00
/* 00820 80A3DF00 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00824 80A3DF04 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00828 80A3DF08 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0082C 80A3DF0C 0C00BD04 */  jal     func_8002F410              
/* 00830 80A3DF10 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00834 80A3DF14 10400006 */  beq     $v0, $zero, .L80A3DF30     
/* 00838 80A3DF18 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0083C 80A3DF1C 3C0E80A4 */  lui     $t6, %hi(func_80A3DF60)    ## $t6 = 80A40000
/* 00840 80A3DF20 25CEDF60 */  addiu   $t6, $t6, %lo(func_80A3DF60) ## $t6 = 80A3DF60
/* 00844 80A3DF24 AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 00848 80A3DF28 10000009 */  beq     $zero, $zero, .L80A3DF50   
/* 0084C 80A3DF2C AC8E026C */  sw      $t6, 0x026C($a0)           ## 0000026C
.L80A3DF30:
/* 00850 80A3DF30 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00854 80A3DF34 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 00858 80A3DF38 3C0743CF */  lui     $a3, 0x43CF                ## $a3 = 43CF0000
/* 0085C 80A3DF3C 34E78000 */  ori     $a3, $a3, 0x8000           ## $a3 = 43CF8000
/* 00860 80A3DF40 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00864 80A3DF44 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 00868 80A3DF48 0C00BD0D */  jal     func_8002F434              
/* 0086C 80A3DF4C E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80A3DF50:
/* 00870 80A3DF50 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00874 80A3DF54 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00878 80A3DF58 03E00008 */  jr      $ra                        
/* 0087C 80A3DF5C 00000000 */  nop


