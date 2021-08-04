glabel func_808FFCFC
/* 02DBC 808FFCFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02DC0 808FFD00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02DC4 808FFD04 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 02DC8 808FFD08 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 02DCC 808FFD0C C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 02DD0 808FFD10 4606203C */  c.lt.s  $f4, $f6                   
/* 02DD4 808FFD14 00000000 */  nop
/* 02DD8 808FFD18 45020014 */  bc1fl   .L808FFD6C                 
/* 02DDC 808FFD1C 94980088 */  lhu     $t8, 0x0088($a0)           ## 00000088
/* 02DE0 808FFD20 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 02DE4 808FFD24 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 02DE8 808FFD28 01CF1023 */  subu    $v0, $t6, $t7              
/* 02DEC 808FFD2C 00021400 */  sll     $v0, $v0, 16               
/* 02DF0 808FFD30 00021403 */  sra     $v0, $v0, 16               
/* 02DF4 808FFD34 04400003 */  bltz    $v0, .L808FFD44            
/* 02DF8 808FFD38 00021823 */  subu    $v1, $zero, $v0            
/* 02DFC 808FFD3C 10000001 */  beq     $zero, $zero, .L808FFD44   
/* 02E00 808FFD40 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L808FFD44:
/* 02E04 808FFD44 28612800 */  slti    $at, $v1, 0x2800           
/* 02E08 808FFD48 50200008 */  beql    $at, $zero, .L808FFD6C     
/* 02E0C 808FFD4C 94980088 */  lhu     $t8, 0x0088($a0)           ## 00000088
/* 02E10 808FFD50 0C240160 */  jal     func_80900580              
/* 02E14 808FFD54 A0800311 */  sb      $zero, 0x0311($a0)         ## 00000311
/* 02E18 808FFD58 0C03E341 */  jal     Audio_StopSfx              
/* 02E1C 808FFD5C 240439D9 */  addiu   $a0, $zero, 0x39D9         ## $a0 = 000039D9
/* 02E20 808FFD60 10000010 */  beq     $zero, $zero, .L808FFDA4   
/* 02E24 808FFD64 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02E28 808FFD68 94980088 */  lhu     $t8, 0x0088($a0)           ## 00000088
.L808FFD6C:
/* 02E2C 808FFD6C 33190008 */  andi    $t9, $t8, 0x0008           ## $t9 = 00000000
/* 02E30 808FFD70 5320000C */  beql    $t9, $zero, .L808FFDA4     
/* 02E34 808FFD74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02E38 808FFD78 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02E3C 808FFD7C 0C23FE89 */  jal     func_808FFA24              
/* 02E40 808FFD80 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02E44 808FFD84 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02E48 808FFD88 10400005 */  beq     $v0, $zero, .L808FFDA0     
/* 02E4C 808FFD8C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02E50 808FFD90 0C240160 */  jal     func_80900580              
/* 02E54 808FFD94 A0800311 */  sb      $zero, 0x0311($a0)         ## 00000311
/* 02E58 808FFD98 0C03E341 */  jal     Audio_StopSfx              
/* 02E5C 808FFD9C 240439D9 */  addiu   $a0, $zero, 0x39D9         ## $a0 = 000039D9
.L808FFDA0:
/* 02E60 808FFDA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808FFDA4:
/* 02E64 808FFDA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02E68 808FFDA8 03E00008 */  jr      $ra                        
/* 02E6C 808FFDAC 00000000 */  nop
