glabel OceffWipe2_Update
/* 000BC 80BA9C6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000C0 80BA9C70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000C4 80BA9C74 84AE07A0 */  lh      $t6, 0x07A0($a1)           ## 000007A0
/* 000C8 80BA9C78 8482014C */  lh      $v0, 0x014C($a0)           ## 0000014C
/* 000CC 80BA9C7C 000E7880 */  sll     $t7, $t6,  2               
/* 000D0 80BA9C80 00AFC021 */  addu    $t8, $a1, $t7              
/* 000D4 80BA9C84 8F190790 */  lw      $t9, 0x0790($t8)           ## 00000790
/* 000D8 80BA9C88 28410064 */  slti    $at, $v0, 0x0064           
/* 000DC 80BA9C8C 244A0001 */  addiu   $t2, $v0, 0x0001           ## $t2 = 00000001
/* 000E0 80BA9C90 8F29005C */  lw      $t1, 0x005C($t9)           ## 0000005C
/* 000E4 80BA9C94 AC890024 */  sw      $t1, 0x0024($a0)           ## 00000024
/* 000E8 80BA9C98 8F280060 */  lw      $t0, 0x0060($t9)           ## 00000060
/* 000EC 80BA9C9C AC880028 */  sw      $t0, 0x0028($a0)           ## 00000028
/* 000F0 80BA9CA0 8F290064 */  lw      $t1, 0x0064($t9)           ## 00000064
/* 000F4 80BA9CA4 10200003 */  beq     $at, $zero, .L80BA9CB4     
/* 000F8 80BA9CA8 AC89002C */  sw      $t1, 0x002C($a0)           ## 0000002C
/* 000FC 80BA9CAC 10000003 */  beq     $zero, $zero, .L80BA9CBC   
/* 00100 80BA9CB0 A48A014C */  sh      $t2, 0x014C($a0)           ## 0000014C
.L80BA9CB4:
/* 00104 80BA9CB4 0C00B55C */  jal     Actor_Kill
              
/* 00108 80BA9CB8 00000000 */  nop
.L80BA9CBC:
/* 0010C 80BA9CBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00110 80BA9CC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00114 80BA9CC4 03E00008 */  jr      $ra                        
/* 00118 80BA9CC8 00000000 */  nop


