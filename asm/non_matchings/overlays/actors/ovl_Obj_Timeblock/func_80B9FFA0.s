glabel func_80B9FFA0
/* 00000 80B9FFA0 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00004 80B9FFA4 00027283 */  sra     $t6, $v0, 10               
/* 00008 80B9FFA8 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 0000C 80B9FFAC 15E00021 */  bne     $t7, $zero, .L80BA0034     
/* 00010 80B9FFB0 000263C3 */  sra     $t4, $v0, 15               
/* 00014 80B9FFB4 90830177 */  lbu     $v1, 0x0177($a0)           ## 00000177
/* 00018 80B9FFB8 0002C3C3 */  sra     $t8, $v0, 15               
/* 0001C 80B9FFBC 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 00020 80B9FFC0 14600003 */  bne     $v1, $zero, .L80B9FFD0     
/* 00024 80B9FFC4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00028 80B9FFC8 03E00008 */  jr      $ra                        
/* 0002C 80B9FFCC 90820175 */  lbu     $v0, 0x0175($a0)           ## 00000175
.L80B9FFD0:
/* 00030 80B9FFD0 13200003 */  beq     $t9, $zero, .L80B9FFE0     
/* 00034 80B9FFD4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00038 80B9FFD8 10000001 */  beq     $zero, $zero, .L80B9FFE0   
/* 0003C 80B9FFDC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
.L80B9FFE0:
/* 00040 80B9FFE0 14610004 */  bne     $v1, $at, .L80B9FFF4       
/* 00044 80B9FFE4 3C098016 */  lui     $t1, %hi(gSaveContext+4)
/* 00048 80B9FFE8 90880174 */  lbu     $t0, 0x0174($a0)           ## 00000174
/* 0004C 80B9FFEC 03E00008 */  jr      $ra                        
/* 00050 80B9FFF0 01051026 */  xor     $v0, $t0, $a1              
.L80B9FFF4:
/* 00054 80B9FFF4 8D29E664 */  lw      $t1, %lo(gSaveContext+4)($t1)
/* 00058 80B9FFF8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0005C 80B9FFFC 24030011 */  addiu   $v1, $zero, 0x0011         ## $v1 = 00000011
/* 00060 80BA0000 11200003 */  beq     $t1, $zero, .L80BA0010     
/* 00064 80BA0004 00000000 */  nop
/* 00068 80BA0008 10000001 */  beq     $zero, $zero, .L80BA0010   
/* 0006C 80BA000C 24030005 */  addiu   $v1, $zero, 0x0005         ## $v1 = 00000005
.L80BA0010:
/* 00070 80BA0010 54610004 */  bnel    $v1, $at, .L80BA0024       
/* 00074 80BA0014 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00078 80BA0018 10000002 */  beq     $zero, $zero, .L80BA0024   
/* 0007C 80BA001C 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00080 80BA0020 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80BA0024:
/* 00084 80BA0024 908A0174 */  lbu     $t2, 0x0174($a0)           ## 00000174
/* 00088 80BA0028 01455826 */  xor     $t3, $t2, $a1              
/* 0008C 80BA002C 03E00008 */  jr      $ra                        
/* 00090 80BA0030 01631026 */  xor     $v0, $t3, $v1              
.L80BA0034:
/* 00094 80BA0034 318D0001 */  andi    $t5, $t4, 0x0001           ## $t5 = 00000000
/* 00098 80BA0038 11A00003 */  beq     $t5, $zero, .L80BA0048     
/* 0009C 80BA003C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 000A0 80BA0040 10000001 */  beq     $zero, $zero, .L80BA0048   
/* 000A4 80BA0044 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80BA0048:
/* 000A8 80BA0048 908E0174 */  lbu     $t6, 0x0174($a0)           ## 00000174
/* 000AC 80BA004C 006E1026 */  xor     $v0, $v1, $t6              
/* 000B0 80BA0050 03E00008 */  jr      $ra                        
/* 000B4 80BA0054 00000000 */  nop
