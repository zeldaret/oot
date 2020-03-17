glabel func_8086C76C
/* 00ACC 8086C76C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00AD0 8086C770 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00AD4 8086C774 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00AD8 8086C778 0C010D5B */  jal     func_8004356C              
/* 00ADC 8086C77C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00AE0 8086C780 1040000F */  beq     $v0, $zero, .L8086C7C0     
/* 00AE4 8086C784 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00AE8 8086C788 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00AEC 8086C78C 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 00AF0 8086C790 C4E40090 */  lwc1    $f4, 0x0090($a3)           ## 00000090
/* 00AF4 8086C794 3C0E8087 */  lui     $t6, %hi(func_8086C7D0)    ## $t6 = 80870000
/* 00AF8 8086C798 25CEC7D0 */  addiu   $t6, $t6, %lo(func_8086C7D0) ## $t6 = 8086C7D0
/* 00AFC 8086C79C 4606203C */  c.lt.s  $f4, $f6                   
/* 00B00 8086C7A0 24050C12 */  addiu   $a1, $zero, 0x0C12         ## $a1 = 00000C12
/* 00B04 8086C7A4 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 00B08 8086C7A8 45020006 */  bc1fl   .L8086C7C4                 
/* 00B0C 8086C7AC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B10 8086C7B0 ACEE0164 */  sw      $t6, 0x0164($a3)           ## 00000164
/* 00B14 8086C7B4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00B18 8086C7B8 0C02003E */  jal     func_800800F8              
/* 00B1C 8086C7BC 8FA40024 */  lw      $a0, 0x0024($sp)           
.L8086C7C0:
/* 00B20 8086C7C0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8086C7C4:
/* 00B24 8086C7C4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B28 8086C7C8 03E00008 */  jr      $ra                        
/* 00B2C 8086C7CC 00000000 */  nop


