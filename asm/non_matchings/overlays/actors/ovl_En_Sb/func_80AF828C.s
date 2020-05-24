.late_rodata
glabel jtbl_80AF8AA4
.word L80AF82B0
.word L80AF82F0
.word L80AF832C
.word L80AF8368
.word L80AF8388

.text
glabel func_80AF828C
/* 00A9C 80AF828C 948E01FA */  lhu     $t6, 0x01FA($a0)           ## 000001FA
/* 00AA0 80AF8290 2DC10005 */  sltiu   $at, $t6, 0x0005           
/* 00AA4 80AF8294 1020004C */  beq     $at, $zero, .L80AF83C8     
/* 00AA8 80AF8298 000E7080 */  sll     $t6, $t6,  2               
/* 00AAC 80AF829C 3C0180B0 */  lui     $at, %hi(jtbl_80AF8AA4)       ## $at = 80B00000
/* 00AB0 80AF82A0 002E0821 */  addu    $at, $at, $t6              
/* 00AB4 80AF82A4 8C2E8AA4 */  lw      $t6, %lo(jtbl_80AF8AA4)($at)  
/* 00AB8 80AF82A8 01C00008 */  jr      $t6                        
/* 00ABC 80AF82AC 00000000 */  nop
glabel L80AF82B0
/* 00AC0 80AF82B0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00AC4 80AF82B4 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 00AC8 80AF82B8 C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 00ACC 80AF82BC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00AD0 80AF82C0 4600203E */  c.le.s  $f4, $f0                   
/* 00AD4 80AF82C4 00000000 */  nop
/* 00AD8 80AF82C8 45020040 */  bc1fl   .L80AF83CC                 
/* 00ADC 80AF82CC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00AE0 80AF82D0 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 00AE4 80AF82D4 00000000 */  nop
/* 00AE8 80AF82D8 4606003E */  c.le.s  $f0, $f6                   
/* 00AEC 80AF82DC 00000000 */  nop
/* 00AF0 80AF82E0 4502003A */  bc1fl   .L80AF83CC                 
/* 00AF4 80AF82E4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00AF8 80AF82E8 03E00008 */  jr      $ra                        
/* 00AFC 80AF82EC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80AF82F0
/* 00B00 80AF82F0 C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 00B04 80AF82F4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00B08 80AF82F8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00B0C 80AF82FC 4600403E */  c.le.s  $f8, $f0                   
/* 00B10 80AF8300 00000000 */  nop
/* 00B14 80AF8304 45020031 */  bc1fl   .L80AF83CC                 
/* 00B18 80AF8308 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00B1C 80AF830C 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 00B20 80AF8310 00000000 */  nop
/* 00B24 80AF8314 460A003E */  c.le.s  $f0, $f10                  
/* 00B28 80AF8318 00000000 */  nop
/* 00B2C 80AF831C 4502002B */  bc1fl   .L80AF83CC                 
/* 00B30 80AF8320 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00B34 80AF8324 03E00008 */  jr      $ra                        
/* 00B38 80AF8328 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80AF832C
/* 00B3C 80AF832C C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 00B40 80AF8330 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00B44 80AF8334 3C014198 */  lui     $at, 0x4198                ## $at = 41980000
/* 00B48 80AF8338 4600803E */  c.le.s  $f16, $f0                  
/* 00B4C 80AF833C 00000000 */  nop
/* 00B50 80AF8340 45020022 */  bc1fl   .L80AF83CC                 
/* 00B54 80AF8344 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00B58 80AF8348 44819000 */  mtc1    $at, $f18                  ## $f18 = 19.00
/* 00B5C 80AF834C 00000000 */  nop
/* 00B60 80AF8350 4612003E */  c.le.s  $f0, $f18                  
/* 00B64 80AF8354 00000000 */  nop
/* 00B68 80AF8358 4502001C */  bc1fl   .L80AF83CC                 
/* 00B6C 80AF835C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00B70 80AF8360 03E00008 */  jr      $ra                        
/* 00B74 80AF8364 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80AF8368
/* 00B78 80AF8368 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00B7C 80AF836C C4860164 */  lwc1    $f6, 0x0164($a0)           ## 00000164
/* 00B80 80AF8370 46062032 */  c.eq.s  $f4, $f6                   
/* 00B84 80AF8374 00000000 */  nop
/* 00B88 80AF8378 45020014 */  bc1fl   .L80AF83CC                 
/* 00B8C 80AF837C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00B90 80AF8380 03E00008 */  jr      $ra                        
/* 00B94 80AF8384 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80AF8388
/* 00B98 80AF8388 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00B9C 80AF838C 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 00BA0 80AF8390 C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 00BA4 80AF8394 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00BA8 80AF8398 4600403E */  c.le.s  $f8, $f0                   
/* 00BAC 80AF839C 00000000 */  nop
/* 00BB0 80AF83A0 4502000A */  bc1fl   .L80AF83CC                 
/* 00BB4 80AF83A4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00BB8 80AF83A8 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 00BBC 80AF83AC 00000000 */  nop
/* 00BC0 80AF83B0 460A003E */  c.le.s  $f0, $f10                  
/* 00BC4 80AF83B4 00000000 */  nop
/* 00BC8 80AF83B8 45020004 */  bc1fl   .L80AF83CC                 
/* 00BCC 80AF83BC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00BD0 80AF83C0 03E00008 */  jr      $ra                        
/* 00BD4 80AF83C4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AF83C8:
/* 00BD8 80AF83C8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AF83CC:
/* 00BDC 80AF83CC 03E00008 */  jr      $ra                        
/* 00BE0 80AF83D0 00000000 */  nop
