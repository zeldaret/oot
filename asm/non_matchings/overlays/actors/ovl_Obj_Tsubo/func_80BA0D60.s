glabel func_80BA0D60
/* 00000 80BA0D60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 80BA0D64 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00008 80BA0D68 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0000C 80BA0D6C 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 00010 80BA0D70 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00014 80BA0D74 3062001F */  andi    $v0, $v1, 0x001F           ## $v0 = 00000000
/* 00018 80BA0D78 00021400 */  sll     $v0, $v0, 16               
/* 0001C 80BA0D7C 00021403 */  sra     $v0, $v0, 16               
/* 00020 80BA0D80 0440000B */  bltz    $v0, .L80BA0DB0            
/* 00024 80BA0D84 2841001A */  slti    $at, $v0, 0x001A           
/* 00028 80BA0D88 10200009 */  beq     $at, $zero, .L80BA0DB0     
/* 0002C 80BA0D8C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00030 80BA0D90 00037243 */  sra     $t6, $v1,  9               
/* 00034 80BA0D94 31CF003F */  andi    $t7, $t6, 0x003F           ## $t7 = 00000000
/* 00038 80BA0D98 000FC200 */  sll     $t8, $t7,  8               
/* 0003C 80BA0D9C 00583025 */  or      $a2, $v0, $t8              ## $a2 = 00000000
/* 00040 80BA0DA0 00063400 */  sll     $a2, $a2, 16               
/* 00044 80BA0DA4 00063403 */  sra     $a2, $a2, 16               
/* 00048 80BA0DA8 0C007D52 */  jal     Item_DropCollectible
              
/* 0004C 80BA0DAC 24E50024 */  addiu   $a1, $a3, 0x0024           ## $a1 = 00000024
.L80BA0DB0:
/* 00050 80BA0DB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00054 80BA0DB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00058 80BA0DB8 03E00008 */  jr      $ra                        
/* 0005C 80BA0DBC 00000000 */  nop
