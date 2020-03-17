glabel func_80A9AFAC
/* 0000C 80A9AFAC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00010 80A9AFB0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00014 80A9AFB4 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00018 80A9AFB8 AFA60048 */  sw      $a2, 0x0048($sp)           
/* 0001C 80A9AFBC C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 00020 80A9AFC0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00024 80A9AFC4 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 00028 80A9AFC8 E7A4002C */  swc1    $f4, 0x002C($sp)           
/* 0002C 80A9AFCC C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 00030 80A9AFD0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00034 80A9AFD4 27AE002C */  addiu   $t6, $sp, 0x002C           ## $t6 = FFFFFFEC
/* 00038 80A9AFD8 46083280 */  add.s   $f10, $f6, $f8             
/* 0003C 80A9AFDC 27A60028 */  addiu   $a2, $sp, 0x0028           ## $a2 = FFFFFFE8
/* 00040 80A9AFE0 E7AA0030 */  swc1    $f10, 0x0030($sp)          
/* 00044 80A9AFE4 C490002C */  lwc1    $f16, 0x002C($a0)          ## 0000002C
/* 00048 80A9AFE8 24A407C0 */  addiu   $a0, $a1, 0x07C0           ## $a0 = 000007C0
/* 0004C 80A9AFEC 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFF8
/* 00050 80A9AFF0 AFA70040 */  sw      $a3, 0x0040($sp)           
/* 00054 80A9AFF4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00058 80A9AFF8 0C00F269 */  jal     func_8003C9A4              
/* 0005C 80A9AFFC E7B00034 */  swc1    $f16, 0x0034($sp)          
/* 00060 80A9B000 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 00064 80A9B004 44819000 */  mtc1    $at, $f18                  ## $f18 = -32000.00
/* 00068 80A9B008 8FA70040 */  lw      $a3, 0x0040($sp)           
/* 0006C 80A9B00C C7A40048 */  lwc1    $f4, 0x0048($sp)           
/* 00070 80A9B010 4600903C */  c.lt.s  $f18, $f0                  
/* 00074 80A9B014 3C0480AA */  lui     $a0, %hi(D_80A9C2A0)       ## $a0 = 80AA0000
/* 00078 80A9B018 45000008 */  bc1f    .L80A9B03C                 
/* 0007C 80A9B01C 00000000 */  nop
/* 00080 80A9B020 46040180 */  add.s   $f6, $f0, $f4              
/* 00084 80A9B024 24E40008 */  addiu   $a0, $a3, 0x0008           ## $a0 = 00000008
/* 00088 80A9B028 24E50024 */  addiu   $a1, $a3, 0x0024           ## $a1 = 00000024
/* 0008C 80A9B02C 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 00090 80A9B030 E4E60028 */  swc1    $f6, 0x0028($a3)           ## 00000028
/* 00094 80A9B034 1000000D */  beq     $zero, $zero, .L80A9B06C   
/* 00098 80A9B038 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A9B03C:
/* 0009C 80A9B03C 0C00084C */  jal     osSyncPrintf
              
/* 000A0 80A9B040 2484C2A0 */  addiu   $a0, $a0, %lo(D_80A9C2A0)  ## $a0 = FFFFC2A0
/* 000A4 80A9B044 3C0480AA */  lui     $a0, %hi(D_80A9C2AC)       ## $a0 = 80AA0000
/* 000A8 80A9B048 3C0580AA */  lui     $a1, %hi(D_80A9C2C4)       ## $a1 = 80AA0000
/* 000AC 80A9B04C 24A5C2C4 */  addiu   $a1, $a1, %lo(D_80A9C2C4)  ## $a1 = 80A9C2C4
/* 000B0 80A9B050 2484C2AC */  addiu   $a0, $a0, %lo(D_80A9C2AC)  ## $a0 = 80A9C2AC
/* 000B4 80A9B054 0C00084C */  jal     osSyncPrintf
              
/* 000B8 80A9B058 24060143 */  addiu   $a2, $zero, 0x0143         ## $a2 = 00000143
/* 000BC 80A9B05C 3C0480AA */  lui     $a0, %hi(D_80A9C2D4)       ## $a0 = 80AA0000
/* 000C0 80A9B060 0C00084C */  jal     osSyncPrintf
              
/* 000C4 80A9B064 2484C2D4 */  addiu   $a0, $a0, %lo(D_80A9C2D4)  ## $a0 = 80A9C2D4
/* 000C8 80A9B068 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A9B06C:
/* 000CC 80A9B06C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000D0 80A9B070 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 000D4 80A9B074 03E00008 */  jr      $ra                        
/* 000D8 80A9B078 00000000 */  nop


