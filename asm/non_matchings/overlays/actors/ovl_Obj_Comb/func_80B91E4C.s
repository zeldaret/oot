glabel func_80B91E4C
/* 002EC 80B91E4C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 002F0 80B91E50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002F4 80B91E54 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 002F8 80B91E58 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 002FC 80B91E5C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00300 80B91E60 3046001F */  andi    $a2, $v0, 0x001F           ## $a2 = 00000000
/* 00304 80B91E64 00063400 */  sll     $a2, $a2, 16               
/* 00308 80B91E68 00063403 */  sra     $a2, $a2, 16               
/* 0030C 80B91E6C 1CC00002 */  bgtz    $a2, .L80B91E78            
/* 00310 80B91E70 28C1001A */  slti    $at, $a2, 0x001A           
/* 00314 80B91E74 10200025 */  beq     $at, $zero, .L80B91F0C     
.L80B91E78:
/* 00318 80B91E78 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0031C 80B91E7C 14C10013 */  bne     $a2, $at, .L80B91ECC       
/* 00320 80B91E80 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00324 80B91E84 00022A03 */  sra     $a1, $v0,  8               
/* 00328 80B91E88 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 0032C 80B91E8C A7A6001E */  sh      $a2, 0x001E($sp)           
/* 00330 80B91E90 0C00B35B */  jal     Flags_GetCollectible
              
/* 00334 80B91E94 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00338 80B91E98 87A6001E */  lh      $a2, 0x001E($sp)           
/* 0033C 80B91E9C 10400003 */  beq     $v0, $zero, .L80B91EAC     
/* 00340 80B91EA0 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00344 80B91EA4 10000015 */  beq     $zero, $zero, .L80B91EFC   
/* 00348 80B91EA8 2406FFFF */  addiu   $a2, $zero, 0xFFFF         ## $a2 = FFFFFFFF
.L80B91EAC:
/* 0034C 80B91EAC 84EE001C */  lh      $t6, 0x001C($a3)           ## 0000001C
/* 00350 80B91EB0 000E7A03 */  sra     $t7, $t6,  8               
/* 00354 80B91EB4 31F8003F */  andi    $t8, $t7, 0x003F           ## $t8 = 00000000
/* 00358 80B91EB8 0018CA00 */  sll     $t9, $t8,  8               
/* 0035C 80B91EBC 00D93025 */  or      $a2, $a2, $t9              ## $a2 = FFFFFFFF
/* 00360 80B91EC0 00063400 */  sll     $a2, $a2, 16               
/* 00364 80B91EC4 1000000D */  beq     $zero, $zero, .L80B91EFC   
/* 00368 80B91EC8 00063403 */  sra     $a2, $a2, 16               
.L80B91ECC:
/* 0036C 80B91ECC A7A6001E */  sh      $a2, 0x001E($sp)           
/* 00370 80B91ED0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00374 80B91ED4 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00378 80B91ED8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0037C 80B91EDC 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00380 80B91EE0 87A6001E */  lh      $a2, 0x001E($sp)           
/* 00384 80B91EE4 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00388 80B91EE8 4604003C */  c.lt.s  $f0, $f4                   
/* 0038C 80B91EEC 00000000 */  nop
/* 00390 80B91EF0 45000002 */  bc1f    .L80B91EFC                 
/* 00394 80B91EF4 00000000 */  nop
/* 00398 80B91EF8 2406FFFF */  addiu   $a2, $zero, 0xFFFF         ## $a2 = FFFFFFFF
.L80B91EFC:
/* 0039C 80B91EFC 04C00003 */  bltz    $a2, .L80B91F0C            
/* 003A0 80B91F00 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 003A4 80B91F04 0C007D52 */  jal     Item_DropCollectible
              
/* 003A8 80B91F08 24E50024 */  addiu   $a1, $a3, 0x0024           ## $a1 = 00000024
.L80B91F0C:
/* 003AC 80B91F0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003B0 80B91F10 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 003B4 80B91F14 03E00008 */  jr      $ra                        
/* 003B8 80B91F18 00000000 */  nop


