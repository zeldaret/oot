glabel func_80A57F94
/* 00D94 80A57F94 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D98 80A57F98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D9C 80A57F9C 908E0002 */  lbu     $t6, 0x0002($a0)           ## 00000002
/* 00DA0 80A57FA0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00DA4 80A57FA4 51C1001D */  beql    $t6, $at, .L80A5801C       
/* 00DA8 80A57FA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DAC 80A57FAC 908F0226 */  lbu     $t7, 0x0226($a0)           ## 00000226
/* 00DB0 80A57FB0 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 00DB4 80A57FB4 57000005 */  bnel    $t8, $zero, .L80A57FCC     
/* 00DB8 80A57FB8 8C880004 */  lw      $t0, 0x0004($a0)           ## 00000004
/* 00DBC 80A57FBC 9099010C */  lbu     $t9, 0x010C($a0)           ## 0000010C
/* 00DC0 80A57FC0 53200007 */  beql    $t9, $zero, .L80A57FE0     
/* 00DC4 80A57FC4 8C8A0004 */  lw      $t2, 0x0004($a0)           ## 00000004
/* 00DC8 80A57FC8 8C880004 */  lw      $t0, 0x0004($a0)           ## 00000004
.L80A57FCC:
/* 00DCC 80A57FCC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00DD0 80A57FD0 01014825 */  or      $t1, $t0, $at              ## $t1 = 00010000
/* 00DD4 80A57FD4 10000006 */  beq     $zero, $zero, .L80A57FF0   
/* 00DD8 80A57FD8 AC890004 */  sw      $t1, 0x0004($a0)           ## 00000004
/* 00DDC 80A57FDC 8C8A0004 */  lw      $t2, 0x0004($a0)           ## 00000004
.L80A57FE0:
/* 00DE0 80A57FE0 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 00DE4 80A57FE4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00DE8 80A57FE8 01415824 */  and     $t3, $t2, $at              
/* 00DEC 80A57FEC AC8B0004 */  sw      $t3, 0x0004($a0)           ## 00000004
.L80A57FF0:
/* 00DF0 80A57FF0 3C014302 */  lui     $at, 0x4302                ## $at = 43020000
/* 00DF4 80A57FF4 44813000 */  mtc1    $at, $f6                   ## $f6 = 130.00
/* 00DF8 80A57FF8 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00DFC 80A57FFC 4606203C */  c.lt.s  $f4, $f6                   
/* 00E00 80A58000 00000000 */  nop
/* 00E04 80A58004 45020005 */  bc1fl   .L80A5801C                 
/* 00E08 80A58008 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E0C 80A5800C 948C0198 */  lhu     $t4, 0x0198($a0)           ## 00000198
/* 00E10 80A58010 0C00BCBD */  jal     func_8002F2F4              
/* 00E14 80A58014 A48C010E */  sh      $t4, 0x010E($a0)           ## 0000010E
/* 00E18 80A58018 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A5801C:
/* 00E1C 80A5801C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E20 80A58020 03E00008 */  jr      $ra                        
/* 00E24 80A58024 00000000 */  nop
