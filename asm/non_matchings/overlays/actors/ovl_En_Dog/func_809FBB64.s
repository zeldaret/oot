glabel func_809FBB64
/* 00B94 809FBB64 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00B98 809FBB68 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B9C 809FBB6C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00BA0 809FBB70 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00BA4 809FBB74 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00BA8 809FBB78 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 00BAC 809FBB7C C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00BB0 809FBB80 3C0B80A0 */  lui     $t3, %hi(func_809FBABC)    ## $t3 = 80A00000
/* 00BB4 809FBB84 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BB8 809FBB88 4604303E */  c.le.s  $f6, $f4                   
/* 00BBC 809FBB8C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00BC0 809FBB90 3C063F19 */  lui     $a2, 0x3F19                ## $a2 = 3F190000
/* 00BC4 809FBB94 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00BC8 809FBB98 45000027 */  bc1f    .L809FBC38                 
/* 00BCC 809FBB9C 256BBABC */  addiu   $t3, $t3, %lo(func_809FBABC) ## $t3 = 809FBABC
/* 00BD0 809FBBA0 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00BD4 809FBBA4 A48001F0 */  sh      $zero, 0x01F0($a0)         ## 000001F0
/* 00BD8 809FBBA8 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 00BDC 809FBBAC 44050000 */  mfc1    $a1, $f0                   
/* 00BE0 809FBBB0 44070000 */  mfc1    $a3, $f0                   
/* 00BE4 809FBBB4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00BE8 809FBBB8 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3F19999A
/* 00BEC 809FBBBC 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 00BF0 809FBBC0 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00BF4 809FBBC4 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00BF8 809FBBC8 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00BFC 809FBBCC 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00C00 809FBBD0 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00C04 809FBBD4 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 00C08 809FBBD8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00C0C 809FBBDC A7AE002C */  sh      $t6, 0x002C($sp)           
/* 00C10 809FBBE0 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
/* 00C14 809FBBE4 87B9002C */  lh      $t9, 0x002C($sp)           
/* 00C18 809FBBE8 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00C1C 809FBBEC 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 00C20 809FBBF0 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 00C24 809FBBF4 44819000 */  mtc1    $at, $f18                  ## $f18 = 200.00
/* 00C28 809FBBF8 468040A0 */  cvt.s.w $f2, $f8                   
/* 00C2C 809FBBFC 3C0980A0 */  lui     $t1, %hi(func_809FBC6C)    ## $t1 = 80A00000
/* 00C30 809FBC00 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 00C34 809FBC04 2529BC6C */  addiu   $t1, $t1, %lo(func_809FBC6C) ## $t1 = 809FBC6C
/* 00C38 809FBC08 46805420 */  cvt.s.w $f16, $f10                 
/* 00C3C 809FBC0C 46101081 */  sub.s   $f2, $f2, $f16             
/* 00C40 809FBC10 46001005 */  abs.s   $f0, $f2                   
/* 00C44 809FBC14 4612003C */  c.lt.s  $f0, $f18                  
/* 00C48 809FBC18 00000000 */  nop
/* 00C4C 809FBC1C 45020009 */  bc1fl   .L809FBC44                 
/* 00C50 809FBC20 8A0D0030 */  lwl     $t5, 0x0030($s0)           ## 00000030
/* 00C54 809FBC24 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00C58 809FBC28 A60801F0 */  sh      $t0, 0x01F0($s0)           ## 000001F0
/* 00C5C 809FBC2C AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
/* 00C60 809FBC30 10000003 */  beq     $zero, $zero, .L809FBC40   
/* 00C64 809FBC34 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
.L809FBC38:
/* 00C68 809FBC38 A60A01F0 */  sh      $t2, 0x01F0($s0)           ## 000001F0
/* 00C6C 809FBC3C AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
.L809FBC40:
/* 00C70 809FBC40 8A0D0030 */  lwl     $t5, 0x0030($s0)           ## 00000030
.L809FBC44:
/* 00C74 809FBC44 9A0D0033 */  lwr     $t5, 0x0033($s0)           ## 00000033
/* 00C78 809FBC48 AA0D00B4 */  swl     $t5, 0x00B4($s0)           ## 000000B4
/* 00C7C 809FBC4C BA0D00B7 */  swr     $t5, 0x00B7($s0)           ## 000000B7
/* 00C80 809FBC50 960D0034 */  lhu     $t5, 0x0034($s0)           ## 00000034
/* 00C84 809FBC54 A60D00B8 */  sh      $t5, 0x00B8($s0)           ## 000000B8
/* 00C88 809FBC58 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C8C 809FBC5C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00C90 809FBC60 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00C94 809FBC64 03E00008 */  jr      $ra                        
/* 00C98 809FBC68 00000000 */  nop


