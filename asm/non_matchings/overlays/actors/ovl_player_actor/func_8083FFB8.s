glabel func_8083FFB8
/* 0DDA8 8083FFB8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0DDAC 8083FFBC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0DDB0 8083FFC0 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 0DDB4 8083FFC4 84CE0000 */  lh      $t6, 0x0000($a2)           ## 00000000
/* 0DDB8 8083FFC8 01CF1023 */  subu    $v0, $t6, $t7              
/* 0DDBC 8083FFCC 00021400 */  sll     $v0, $v0, 16               
/* 0DDC0 8083FFD0 00021403 */  sra     $v0, $v0, 16               
/* 0DDC4 8083FFD4 04400003 */  bltz    $v0, .L8083FFE4            
/* 0DDC8 8083FFD8 00021823 */  subu    $v1, $zero, $v0            
/* 0DDCC 8083FFDC 10000002 */  beq     $zero, $zero, .L8083FFE8   
/* 0DDD0 8083FFE0 3043FFFF */  andi    $v1, $v0, 0xFFFF           ## $v1 = 00000000
.L8083FFE4:
/* 0DDD4 8083FFE4 3063FFFF */  andi    $v1, $v1, 0xFFFF           ## $v1 = 00000000
.L8083FFE8:
/* 0DDD8 8083FFE8 00032400 */  sll     $a0, $v1, 16               
/* 0DDDC 8083FFEC 00042403 */  sra     $a0, $a0, 16               
/* 0DDE0 8083FFF0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0DDE4 8083FFF4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0DDE8 8083FFF8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0DDEC 8083FFFC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0DDF0 80840000 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0DDF4 80840004 C4A40000 */  lwc1    $f4, 0x0000($a1)           ## 00000000
/* 0DDF8 80840008 46002182 */  mul.s   $f6, $f4, $f0              
/* 0DDFC 8084000C E4A60000 */  swc1    $f6, 0x0000($a1)           ## 00000000
/* 0DE00 80840010 C4AA0000 */  lwc1    $f10, 0x0000($a1)          ## 00000000
/* 0DE04 80840014 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0DE08 80840018 460A4032 */  c.eq.s  $f8, $f10                  
/* 0DE0C 8084001C 00000000 */  nop
/* 0DE10 80840020 4501000B */  bc1t    .L80840050                 
/* 0DE14 80840024 00000000 */  nop
/* 0DE18 80840028 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0DE1C 8084002C 00000000 */  nop
/* 0DE20 80840030 4600803C */  c.lt.s  $f16, $f0                  
/* 0DE24 80840034 00000000 */  nop
/* 0DE28 80840038 45000003 */  bc1f    .L80840048                 
/* 0DE2C 8084003C 00000000 */  nop
/* 0DE30 80840040 10000003 */  beq     $zero, $zero, .L80840050   
/* 0DE34 80840044 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80840048:
/* 0DE38 80840048 10000001 */  beq     $zero, $zero, .L80840050   
/* 0DE3C 8084004C 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80840050:
/* 0DE40 80840050 03E00008 */  jr      $ra                        
/* 0DE44 80840054 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


