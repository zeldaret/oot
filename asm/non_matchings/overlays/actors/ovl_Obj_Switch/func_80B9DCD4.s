glabel func_80B9DCD4
/* 00AC4 80B9DCD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AC8 80B9DCD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00ACC 80B9DCDC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00AD0 80B9DCE0 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 00AD4 80B9DCE4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00AD8 80B9DCE8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00ADC 80B9DCEC 00031103 */  sra     $v0, $v1,  4               
/* 00AE0 80B9DCF0 30420007 */  andi    $v0, $v0, 0x0007           ## $v0 = 00000000
/* 00AE4 80B9DCF4 1040000B */  beq     $v0, $zero, .L80B9DD24     
/* 00AE8 80B9DCF8 00032A03 */  sra     $a1, $v1,  8               
/* 00AEC 80B9DCFC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00AF0 80B9DD00 10410011 */  beq     $v0, $at, .L80B9DD48       
/* 00AF4 80B9DD04 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00AF8 80B9DD08 1041001F */  beq     $v0, $at, .L80B9DD88       
/* 00AFC 80B9DD0C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00B00 80B9DD10 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00B04 80B9DD14 1041001C */  beq     $v0, $at, .L80B9DD88       
/* 00B08 80B9DD18 00000000 */  nop
/* 00B0C 80B9DD1C 1000003D */  beq     $zero, $zero, .L80B9DE14   
/* 00B10 80B9DD20 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9DD24:
/* 00B14 80B9DD24 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00B18 80B9DD28 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00B1C 80B9DD2C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00B20 80B9DD30 14400037 */  bne     $v0, $zero, .L80B9DE10     
/* 00B24 80B9DD34 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00B28 80B9DD38 0C2E7788 */  jal     func_80B9DE20              
/* 00B2C 80B9DD3C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00B30 80B9DD40 10000034 */  beq     $zero, $zero, .L80B9DE14   
/* 00B34 80B9DD44 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9DD48:
/* 00B38 80B9DD48 90CE0160 */  lbu     $t6, 0x0160($a2)           ## 00000160
/* 00B3C 80B9DD4C 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 00B40 80B9DD50 51E00030 */  beql    $t7, $zero, .L80B9DE14     
/* 00B44 80B9DD54 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B48 80B9DD58 90D8017F */  lbu     $t8, 0x017F($a2)           ## 0000017F
/* 00B4C 80B9DD5C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00B50 80B9DD60 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 00B54 80B9DD64 5720002B */  bnel    $t9, $zero, .L80B9DE14     
/* 00B58 80B9DD68 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B5C 80B9DD6C 0C2E7788 */  jal     func_80B9DE20              
/* 00B60 80B9DD70 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00B64 80B9DD74 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B68 80B9DD78 0C2E757E */  jal     func_80B9D5F8              
/* 00B6C 80B9DD7C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00B70 80B9DD80 10000024 */  beq     $zero, $zero, .L80B9DE14   
/* 00B74 80B9DD84 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9DD88:
/* 00B78 80B9DD88 0C010D6D */  jal     func_800435B4              
/* 00B7C 80B9DD8C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00B80 80B9DD90 1440001D */  bne     $v0, $zero, .L80B9DE08     
/* 00B84 80B9DD94 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00B88 80B9DD98 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00B8C 80B9DD9C 0C023A62 */  jal     Player_InCsMode              
/* 00B90 80B9DDA0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00B94 80B9DDA4 14400018 */  bne     $v0, $zero, .L80B9DE08     
/* 00B98 80B9DDA8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00B9C 80B9DDAC 84C80168 */  lh      $t0, 0x0168($a2)           ## 00000168
/* 00BA0 80B9DDB0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00BA4 80B9DDB4 5D000017 */  bgtzl   $t0, .L80B9DE14            
/* 00BA8 80B9DDB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BAC 80B9DDBC 0C2E7788 */  jal     func_80B9DE20              
/* 00BB0 80B9DDC0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00BB4 80B9DDC4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00BB8 80B9DDC8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00BBC 80B9DDCC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00BC0 80B9DDD0 84C9001C */  lh      $t1, 0x001C($a2)           ## 0000001C
/* 00BC4 80B9DDD4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00BC8 80B9DDD8 00095103 */  sra     $t2, $t1,  4               
/* 00BCC 80B9DDDC 314B0007 */  andi    $t3, $t2, 0x0007           ## $t3 = 00000000
/* 00BD0 80B9DDE0 15610005 */  bne     $t3, $at, .L80B9DDF8       
/* 00BD4 80B9DDE4 00000000 */  nop
/* 00BD8 80B9DDE8 0C2E757E */  jal     func_80B9D5F8              
/* 00BDC 80B9DDEC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00BE0 80B9DDF0 10000008 */  beq     $zero, $zero, .L80B9DE14   
/* 00BE4 80B9DDF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9DDF8:
/* 00BE8 80B9DDF8 0C2E7553 */  jal     func_80B9D54C              
/* 00BEC 80B9DDFC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00BF0 80B9DE00 10000004 */  beq     $zero, $zero, .L80B9DE14   
/* 00BF4 80B9DE04 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9DE08:
/* 00BF8 80B9DE08 240C0006 */  addiu   $t4, $zero, 0x0006         ## $t4 = 00000006
/* 00BFC 80B9DE0C A4CC0168 */  sh      $t4, 0x0168($a2)           ## 00000168
.L80B9DE10:
/* 00C00 80B9DE10 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9DE14:
/* 00C04 80B9DE14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C08 80B9DE18 03E00008 */  jr      $ra                        
/* 00C0C 80B9DE1C 00000000 */  nop
