glabel func_80B47DA8
/* 03D58 80B47DA8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 03D5C 80B47DAC AFB00028 */  sw      $s0, 0x0028($sp)           
/* 03D60 80B47DB0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03D64 80B47DB4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 03D68 80B47DB8 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 03D6C 80B47DBC 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 03D70 80B47DC0 248457F8 */  addiu   $a0, $a0, 0x57F8           ## $a0 = 060157F8
/* 03D74 80B47DC4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03D78 80B47DC8 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 03D7C 80B47DCC 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 03D80 80B47DD0 468021A0 */  cvt.s.w $f6, $f4                   
/* 03D84 80B47DD4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 03D88 80B47DD8 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 03D8C 80B47DDC AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 03D90 80B47DE0 24A557F8 */  addiu   $a1, $a1, 0x57F8           ## $a1 = 060157F8
/* 03D94 80B47DE4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 03D98 80B47DE8 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 03D9C 80B47DEC 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 03DA0 80B47DF0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 03DA4 80B47DF4 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 03DA8 80B47DF8 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 03DAC 80B47DFC 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 03DB0 80B47E00 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 03DB4 80B47E04 44811000 */  mtc1    $at, $f2                   ## $f2 = -4.00
/* 03DB8 80B47E08 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 03DBC 80B47E0C 1300000F */  beq     $t8, $zero, .L80B47E4C     
/* 03DC0 80B47E10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03DC4 80B47E14 C6000060 */  lwc1    $f0, 0x0060($s0)           ## 00000060
/* 03DC8 80B47E18 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 03DCC 80B47E1C 00000000 */  nop
/* 03DD0 80B47E20 46005032 */  c.eq.s  $f10, $f0                  
/* 03DD4 80B47E24 00000000 */  nop
/* 03DD8 80B47E28 45030006 */  bc1tl   .L80B47E44                 
/* 03DDC 80B47E2C E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
/* 03DE0 80B47E30 46001032 */  c.eq.s  $f2, $f0                   
/* 03DE4 80B47E34 00000000 */  nop
/* 03DE8 80B47E38 45020005 */  bc1fl   .L80B47E50                 
/* 03DEC 80B47E3C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 03DF0 80B47E40 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
.L80B47E44:
/* 03DF4 80B47E44 10000003 */  beq     $zero, $zero, .L80B47E54   
/* 03DF8 80B47E48 AE0003E4 */  sw      $zero, 0x03E4($s0)         ## 000003E4
.L80B47E4C:
/* 03DFC 80B47E4C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
.L80B47E50:
/* 03E00 80B47E50 AE1903E4 */  sw      $t9, 0x03E4($s0)           ## 000003E4
.L80B47E54:
/* 03E04 80B47E54 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 03E08 80B47E58 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 03E0C 80B47E5C 14410004 */  bne     $v0, $at, .L80B47E70       
/* 03E10 80B47E60 3C014090 */  lui     $at, 0x4090                ## $at = 40900000
/* 03E14 80B47E64 44818000 */  mtc1    $at, $f16                  ## $f16 = 4.50
/* 03E18 80B47E68 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 03E1C 80B47E6C E6100168 */  swc1    $f16, 0x0168($s0)          ## 00000168
.L80B47E70:
/* 03E20 80B47E70 04410003 */  bgez    $v0, .L80B47E80            
/* 03E24 80B47E74 00000000 */  nop
/* 03E28 80B47E78 8608008A */  lh      $t0, 0x008A($s0)           ## 0000008A
/* 03E2C 80B47E7C A6080032 */  sh      $t0, 0x0032($s0)           ## 00000032
.L80B47E80:
/* 03E30 80B47E80 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 03E34 80B47E84 2405382B */  addiu   $a1, $zero, 0x382B         ## $a1 = 0000382B
/* 03E38 80B47E88 24090010 */  addiu   $t1, $zero, 0x0010         ## $t1 = 00000010
/* 03E3C 80B47E8C 3C0580B4 */  lui     $a1, %hi(func_80B47EB4)    ## $a1 = 80B40000
/* 03E40 80B47E90 AE0903DC */  sw      $t1, 0x03DC($s0)           ## 000003DC
/* 03E44 80B47E94 24A57EB4 */  addiu   $a1, $a1, %lo(func_80B47EB4) ## $a1 = 80B47EB4
/* 03E48 80B47E98 0C2D1014 */  jal     func_80B44050              
/* 03E4C 80B47E9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03E50 80B47EA0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 03E54 80B47EA4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 03E58 80B47EA8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 03E5C 80B47EAC 03E00008 */  jr      $ra                        
/* 03E60 80B47EB0 00000000 */  nop


