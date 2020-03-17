glabel func_809FBC6C
/* 00C9C 809FBC6C AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00CA0 809FBC70 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 00CA4 809FBC74 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 00CA8 809FBC78 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 00CAC 809FBC7C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00CB0 809FBC80 01CFC023 */  subu    $t8, $t6, $t7              
/* 00CB4 809FBC84 A49801E8 */  sh      $t8, 0x01E8($a0)           ## 000001E8
/* 00CB8 809FBC88 8739FA24 */  lh      $t9, -0x05DC($t9)          ## 8015FA24
/* 00CBC 809FBC8C 1320000B */  beq     $t9, $zero, .L809FBCBC     
/* 00CC0 809FBC90 00000000 */  nop
/* 00CC4 809FBC94 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00CC8 809FBC98 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 00CCC 809FBC9C 3C0980A0 */  lui     $t1, %hi(func_809FBABC)    ## $t1 = 80A00000
/* 00CD0 809FBCA0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00CD4 809FBCA4 4606203C */  c.lt.s  $f4, $f6                   
/* 00CD8 809FBCA8 2529BABC */  addiu   $t1, $t1, %lo(func_809FBABC) ## $t1 = 809FBABC
/* 00CDC 809FBCAC 45000003 */  bc1f    .L809FBCBC                 
/* 00CE0 809FBCB0 00000000 */  nop
/* 00CE4 809FBCB4 A48801F0 */  sh      $t0, 0x01F0($a0)           ## 000001F0
/* 00CE8 809FBCB8 AC890190 */  sw      $t1, 0x0190($a0)           ## 00000190
.L809FBCBC:
/* 00CEC 809FBCBC 03E00008 */  jr      $ra                        
/* 00CF0 809FBCC0 00000000 */  nop


