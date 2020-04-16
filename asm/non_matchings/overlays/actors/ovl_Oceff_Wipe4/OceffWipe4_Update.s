glabel OceffWipe4_Update
/* 00094 80BACCA4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00098 80BACCA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0009C 80BACCAC 84AE07A0 */  lh      $t6, 0x07A0($a1)           ## 000007A0
/* 000A0 80BACCB0 8482014C */  lh      $v0, 0x014C($a0)           ## 0000014C
/* 000A4 80BACCB4 000E7880 */  sll     $t7, $t6,  2               
/* 000A8 80BACCB8 00AFC021 */  addu    $t8, $a1, $t7              
/* 000AC 80BACCBC 8F190790 */  lw      $t9, 0x0790($t8)           ## 00000790
/* 000B0 80BACCC0 28410032 */  slti    $at, $v0, 0x0032           
/* 000B4 80BACCC4 244A0001 */  addiu   $t2, $v0, 0x0001           ## $t2 = 00000001
/* 000B8 80BACCC8 8F29005C */  lw      $t1, 0x005C($t9)           ## 0000005C
/* 000BC 80BACCCC AC890024 */  sw      $t1, 0x0024($a0)           ## 00000024
/* 000C0 80BACCD0 8F280060 */  lw      $t0, 0x0060($t9)           ## 00000060
/* 000C4 80BACCD4 AC880028 */  sw      $t0, 0x0028($a0)           ## 00000028
/* 000C8 80BACCD8 8F290064 */  lw      $t1, 0x0064($t9)           ## 00000064
/* 000CC 80BACCDC 10200003 */  beq     $at, $zero, .L80BACCEC     
/* 000D0 80BACCE0 AC89002C */  sw      $t1, 0x002C($a0)           ## 0000002C
/* 000D4 80BACCE4 10000003 */  beq     $zero, $zero, .L80BACCF4   
/* 000D8 80BACCE8 A48A014C */  sh      $t2, 0x014C($a0)           ## 0000014C
.L80BACCEC:
/* 000DC 80BACCEC 0C00B55C */  jal     Actor_Kill
              
/* 000E0 80BACCF0 00000000 */  nop
.L80BACCF4:
/* 000E4 80BACCF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000E8 80BACCF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000EC 80BACCFC 03E00008 */  jr      $ra                        
/* 000F0 80BACD00 00000000 */  nop
