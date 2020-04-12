.late_rodata
glabel D_808553F8
 .word 0x40D9999A

.text
glabel func_8083FC68
/* 0DA58 8083FC68 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0DA5C 8083FC6C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0DA60 8083FC70 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0DA64 8083FC74 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 0DA68 8083FC78 848E00B6 */  lh      $t6, 0x00B6($a0)           ## 000000B6
/* 0DA6C 8083FC7C 00063400 */  sll     $a2, $a2, 16               
/* 0DA70 8083FC80 00063403 */  sra     $a2, $a2, 16               
/* 0DA74 8083FC84 00CE7823 */  subu    $t7, $a2, $t6              
/* 0DA78 8083FC88 000FC400 */  sll     $t8, $t7, 16               
/* 0DA7C 8083FC8C 0018CC03 */  sra     $t9, $t8, 16               
/* 0DA80 8083FC90 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 0DA84 8083FC94 00000000 */  nop
/* 0DA88 8083FC98 468021A0 */  cvt.s.w $f6, $f4                   
/* 0DA8C 8083FC9C E7A6001C */  swc1    $f6, 0x001C($sp)           
/* 0DA90 8083FCA0 8C880664 */  lw      $t0, 0x0664($a0)           ## 00000664
/* 0DA94 8083FCA4 5100000D */  beql    $t0, $zero, .L8083FCDC     
/* 0DA98 8083FCA8 C7A0001C */  lwc1    $f0, 0x001C($sp)           
/* 0DA9C 8083FCAC 0C00B75E */  jal     func_8002DD78              
/* 0DAA0 8083FCB0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0DAA4 8083FCB4 0002282B */  sltu    $a1, $zero, $v0            
/* 0DAA8 8083FCB8 14A00005 */  bne     $a1, $zero, .L8083FCD0     
/* 0DAAC 8083FCBC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0DAB0 8083FCC0 0C20CD2D */  jal     func_808334B4              
/* 0DAB4 8083FCC4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0DAB8 8083FCC8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0DABC 8083FCCC 0002282B */  sltu    $a1, $zero, $v0            
.L8083FCD0:
/* 0DAC0 8083FCD0 0C20F6E6 */  jal     func_8083DB98              
/* 0DAC4 8083FCD4 00000000 */  nop
/* 0DAC8 8083FCD8 C7A0001C */  lwc1    $f0, 0x001C($sp)           
.L8083FCDC:
/* 0DACC 8083FCDC 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 0DAD0 8083FCE0 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 0DAD4 8083FCE4 46000005 */  abs.s   $f0, $f0                   
/* 0DAD8 8083FCE8 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0DADC 8083FCEC 46080083 */  div.s   $f2, $f0, $f8              
/* 0DAE0 8083FCF0 44818000 */  mtc1    $at, $f16                  ## $f16 = 50.00
/* 0DAE4 8083FCF4 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 0DAE8 8083FCF8 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 0DAEC 8083FCFC C7A80024 */  lwc1    $f8, 0x0024($sp)           
/* 0DAF0 8083FD00 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0DAF4 8083FD04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0DAF8 8083FD08 46021282 */  mul.s   $f10, $f2, $f2             
/* 0DAFC 8083FD0C 00000000 */  nop
/* 0DB00 8083FD10 46105482 */  mul.s   $f18, $f10, $f16           
/* 0DB04 8083FD14 46049180 */  add.s   $f6, $f18, $f4             
/* 0DB08 8083FD18 4608303C */  c.lt.s  $f6, $f8                   
/* 0DB0C 8083FD1C 00000000 */  nop
/* 0DB10 8083FD20 45000003 */  bc1f    .L8083FD30                 
/* 0DB14 8083FD24 00000000 */  nop
/* 0DB18 8083FD28 10000011 */  beq     $zero, $zero, .L8083FD70   
/* 0DB1C 8083FD2C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083FD30:
/* 0DB20 8083FD30 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 0DB24 8083FD34 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0DB28 8083FD38 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 0DB2C 8083FD3C 46025401 */  sub.s   $f16, $f10, $f2            
/* 0DB30 8083FD40 3C018085 */  lui     $at, %hi(D_808553F8)       ## $at = 80850000
/* 0DB34 8083FD44 C42653F8 */  lwc1    $f6, %lo(D_808553F8)($at)  
/* 0DB38 8083FD48 C7AA0024 */  lwc1    $f10, 0x0024($sp)          
/* 0DB3C 8083FD4C 46128102 */  mul.s   $f4, $f16, $f18            
/* 0DB40 8083FD50 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0DB44 8083FD54 46062200 */  add.s   $f8, $f4, $f6              
/* 0DB48 8083FD58 460A403C */  c.lt.s  $f8, $f10                  
/* 0DB4C 8083FD5C 00000000 */  nop
/* 0DB50 8083FD60 45000003 */  bc1f    .L8083FD70                 
/* 0DB54 8083FD64 00000000 */  nop
/* 0DB58 8083FD68 10000001 */  beq     $zero, $zero, .L8083FD70   
/* 0DB5C 8083FD6C 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L8083FD70:
/* 0DB60 8083FD70 03E00008 */  jr      $ra                        
/* 0DB64 8083FD74 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
