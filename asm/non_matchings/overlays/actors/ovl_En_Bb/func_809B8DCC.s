glabel func_809B8DCC
/* 00AEC 809B8DCC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00AF0 809B8DD0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00AF4 809B8DD4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00AF8 809B8DD8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00AFC 809B8DDC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00B00 809B8DE0 44050000 */  mfc1    $a1, $f0                   
/* 00B04 809B8DE4 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 00B08 809B8DE8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B0C 809B8DEC 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 00B10 809B8DF0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00B14 809B8DF4 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00B18 809B8DF8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00B1C 809B8DFC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00B20 809B8E00 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00B24 809B8E04 C4860068 */  lwc1    $f6, 0x0068($a0)           ## 00000068
/* 00B28 809B8E08 46062032 */  c.eq.s  $f4, $f6                   
/* 00B2C 809B8E0C 00000000 */  nop
/* 00B30 809B8E10 45020005 */  bc1fl   .L809B8E28                 
/* 00B34 809B8E14 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B38 809B8E18 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 00B3C 809B8E1C 0C26E5BB */  jal     func_809B96EC              
/* 00B40 809B8E20 E48800BC */  swc1    $f8, 0x00BC($a0)           ## 000000BC
/* 00B44 809B8E24 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809B8E28:
/* 00B48 809B8E28 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B4C 809B8E2C 03E00008 */  jr      $ra                        
/* 00B50 809B8E30 00000000 */  nop
