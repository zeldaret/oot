.late_rodata
glabel D_8085538C
    .float 5.8

.text
glabel func_8083BCD0
/* 09AC0 8083BCD0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 09AC4 8083BCD4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 09AC8 8083BCD8 30C30001 */  andi    $v1, $a2, 0x0001           ## $v1 = 00000000
/* 09ACC 8083BCDC 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 09AD0 8083BCE0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 09AD4 8083BCE4 14600004 */  bne     $v1, $zero, .L8083BCF8     
/* 09AD8 8083BCE8 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 09ADC 8083BCEC 3C018085 */  lui     $at, %hi(D_8085538C)       ## $at = 80850000
/* 09AE0 8083BCF0 10000004 */  beq     $zero, $zero, .L8083BD04   
/* 09AE4 8083BCF4 C420538C */  lwc1    $f0, %lo(D_8085538C)($at)  
.L8083BCF8:
/* 09AE8 8083BCF8 3C014060 */  lui     $at, 0x4060                ## $at = 40600000
/* 09AEC 8083BCFC 44810000 */  mtc1    $at, $f0                   ## $f0 = 3.50
/* 09AF0 8083BD00 00000000 */  nop
.L8083BD04:
/* 09AF4 8083BD04 00107080 */  sll     $t6, $s0,  2               
/* 09AF8 8083BD08 01D07023 */  subu    $t6, $t6, $s0              
/* 09AFC 8083BD0C 000E7080 */  sll     $t6, $t6,  2               
/* 09B00 8083BD10 3C058085 */  lui     $a1, %hi(D_80853D4C)       ## $a1 = 80850000
/* 09B04 8083BD14 00AE2821 */  addu    $a1, $a1, $t6              
/* 09B08 8083BD18 44060000 */  mfc1    $a2, $f0                   
/* 09B0C 8083BD1C 240F6800 */  addiu   $t7, $zero, 0x6800         ## $t7 = 00006800
/* 09B10 8083BD20 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 09B14 8083BD24 8CA53D4C */  lw      $a1, %lo(D_80853D4C)($a1)  
/* 09B18 8083BD28 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 09B1C 8083BD2C 0C20E250 */  jal     func_80838940              
/* 09B20 8083BD30 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 09B24 8083BD34 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 09B28 8083BD38 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 09B2C 8083BD3C 00101380 */  sll     $v0, $s0, 14               
/* 09B30 8083BD40 849900B6 */  lh      $t9, 0x00B6($a0)           ## 000000B6
/* 09B34 8083BD44 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 09B38 8083BD48 A4980850 */  sh      $t8, 0x0850($a0)           ## 00000850
/* 09B3C 8083BD4C 03224021 */  addu    $t0, $t9, $v0              
/* 09B40 8083BD50 A090084F */  sb      $s0, 0x084F($a0)           ## 0000084F
/* 09B44 8083BD54 14600005 */  bne     $v1, $zero, .L8083BD6C     
/* 09B48 8083BD58 A488083C */  sh      $t0, 0x083C($a0)           ## 0000083C
/* 09B4C 8083BD5C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 09B50 8083BD60 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 09B54 8083BD64 10000005 */  beq     $zero, $zero, .L8083BD7C   
/* 09B58 8083BD68 E4840838 */  swc1    $f4, 0x0838($a0)           ## 00000838
.L8083BD6C:
/* 09B5C 8083BD6C 3C014108 */  lui     $at, 0x4108                ## $at = 41080000
/* 09B60 8083BD70 44813000 */  mtc1    $at, $f6                   ## $f6 = 8.50
/* 09B64 8083BD74 00000000 */  nop
/* 09B68 8083BD78 E4860838 */  swc1    $f6, 0x0838($a0)           ## 00000838
.L8083BD7C:
/* 09B6C 8083BD7C 8C890680 */  lw      $t1, 0x0680($a0)           ## 00000680
/* 09B70 8083BD80 3C010008 */  lui     $at, 0x0008                ## $at = 00080000
/* 09B74 8083BD84 01215025 */  or      $t2, $t1, $at              ## $t2 = 00080000
/* 09B78 8083BD88 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 09B7C 8083BD8C 14410003 */  bne     $v0, $at, .L8083BD9C       
/* 09B80 8083BD90 AC8A0680 */  sw      $t2, 0x0680($a0)           ## 00000680
/* 09B84 8083BD94 10000002 */  beq     $zero, $zero, .L8083BDA0   
/* 09B88 8083BD98 2402083C */  addiu   $v0, $zero, 0x083C         ## $v0 = 0000083C
.L8083BD9C:
/* 09B8C 8083BD9C 2402083D */  addiu   $v0, $zero, 0x083D         ## $v0 = 0000083D
.L8083BDA0:
/* 09B90 8083BDA0 0C00BDF7 */  jal     func_8002F7DC              
/* 09B94 8083BDA4 3045FFFF */  andi    $a1, $v0, 0xFFFF           ## $a1 = 0000083D
/* 09B98 8083BDA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 09B9C 8083BDAC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 09BA0 8083BDB0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 09BA4 8083BDB4 03E00008 */  jr      $ra                        
/* 09BA8 8083BDB8 00000000 */  nop
