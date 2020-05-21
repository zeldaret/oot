.late_rodata
glabel D_80B16F50
    .float 0.4

.text
glabel func_80B14818
/* 00D78 80B14818 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D7C 80B1481C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D80 80B14820 8CA2009C */  lw      $v0, 0x009C($a1)           ## 0000009C
/* 00D84 80B14824 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 00D88 80B14828 24050800 */  addiu   $a1, $zero, 0x0800         ## $a1 = 00000800
/* 00D8C 80B1482C 0041001A */  div     $zero, $v0, $at            
/* 00D90 80B14830 00001010 */  mfhi    $v0                        
/* 00D94 80B14834 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00D98 80B14838 10400003 */  beq     $v0, $zero, .L80B14848     
/* 00D9C 80B1483C 00000000 */  nop
/* 00DA0 80B14840 54410005 */  bnel    $v0, $at, .L80B14858       
/* 00DA4 80B14844 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
.L80B14848:
/* 00DA8 80B14848 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00DAC 80B1484C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00DB0 80B14850 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00DB4 80B14854 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
.L80B14858:
/* 00DB8 80B14858 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 00DBC 80B1485C C4800068 */  lwc1    $f0, 0x0068($a0)           ## 00000068
/* 00DC0 80B14860 3C0180B1 */  lui     $at, %hi(D_80B16F50)       ## $at = 80B10000
/* 00DC4 80B14864 4604003C */  c.lt.s  $f0, $f4                   
/* 00DC8 80B14868 00000000 */  nop
/* 00DCC 80B1486C 45000004 */  bc1f    .L80B14880                 
/* 00DD0 80B14870 00000000 */  nop
/* 00DD4 80B14874 C4266F50 */  lwc1    $f6, %lo(D_80B16F50)($at)  
/* 00DD8 80B14878 46060200 */  add.s   $f8, $f0, $f6              
/* 00DDC 80B1487C E4880068 */  swc1    $f8, 0x0068($a0)           ## 00000068
.L80B14880:
/* 00DE0 80B14880 0C00B638 */  jal     Actor_MoveForward
              
/* 00DE4 80B14884 00000000 */  nop
/* 00DE8 80B14888 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DEC 80B1488C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DF0 80B14890 03E00008 */  jr      $ra                        
/* 00DF4 80B14894 00000000 */  nop
