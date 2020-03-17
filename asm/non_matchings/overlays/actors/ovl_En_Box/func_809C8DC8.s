glabel func_809C8DC8
/* 00008 809C8DC8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0000C 809C8DCC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00010 809C8DD0 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00014 809C8DD4 8C8F0024 */  lw      $t7, 0x0024($a0)           ## 00000024
/* 00018 809C8DD8 27A20020 */  addiu   $v0, $sp, 0x0020           ## $v0 = FFFFFFE8
/* 0001C 809C8DDC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00020 809C8DE0 AC4F0000 */  sw      $t7, 0x0000($v0)           ## FFFFFFE8
/* 00024 809C8DE4 8C8E0028 */  lw      $t6, 0x0028($a0)           ## 00000028
/* 00028 809C8DE8 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 0002C 809C8DEC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00030 809C8DF0 AC4E0004 */  sw      $t6, 0x0004($v0)           ## FFFFFFEC
/* 00034 809C8DF4 8C8F002C */  lw      $t7, 0x002C($a0)           ## 0000002C
/* 00038 809C8DF8 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF8
/* 0003C 809C8DFC 27A6002C */  addiu   $a2, $sp, 0x002C           ## $a2 = FFFFFFF4
/* 00040 809C8E00 AC4F0008 */  sw      $t7, 0x0008($v0)           ## FFFFFFF0
/* 00044 809C8E04 C7A40024 */  lwc1    $f4, 0x0024($sp)           
/* 00048 809C8E08 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0004C 809C8E0C AFA70038 */  sw      $a3, 0x0038($sp)           
/* 00050 809C8E10 46062200 */  add.s   $f8, $f4, $f6              
/* 00054 809C8E14 AFA20010 */  sw      $v0, 0x0010($sp)           
/* 00058 809C8E18 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 0005C 809C8E1C 0C00F269 */  jal     func_8003C9A4              
/* 00060 809C8E20 E7A80024 */  swc1    $f8, 0x0024($sp)           
/* 00064 809C8E24 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 00068 809C8E28 44815000 */  mtc1    $at, $f10                  ## $f10 = -32000.00
/* 0006C 809C8E2C 8FA70038 */  lw      $a3, 0x0038($sp)           
/* 00070 809C8E30 460A0032 */  c.eq.s  $f0, $f10                  
/* 00074 809C8E34 00000000 */  nop
/* 00078 809C8E38 45030003 */  bc1tl   .L809C8E48                 
/* 0007C 809C8E3C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00080 809C8E40 E4E00028 */  swc1    $f0, 0x0028($a3)           ## 00000028
/* 00084 809C8E44 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809C8E48:
/* 00088 809C8E48 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0008C 809C8E4C 03E00008 */  jr      $ra                        
/* 00090 809C8E50 00000000 */  nop


