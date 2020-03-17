glabel func_80AB2AFC
/* 01D6C 80AB2AFC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01D70 80AB2B00 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01D74 80AB2B04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D78 80AB2B08 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01D7C 80AB2B0C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01D80 80AB2B10 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01D84 80AB2B14 0C2AC4BB */  jal     func_80AB12EC              
/* 01D88 80AB2B18 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01D8C 80AB2B1C 50400032 */  beql    $v0, $zero, .L80AB2BE8     
/* 01D90 80AB2B20 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01D94 80AB2B24 944E0000 */  lhu     $t6, 0x0000($v0)           ## 00000000
/* 01D98 80AB2B28 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 01D9C 80AB2B2C 8E03028C */  lw      $v1, 0x028C($s0)           ## 0000028C
/* 01DA0 80AB2B30 25D8FFFF */  addiu   $t8, $t6, 0xFFFF           ## $t8 = FFFFFFFF
/* 01DA4 80AB2B34 2F01000E */  sltiu   $at, $t8, 0x000E           
/* 01DA8 80AB2B38 51C3002B */  beql    $t6, $v1, .L80AB2BE8       
/* 01DAC 80AB2B3C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01DB0 80AB2B40 10200023 */  beq     $at, $zero, .L80AB2BD0     
/* 01DB4 80AB2B44 0018C080 */  sll     $t8, $t8,  2               
/* 01DB8 80AB2B48 3C0180AB */  lui     $at, %hi(jtbl_80AB520C)       ## $at = 80AB0000
/* 01DBC 80AB2B4C 00380821 */  addu    $at, $at, $t8              
/* 01DC0 80AB2B50 8C38520C */  lw      $t8, %lo(jtbl_80AB520C)($at)  
/* 01DC4 80AB2B54 03000008 */  jr      $t8                        
/* 01DC8 80AB2B58 00000000 */  nop
glabel L80AB2B5C
/* 01DCC 80AB2B5C 0C2AC9B2 */  jal     func_80AB26C8              
/* 01DD0 80AB2B60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DD4 80AB2B64 1000001E */  beq     $zero, $zero, .L80AB2BE0   
/* 01DD8 80AB2B68 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80AB2B6C
/* 01DDC 80AB2B6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DE0 80AB2B70 0C2AC9B7 */  jal     func_80AB26DC              
/* 01DE4 80AB2B74 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01DE8 80AB2B78 10000019 */  beq     $zero, $zero, .L80AB2BE0   
/* 01DEC 80AB2B7C 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80AB2B80
/* 01DF0 80AB2B80 0C2AC9DD */  jal     func_80AB2774              
/* 01DF4 80AB2B84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DF8 80AB2B88 10000015 */  beq     $zero, $zero, .L80AB2BE0   
/* 01DFC 80AB2B8C 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80AB2B90
/* 01E00 80AB2B90 0C2ACA17 */  jal     func_80AB285C              
/* 01E04 80AB2B94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E08 80AB2B98 10000011 */  beq     $zero, $zero, .L80AB2BE0   
/* 01E0C 80AB2B9C 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80AB2BA0
/* 01E10 80AB2BA0 0C2ACA52 */  jal     func_80AB2948              
/* 01E14 80AB2BA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E18 80AB2BA8 1000000D */  beq     $zero, $zero, .L80AB2BE0   
/* 01E1C 80AB2BAC 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80AB2BB0
/* 01E20 80AB2BB0 0C2ACA9A */  jal     func_80AB2A68              
/* 01E24 80AB2BB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E28 80AB2BB8 10000009 */  beq     $zero, $zero, .L80AB2BE0   
/* 01E2C 80AB2BBC 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80AB2BC0
/* 01E30 80AB2BC0 0C2ACABA */  jal     func_80AB2AE8              
/* 01E34 80AB2BC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E38 80AB2BC8 10000005 */  beq     $zero, $zero, .L80AB2BE0   
/* 01E3C 80AB2BCC 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80AB2BD0
.L80AB2BD0:
/* 01E40 80AB2BD0 3C0480AB */  lui     $a0, %hi(D_80AB5088)       ## $a0 = 80AB0000
/* 01E44 80AB2BD4 0C00084C */  jal     osSyncPrintf
              
/* 01E48 80AB2BD8 24845088 */  addiu   $a0, $a0, %lo(D_80AB5088)  ## $a0 = 80AB5088
/* 01E4C 80AB2BDC 8FB90020 */  lw      $t9, 0x0020($sp)           
.L80AB2BE0:
/* 01E50 80AB2BE0 AE19028C */  sw      $t9, 0x028C($s0)           ## 0000028C
/* 01E54 80AB2BE4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AB2BE8:
/* 01E58 80AB2BE8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01E5C 80AB2BEC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01E60 80AB2BF0 03E00008 */  jr      $ra                        
/* 01E64 80AB2BF4 00000000 */  nop


