glabel func_80BA0DF4
/* 00094 80BA0DF4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00098 80BA0DF8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0009C 80BA0DFC AFA5003C */  sw      $a1, 0x003C($sp)           
/* 000A0 80BA0E00 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 000A4 80BA0E04 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 000A8 80BA0E08 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 000AC 80BA0E0C E7A40028 */  swc1    $f4, 0x0028($sp)           
/* 000B0 80BA0E10 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 000B4 80BA0E14 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 000B8 80BA0E18 27AE0028 */  addiu   $t6, $sp, 0x0028           ## $t6 = FFFFFFF0
/* 000BC 80BA0E1C 46083280 */  add.s   $f10, $f6, $f8             
/* 000C0 80BA0E20 27A60024 */  addiu   $a2, $sp, 0x0024           ## $a2 = FFFFFFEC
/* 000C4 80BA0E24 E7AA002C */  swc1    $f10, 0x002C($sp)          
/* 000C8 80BA0E28 C490002C */  lwc1    $f16, 0x002C($a0)          ## 0000002C
/* 000CC 80BA0E2C 24A407C0 */  addiu   $a0, $a1, 0x07C0           ## $a0 = 000007C0
/* 000D0 80BA0E30 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFFC
/* 000D4 80BA0E34 AFA70038 */  sw      $a3, 0x0038($sp)           
/* 000D8 80BA0E38 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 000DC 80BA0E3C 0C00F269 */  jal     func_8003C9A4              
/* 000E0 80BA0E40 E7B00030 */  swc1    $f16, 0x0030($sp)          
/* 000E4 80BA0E44 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 000E8 80BA0E48 44819000 */  mtc1    $at, $f18                  ## $f18 = -32000.00
/* 000EC 80BA0E4C 8FA70038 */  lw      $a3, 0x0038($sp)           
/* 000F0 80BA0E50 46000086 */  mov.s   $f2, $f0                   
/* 000F4 80BA0E54 4600903C */  c.lt.s  $f18, $f0                  
/* 000F8 80BA0E58 3C0480BA */  lui     $a0, %hi(D_80BA1BE0)       ## $a0 = 80BA0000
/* 000FC 80BA0E5C 24E50024 */  addiu   $a1, $a3, 0x0024           ## $a1 = 00000024
/* 00100 80BA0E60 45000006 */  bc1f    .L80BA0E7C                 
/* 00104 80BA0E64 00000000 */  nop
/* 00108 80BA0E68 E4E20028 */  swc1    $f2, 0x0028($a3)           ## 00000028
/* 0010C 80BA0E6C 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00110 80BA0E70 24E40008 */  addiu   $a0, $a3, 0x0008           ## $a0 = 00000008
/* 00114 80BA0E74 10000004 */  beq     $zero, $zero, .L80BA0E88   
/* 00118 80BA0E78 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80BA0E7C:
/* 0011C 80BA0E7C 0C00084C */  jal     osSyncPrintf
              
/* 00120 80BA0E80 24841BE0 */  addiu   $a0, $a0, %lo(D_80BA1BE0)  ## $a0 = 00001BE0
/* 00124 80BA0E84 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80BA0E88:
/* 00128 80BA0E88 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0012C 80BA0E8C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00130 80BA0E90 03E00008 */  jr      $ra                        
/* 00134 80BA0E94 00000000 */  nop


