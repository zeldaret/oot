glabel func_80A6BBAC
/* 0095C 80A6BBAC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00960 80A6BBB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00964 80A6BBB4 8C8E0150 */  lw      $t6, 0x0150($a0)           ## 00000150
/* 00968 80A6BBB8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0096C 80A6BBBC AC80014C */  sw      $zero, 0x014C($a0)         ## 0000014C
/* 00970 80A6BBC0 25C20001 */  addiu   $v0, $t6, 0x0001           ## $v0 = 00000001
/* 00974 80A6BBC4 28410009 */  slti    $at, $v0, 0x0009           
/* 00978 80A6BBC8 14200003 */  bne     $at, $zero, .L80A6BBD8     
/* 0097C 80A6BBCC AC820150 */  sw      $v0, 0x0150($a0)           ## 00000150
/* 00980 80A6BBD0 AC800150 */  sw      $zero, 0x0150($a0)         ## 00000150
/* 00984 80A6BBD4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A6BBD8:
/* 00988 80A6BBD8 0002C080 */  sll     $t8, $v0,  2               
/* 0098C 80A6BBDC 3C0580A7 */  lui     $a1, %hi(D_80A6D370)       ## $a1 = 80A70000
/* 00990 80A6BBE0 00B82821 */  addu    $a1, $a1, $t8              
/* 00994 80A6BBE4 8CA5D370 */  lw      $a1, %lo(D_80A6D370)($a1)  
/* 00998 80A6BBE8 0C02947A */  jal     SkelAnimeChangeAnimationDefaultStop              
/* 0099C 80A6BBEC 24C401A0 */  addiu   $a0, $a2, 0x01A0           ## $a0 = 000001A0
/* 009A0 80A6BBF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009A4 80A6BBF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 009A8 80A6BBF8 03E00008 */  jr      $ra                        
/* 009AC 80A6BBFC 00000000 */  nop


