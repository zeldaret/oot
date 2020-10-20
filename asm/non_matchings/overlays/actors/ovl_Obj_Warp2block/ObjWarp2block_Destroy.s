glabel ObjWarp2block_Destroy
/* 00698 80BA2488 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0069C 80BA248C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006A0 80BA2490 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 006A4 80BA2494 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 006A8 80BA2498 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 006AC 80BA249C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 006B0 80BA24A0 000E7BC3 */  sra     $t7, $t6, 15               
/* 006B4 80BA24A4 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 006B8 80BA24A8 13000003 */  beq     $t8, $zero, .L80BA24B8     
/* 006BC 80BA24AC 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 006C0 80BA24B0 0C00FB56 */  jal     DynaPoly_DeleteBgActor
              ## DynaPoly_DeleteBgActor
/* 006C4 80BA24B4 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
.L80BA24B8:
/* 006C8 80BA24B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006CC 80BA24BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006D0 80BA24C0 03E00008 */  jr      $ra                        
/* 006D4 80BA24C4 00000000 */  nop
