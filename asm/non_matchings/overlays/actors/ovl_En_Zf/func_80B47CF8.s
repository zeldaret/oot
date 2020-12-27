glabel func_80B47CF8
/* 03CA8 80B47CF8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 03CAC 80B47CFC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03CB0 80B47D00 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 03CB4 80B47D04 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 03CB8 80B47D08 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 03CBC 80B47D0C 3C0141D0 */  lui     $at, 0x41D0                ## $at = 41D00000
/* 03CC0 80B47D10 44813000 */  mtc1    $at, $f6                   ## $f6 = 26.00
/* 03CC4 80B47D14 A7AE002E */  sh      $t6, 0x002E($sp)           
/* 03CC8 80B47D18 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 03CCC 80B47D1C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03CD0 80B47D20 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 03CD4 80B47D24 4604303E */  c.le.s  $f6, $f4                   
/* 03CD8 80B47D28 87A5002E */  lh      $a1, 0x002E($sp)           
/* 03CDC 80B47D2C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 03CE0 80B47D30 24071770 */  addiu   $a3, $zero, 0x1770         ## $a3 = 00001770
/* 03CE4 80B47D34 45000003 */  bc1f    .L80B47D44                 
/* 03CE8 80B47D38 00000000 */  nop
/* 03CEC 80B47D3C 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 03CF0 80B47D40 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B47D44:
/* 03CF4 80B47D44 0C02927F */  jal     SkelAnime_Update
              
/* 03CF8 80B47D48 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 03CFC 80B47D4C 10400009 */  beq     $v0, $zero, .L80B47D74     
/* 03D00 80B47D50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03D04 80B47D54 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 03D08 80B47D58 24053829 */  addiu   $a1, $zero, 0x3829         ## $a1 = 00003829
/* 03D0C 80B47D5C 87AF002E */  lh      $t7, 0x002E($sp)           
/* 03D10 80B47D60 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 03D14 80B47D64 AE1803E4 */  sw      $t8, 0x03E4($s0)           ## 000003E4
/* 03D18 80B47D68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03D1C 80B47D6C 0C2D14E1 */  jal     func_80B45384              
/* 03D20 80B47D70 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
.L80B47D74:
/* 03D24 80B47D74 3C0141B0 */  lui     $at, 0x41B0                ## $at = 41B00000
/* 03D28 80B47D78 44814000 */  mtc1    $at, $f8                   ## $f8 = 22.00
/* 03D2C 80B47D7C C60A0164 */  lwc1    $f10, 0x0164($s0)          ## 00000164
/* 03D30 80B47D80 460A4032 */  c.eq.s  $f8, $f10                  
/* 03D34 80B47D84 00000000 */  nop
/* 03D38 80B47D88 45020003 */  bc1fl   .L80B47D98                 
/* 03D3C 80B47D8C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03D40 80B47D90 A60003FA */  sh      $zero, 0x03FA($s0)         ## 000003FA
/* 03D44 80B47D94 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B47D98:
/* 03D48 80B47D98 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 03D4C 80B47D9C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 03D50 80B47DA0 03E00008 */  jr      $ra                        
/* 03D54 80B47DA4 00000000 */  nop
