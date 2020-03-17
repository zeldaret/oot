glabel func_80097974
/* B0EB14 80097974 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0EB18 80097978 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0EB1C 8009797C 3C0E8009 */  lui   $t6, %hi(func_80097820) # $t6, 0x8009
/* B0EB20 80097980 3C0F8009 */  lui   $t7, %hi(func_80097848) # $t7, 0x8009
/* B0EB24 80097984 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B0EB28 80097988 25CE7820 */  addiu $t6, %lo(func_80097820) # addiu $t6, $t6, 0x7820
/* B0EB2C 8009798C 25EF7848 */  addiu $t7, %lo(func_80097848) # addiu $t7, $t7, 0x7848
/* B0EB30 80097990 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B0EB34 80097994 AC8E0004 */  sw    $t6, 4($a0)
/* B0EB38 80097998 AC8F0008 */  sw    $t7, 8($a0)
/* B0EB3C 8009799C 8C590000 */  lw    $t9, ($v0)
/* B0EB40 800979A0 24180001 */  li    $t8, 1
/* B0EB44 800979A4 A7380110 */  sh    $t8, 0x110($t9)
/* B0EB48 800979A8 0C025E14 */  jal   func_80097850
/* B0EB4C 800979AC AFA40018 */   sw    $a0, 0x18($sp)
/* B0EB50 800979B0 0C025E41 */  jal   func_80097904
/* B0EB54 800979B4 8FA40018 */   lw    $a0, 0x18($sp)
/* B0EB58 800979B8 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B0EB5C 800979BC 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B0EB60 800979C0 8C480000 */  lw    $t0, ($v0)
/* B0EB64 800979C4 A500011E */  sh    $zero, 0x11e($t0)
/* B0EB68 800979C8 8C490000 */  lw    $t1, ($v0)
/* B0EB6C 800979CC A5200120 */  sh    $zero, 0x120($t1)
/* B0EB70 800979D0 8C4A0000 */  lw    $t2, ($v0)
/* B0EB74 800979D4 A5400122 */  sh    $zero, 0x122($t2)
/* B0EB78 800979D8 8C4B0000 */  lw    $t3, ($v0)
/* B0EB7C 800979DC A5600124 */  sh    $zero, 0x124($t3)
/* B0EB80 800979E0 8C4C0000 */  lw    $t4, ($v0)
/* B0EB84 800979E4 A5800126 */  sh    $zero, 0x126($t4)
/* B0EB88 800979E8 8C4D0000 */  lw    $t5, ($v0)
/* B0EB8C 800979EC A5A00128 */  sh    $zero, 0x128($t5)
/* B0EB90 800979F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0EB94 800979F4 27BD0018 */  addiu $sp, $sp, 0x18
/* B0EB98 800979F8 03E00008 */  jr    $ra
/* B0EB9C 800979FC 00000000 */   nop   
