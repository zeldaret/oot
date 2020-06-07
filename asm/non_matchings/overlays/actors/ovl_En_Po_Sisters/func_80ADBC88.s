glabel func_80ADBC88
/* 02CF8 80ADBC88 3C0E80AE */  lui     $t6, %hi(D_80ADD784)       ## $t6 = 80AE0000
/* 02CFC 80ADBC8C 8DCED784 */  lw      $t6, %lo(D_80ADD784)($t6)  
/* 02D00 80ADBC90 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02D04 80ADBC94 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02D08 80ADBC98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02D0C 80ADBC9C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02D10 80ADBCA0 15C00005 */  bne     $t6, $zero, .L80ADBCB8     
/* 02D14 80ADBCA4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02D18 80ADBCA8 0C023A62 */  jal     func_8008E988              
/* 02D1C 80ADBCAC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02D20 80ADBCB0 5440001A */  bnel    $v0, $zero, .L80ADBD1C     
/* 02D24 80ADBCB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADBCB8:
/* 02D28 80ADBCB8 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
/* 02D2C 80ADBCBC 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 02D30 80ADBCC0 10400003 */  beq     $v0, $zero, .L80ADBCD0     
/* 02D34 80ADBCC4 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 02D38 80ADBCC8 A60F019A */  sh      $t7, 0x019A($s0)           ## 0000019A
/* 02D3C 80ADBCCC 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
.L80ADBCD0:
/* 02D40 80ADBCD0 1441000D */  bne     $v0, $at, .L80ADBD08       
/* 02D44 80ADBCD4 00000000 */  nop
/* 02D48 80ADBCD8 92180194 */  lbu     $t8, 0x0194($s0)           ## 00000194
/* 02D4C 80ADBCDC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 02D50 80ADBCE0 24050C44 */  addiu   $a1, $zero, 0x0C44         ## $a1 = 00000C44
/* 02D54 80ADBCE4 17000004 */  bne     $t8, $zero, .L80ADBCF8     
/* 02D58 80ADBCE8 240603E7 */  addiu   $a2, $zero, 0x03E7         ## $a2 = 000003E7
/* 02D5C 80ADBCEC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02D60 80ADBCF0 0C02003E */  jal     func_800800F8              
/* 02D64 80ADBCF4 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80ADBCF8:
/* 02D68 80ADBCF8 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 02D6C 80ADBCFC 3C0180AE */  lui     $at, %hi(D_80ADD784)       ## $at = 80AE0000
/* 02D70 80ADBD00 AC39D784 */  sw      $t9, %lo(D_80ADD784)($at)  
/* 02D74 80ADBD04 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
.L80ADBD08:
/* 02D78 80ADBD08 54400004 */  bnel    $v0, $zero, .L80ADBD1C     
/* 02D7C 80ADBD0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D80 80ADBD10 0C2B6843 */  jal     func_80ADA10C              
/* 02D84 80ADBD14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D88 80ADBD18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADBD1C:
/* 02D8C 80ADBD1C 0C00BE5D */  jal     func_8002F974              
/* 02D90 80ADBD20 24052031 */  addiu   $a1, $zero, 0x2031         ## $a1 = 00002031
/* 02D94 80ADBD24 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02D98 80ADBD28 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02D9C 80ADBD2C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02DA0 80ADBD30 03E00008 */  jr      $ra                        
/* 02DA4 80ADBD34 00000000 */  nop
