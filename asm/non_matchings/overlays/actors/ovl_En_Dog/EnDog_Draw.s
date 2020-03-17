glabel EnDog_Draw
/* 00DE8 809FBDB8 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00DEC 809FBDBC 3C0F80A0 */  lui     $t7, %hi(D_809FC020)       ## $t7 = 80A00000
/* 00DF0 809FBDC0 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00DF4 809FBDC4 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00DF8 809FBDC8 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 00DFC 809FBDCC 25EFC020 */  addiu   $t7, $t7, %lo(D_809FC020)  ## $t7 = 809FC020
/* 00E00 809FBDD0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809FC020
/* 00E04 809FBDD4 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809FC024
/* 00E08 809FBDD8 27AE0054 */  addiu   $t6, $sp, 0x0054           ## $t6 = FFFFFFF4
/* 00E0C 809FBDDC ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 00E10 809FBDE0 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 00E14 809FBDE4 8FA90064 */  lw      $t1, 0x0064($sp)           
/* 00E18 809FBDE8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E1C 809FBDEC 3C0680A0 */  lui     $a2, %hi(D_809FC030)       ## $a2 = 80A00000
/* 00E20 809FBDF0 8D250000 */  lw      $a1, 0x0000($t1)           ## 00000000
/* 00E24 809FBDF4 24C6C030 */  addiu   $a2, $a2, %lo(D_809FC030)  ## $a2 = 809FC030
/* 00E28 809FBDF8 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE0
/* 00E2C 809FBDFC 240703CC */  addiu   $a3, $zero, 0x03CC         ## $a3 = 000003CC
/* 00E30 809FBE00 0C031AB1 */  jal     func_800C6AC4              
/* 00E34 809FBE04 AFA50050 */  sw      $a1, 0x0050($sp)           
/* 00E38 809FBE08 8FAA0064 */  lw      $t2, 0x0064($sp)           
/* 00E3C 809FBE0C 0C024F46 */  jal     func_80093D18              
/* 00E40 809FBE10 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 00E44 809FBE14 8FA80050 */  lw      $t0, 0x0050($sp)           
/* 00E48 809FBE18 3C0CE700 */  lui     $t4, 0xE700                ## $t4 = E7000000
/* 00E4C 809FBE1C 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 00E50 809FBE20 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 00E54 809FBE24 27A90054 */  addiu   $t1, $sp, 0x0054           ## $t1 = FFFFFFF4
/* 00E58 809FBE28 246B0008 */  addiu   $t3, $v1, 0x0008           ## $t3 = 00000008
/* 00E5C 809FBE2C AD0B02C0 */  sw      $t3, 0x02C0($t0)           ## 000002C0
/* 00E60 809FBE30 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 00E64 809FBE34 AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 00E68 809FBE38 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 00E6C 809FBE3C 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 00E70 809FBE40 AD0D02C0 */  sw      $t5, 0x02C0($t0)           ## 000002C0
/* 00E74 809FBE44 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 00E78 809FBE48 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00E7C 809FBE4C 31F8000F */  andi    $t8, $t7, 0x000F           ## $t8 = 00000000
/* 00E80 809FBE50 0018C880 */  sll     $t9, $t8,  2               
/* 00E84 809FBE54 03291021 */  addu    $v0, $t9, $t1              
/* 00E88 809FBE58 904D0000 */  lbu     $t5, 0x0000($v0)           ## 00000000
/* 00E8C 809FBE5C 904B0003 */  lbu     $t3, 0x0003($v0)           ## 00000003
/* 00E90 809FBE60 90590001 */  lbu     $t9, 0x0001($v0)           ## 00000001
/* 00E94 809FBE64 000D7600 */  sll     $t6, $t5, 24               
/* 00E98 809FBE68 904D0002 */  lbu     $t5, 0x0002($v0)           ## 00000002
/* 00E9C 809FBE6C 016E7825 */  or      $t7, $t3, $t6              ## $t7 = FB000008
/* 00EA0 809FBE70 00194C00 */  sll     $t1, $t9, 16               
/* 00EA4 809FBE74 01E95025 */  or      $t2, $t7, $t1              ## $t2 = FFFFFFFC
/* 00EA8 809FBE78 000D5A00 */  sll     $t3, $t5,  8               
/* 00EAC 809FBE7C 014B7025 */  or      $t6, $t2, $t3              ## $t6 = FFFFFFFC
/* 00EB0 809FBE80 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 00EB4 809FBE84 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 00EB8 809FBE88 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 00EBC 809FBE8C 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 00EC0 809FBE90 3C1980A0 */  lui     $t9, %hi(func_809FBDA4)    ## $t9 = 80A00000
/* 00EC4 809FBE94 3C1880A0 */  lui     $t8, %hi(func_809FBD8C)    ## $t8 = 80A00000
/* 00EC8 809FBE98 2718BD8C */  addiu   $t8, $t8, %lo(func_809FBD8C) ## $t8 = 809FBD8C
/* 00ECC 809FBE9C 2739BDA4 */  addiu   $t9, $t9, %lo(func_809FBDA4) ## $t9 = 809FBDA4
/* 00ED0 809FBEA0 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00ED4 809FBEA4 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00ED8 809FBEA8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00EDC 809FBEAC 0C0286B2 */  jal     func_800A1AC8              
/* 00EE0 809FBEB0 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00EE4 809FBEB4 8FAF0064 */  lw      $t7, 0x0064($sp)           
/* 00EE8 809FBEB8 3C0680A0 */  lui     $a2, %hi(D_809FC040)       ## $a2 = 80A00000
/* 00EEC 809FBEBC 24C6C040 */  addiu   $a2, $a2, %lo(D_809FC040)  ## $a2 = 809FC040
/* 00EF0 809FBEC0 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFFE0
/* 00EF4 809FBEC4 240703E2 */  addiu   $a3, $zero, 0x03E2         ## $a3 = 000003E2
/* 00EF8 809FBEC8 0C031AD5 */  jal     func_800C6B54              
/* 00EFC 809FBECC 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 00F00 809FBED0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00F04 809FBED4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00F08 809FBED8 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 00F0C 809FBEDC 03E00008 */  jr      $ra                        
/* 00F10 809FBEE0 00000000 */  nop
/* 00F14 809FBEE4 00000000 */  nop
/* 00F18 809FBEE8 00000000 */  nop
/* 00F1C 809FBEEC 00000000 */  nop

