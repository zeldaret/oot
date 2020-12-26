.late_rodata
glabel D_809CCEEC
    .float 0.08

.text
glabel func_809CBC00
/* 00000 809CBC00 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00004 809CBC04 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 809CBC08 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 809CBC0C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00010 809CBC10 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00014 809CBC14 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 809CBC18 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 0001C 809CBC1C 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00020 809CBC20 0C00B58B */  jal     Actor_SetScale
              
/* 00024 809CBC24 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00028 809CBC28 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 0002C 809CBC2C 44810000 */  mtc1    $at, $f0                   ## $f0 = 16.00
/* 00030 809CBC30 C7A2002C */  lwc1    $f2, 0x002C($sp)           
/* 00034 809CBC34 3C01809D */  lui     $at, %hi(D_809CCEEC)       ## $at = 809D0000
/* 00038 809CBC38 E60000BC */  swc1    $f0, 0x00BC($s0)           ## 000000BC
/* 0003C 809CBC3C E6000210 */  swc1    $f0, 0x0210($s0)           ## 00000210
/* 00040 809CBC40 C424CEEC */  lwc1    $f4, %lo(D_809CCEEC)($at)  
/* 00044 809CBC44 E6020220 */  swc1    $f2, 0x0220($s0)           ## 00000220
/* 00048 809CBC48 E6020224 */  swc1    $f2, 0x0224($s0)           ## 00000224
/* 0004C 809CBC4C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00050 809CBC50 E6040214 */  swc1    $f4, 0x0214($s0)           ## 00000214
/* 00054 809CBC54 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00058 809CBC58 E7A00024 */  swc1    $f0, 0x0024($sp)           
/* 0005C 809CBC5C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00060 809CBC60 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 00064 809CBC64 C7AC0024 */  lwc1    $f12, 0x0024($sp)          
/* 00068 809CBC68 C7AE0020 */  lwc1    $f14, 0x0020($sp)          
/* 0006C 809CBC6C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00070 809CBC70 460C6182 */  mul.s   $f6, $f12, $f12            
/* 00074 809CBC74 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 00078 809CBC78 460E7202 */  mul.s   $f8, $f14, $f14            
/* 0007C 809CBC7C E6100218 */  swc1    $f16, 0x0218($s0)          ## 00000218
/* 00080 809CBC80 E610021C */  swc1    $f16, 0x021C($s0)          ## 0000021C
/* 00084 809CBC84 46000482 */  mul.s   $f18, $f0, $f0             
/* 00088 809CBC88 46083280 */  add.s   $f10, $f6, $f8             
/* 0008C 809CBC8C 46125080 */  add.s   $f2, $f10, $f18            
/* 00090 809CBC90 46020203 */  div.s   $f8, $f0, $f2              
/* 00094 809CBC94 46026103 */  div.s   $f4, $f12, $f2             
/* 00098 809CBC98 E6080204 */  swc1    $f8, 0x0204($s0)           ## 00000204
/* 0009C 809CBC9C 46027183 */  div.s   $f6, $f14, $f2             
/* 000A0 809CBCA0 E60401FC */  swc1    $f4, 0x01FC($s0)           ## 000001FC
/* 000A4 809CBCA4 E6060200 */  swc1    $f6, 0x0200($s0)           ## 00000200
/* 000A8 809CBCA8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000AC 809CBCAC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000B0 809CBCB0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 000B4 809CBCB4 03E00008 */  jr      $ra                        
/* 000B8 809CBCB8 00000000 */  nop
