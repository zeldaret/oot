glabel func_80AAACF8
/* 00AA8 80AAACF8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AAC 80AAACFC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AB0 80AAAD00 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00AB4 80AAAD04 0C01B0D8 */  jal     func_8006C360              
/* 00AB8 80AAAD08 24050011 */  addiu   $a1, $zero, 0x0011         ## $a1 = 00000011
/* 00ABC 80AAAD0C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00AC0 80AAAD10 10400003 */  beq     $v0, $zero, .L80AAAD20     
/* 00AC4 80AAAD14 3043FFFF */  andi    $v1, $v0, 0xFFFF           ## $v1 = 00000000
/* 00AC8 80AAAD18 1000002D */  beq     $zero, $zero, .L80AAADD0   
/* 00ACC 80AAAD1C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80AAAD20:
/* 00AD0 80AAAD20 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00AD4 80AAAD24 A0800208 */  sb      $zero, 0x0208($a0)         ## 00000208
/* 00AD8 80AAAD28 A0800209 */  sb      $zero, 0x0209($a0)         ## 00000209
/* 00ADC 80AAAD2C 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00AE0 80AAAD30 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 00AE4 80AAAD34 8DCE7168 */  lw      $t6, 0x7168($t6)           ## 80127168
/* 00AE8 80AAAD38 8C6F00A4 */  lw      $t7, 0x00A4($v1)           ## 8015E704
/* 00AEC 80AAAD3C 01CFC024 */  and     $t8, $t6, $t7              
/* 00AF0 80AAAD40 53000004 */  beql    $t8, $zero, .L80AAAD54     
/* 00AF4 80AAAD44 94790ED4 */  lhu     $t9, 0x0ED4($v1)           ## 8015F534
/* 00AF8 80AAAD48 10000021 */  beq     $zero, $zero, .L80AAADD0   
/* 00AFC 80AAAD4C 24021045 */  addiu   $v0, $zero, 0x1045         ## $v0 = 00001045
/* 00B00 80AAAD50 94790ED4 */  lhu     $t9, 0x0ED4($v1)           ## 8015F534
.L80AAAD54:
/* 00B04 80AAAD54 3C058012 */  lui     $a1, 0x8012                ## $a1 = 80120000
/* 00B08 80AAAD58 24A571A0 */  addiu   $a1, $a1, 0x71A0           ## $a1 = 801271A0
/* 00B0C 80AAAD5C 33280010 */  andi    $t0, $t9, 0x0010           ## $t0 = 00000000
/* 00B10 80AAAD60 11000003 */  beq     $t0, $zero, .L80AAAD70     
/* 00B14 80AAAD64 3C068012 */  lui     $a2, 0x8012                ## $a2 = 80120000
/* 00B18 80AAAD68 10000019 */  beq     $zero, $zero, .L80AAADD0   
/* 00B1C 80AAAD6C 24021034 */  addiu   $v0, $zero, 0x1034         ## $v0 = 00001034
.L80AAAD70:
/* 00B20 80AAAD70 94620070 */  lhu     $v0, 0x0070($v1)           ## 8015E6D0
/* 00B24 80AAAD74 94A90002 */  lhu     $t1, 0x0002($a1)           ## 801271A2
/* 00B28 80AAAD78 24C671F0 */  addiu   $a2, $a2, 0x71F0           ## $a2 = 801271F0
/* 00B2C 80AAAD7C 90CB0001 */  lbu     $t3, 0x0001($a2)           ## 801271F1
/* 00B30 80AAAD80 00495024 */  and     $t2, $v0, $t1              
/* 00B34 80AAAD84 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00B38 80AAAD88 016A6007 */  srav    $t4, $t2, $t3              
/* 00B3C 80AAAD8C 548C000A */  bnel    $a0, $t4, .L80AAADB8       
/* 00B40 80AAAD90 94790EF8 */  lhu     $t9, 0x0EF8($v1)           ## 8015F558
/* 00B44 80AAAD94 94AD0000 */  lhu     $t5, 0x0000($a1)           ## 801271A0
/* 00B48 80AAAD98 90CF0000 */  lbu     $t7, 0x0000($a2)           ## 801271F0
/* 00B4C 80AAAD9C 004D7024 */  and     $t6, $v0, $t5              
/* 00B50 80AAADA0 01EEC007 */  srav    $t8, $t6, $t7              
/* 00B54 80AAADA4 54980004 */  bnel    $a0, $t8, .L80AAADB8       
/* 00B58 80AAADA8 94790EF8 */  lhu     $t9, 0x0EF8($v1)           ## 8015F558
/* 00B5C 80AAADAC 10000008 */  beq     $zero, $zero, .L80AAADD0   
/* 00B60 80AAADB0 24021033 */  addiu   $v0, $zero, 0x1033         ## $v0 = 00001033
/* 00B64 80AAADB4 94790EF8 */  lhu     $t9, 0x0EF8($v1)           ## 8015F558
.L80AAADB8:
/* 00B68 80AAADB8 2402102F */  addiu   $v0, $zero, 0x102F         ## $v0 = 0000102F
/* 00B6C 80AAADBC 33281000 */  andi    $t0, $t9, 0x1000           ## $t0 = 00000000
/* 00B70 80AAADC0 11000003 */  beq     $t0, $zero, .L80AAADD0     
/* 00B74 80AAADC4 00000000 */  nop
/* 00B78 80AAADC8 10000001 */  beq     $zero, $zero, .L80AAADD0   
/* 00B7C 80AAADCC 24021030 */  addiu   $v0, $zero, 0x1030         ## $v0 = 00001030
.L80AAADD0:
/* 00B80 80AAADD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B84 80AAADD4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B88 80AAADD8 03E00008 */  jr      $ra                        
/* 00B8C 80AAADDC 00000000 */  nop


