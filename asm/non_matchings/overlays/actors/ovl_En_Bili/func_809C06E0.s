glabel func_809C06E0
/* 00E40 809C06E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E44 809C06E4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E48 809C06E8 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00E4C 809C06EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E50 809C06F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E54 809C06F4 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00E58 809C06F8 0C02927F */  jal     Animation_Update
              
/* 00E5C 809C06FC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E60 809C0700 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00E64 809C0704 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 00E68 809C0708 8CAE0004 */  lw      $t6, 0x0004($a1)           ## 00000004
/* 00E6C 809C070C 31CF8000 */  andi    $t7, $t6, 0x8000           ## $t7 = 00000000
/* 00E70 809C0710 51E00004 */  beql    $t7, $zero, .L809C0724     
/* 00E74 809C0714 84A20196 */  lh      $v0, 0x0196($a1)           ## 00000196
/* 00E78 809C0718 1000000A */  beq     $zero, $zero, .L809C0744   
/* 00E7C 809C071C A0B80114 */  sb      $t8, 0x0114($a1)           ## 00000114
/* 00E80 809C0720 84A20196 */  lh      $v0, 0x0196($a1)           ## 00000196
.L809C0724:
/* 00E84 809C0724 10400003 */  beq     $v0, $zero, .L809C0734     
/* 00E88 809C0728 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 00E8C 809C072C A4B90196 */  sh      $t9, 0x0196($a1)           ## 00000196
/* 00E90 809C0730 84A20196 */  lh      $v0, 0x0196($a1)           ## 00000196
.L809C0734:
/* 00E94 809C0734 54400004 */  bnel    $v0, $zero, .L809C0748     
/* 00E98 809C0738 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E9C 809C073C 0C26FF3A */  jal     func_809BFCE8              
/* 00EA0 809C0740 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
.L809C0744:
/* 00EA4 809C0744 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809C0748:
/* 00EA8 809C0748 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00EAC 809C074C 03E00008 */  jr      $ra                        
/* 00EB0 809C0750 00000000 */  nop
