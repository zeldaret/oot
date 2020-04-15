glabel func_80A00A84
/* 00AE4 80A00A84 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AE8 80A00A88 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AEC 80A00A8C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00AF0 80A00A90 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00AF4 80A00A94 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 00AF8 80A00A98 C484000C */  lwc1    $f4, 0x000C($a0)           ## 0000000C
/* 00AFC 80A00A9C C4800028 */  lwc1    $f0, 0x0028($a0)           ## 00000028
/* 00B00 80A00AA0 3C0F80A0 */  lui     $t7, %hi(func_80A00858)    ## $t7 = 80A00000
/* 00B04 80A00AA4 46062201 */  sub.s   $f8, $f4, $f6              
/* 00B08 80A00AA8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00B0C 80A00AAC 25EF0858 */  addiu   $t7, $t7, %lo(func_80A00858) ## $t7 = 80A00858
/* 00B10 80A00AB0 4600403C */  c.lt.s  $f8, $f0                   
/* 00B14 80A00AB4 00000000 */  nop
/* 00B18 80A00AB8 45020006 */  bc1fl   .L80A00AD4                 
/* 00B1C 80A00ABC 8C820118 */  lw      $v0, 0x0118($a0)           ## 00000118
/* 00B20 80A00AC0 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 00B24 80A00AC4 00000000 */  nop
/* 00B28 80A00AC8 460A0401 */  sub.s   $f16, $f0, $f10            
/* 00B2C 80A00ACC E4900028 */  swc1    $f16, 0x0028($a0)          ## 00000028
/* 00B30 80A00AD0 8C820118 */  lw      $v0, 0x0118($a0)           ## 00000118
.L80A00AD4:
/* 00B34 80A00AD4 3C0E80A0 */  lui     $t6, %hi(func_80A012F4)    ## $t6 = 80A00000
/* 00B38 80A00AD8 25CE12F4 */  addiu   $t6, $t6, %lo(func_80A012F4) ## $t6 = 80A012F4
/* 00B3C 80A00ADC 8C430190 */  lw      $v1, 0x0190($v0)           ## 00000190
/* 00B40 80A00AE0 15C30005 */  bne     $t6, $v1, .L80A00AF8       
/* 00B44 80A00AE4 00000000 */  nop
/* 00B48 80A00AE8 0C00B55C */  jal     Actor_Kill
              
/* 00B4C 80A00AEC 00000000 */  nop
/* 00B50 80A00AF0 10000006 */  beq     $zero, $zero, .L80A00B0C   
/* 00B54 80A00AF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A00AF8:
/* 00B58 80A00AF8 55E30004 */  bnel    $t7, $v1, .L80A00B0C       
/* 00B5C 80A00AFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B60 80A00B00 0C280086 */  jal     func_80A00218              
/* 00B64 80A00B04 00000000 */  nop
/* 00B68 80A00B08 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A00B0C:
/* 00B6C 80A00B0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B70 80A00B10 03E00008 */  jr      $ra                        
/* 00B74 80A00B14 00000000 */  nop
