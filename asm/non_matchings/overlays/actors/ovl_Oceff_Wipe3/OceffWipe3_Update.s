glabel OceffWipe3_Update
/* 000BC 80BAB4AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000C0 80BAB4B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000C4 80BAB4B4 84AE07A0 */  lh      $t6, 0x07A0($a1)           ## 000007A0
/* 000C8 80BAB4B8 8482014C */  lh      $v0, 0x014C($a0)           ## 0000014C
/* 000CC 80BAB4BC 000E7880 */  sll     $t7, $t6,  2               
/* 000D0 80BAB4C0 00AFC021 */  addu    $t8, $a1, $t7              
/* 000D4 80BAB4C4 8F190790 */  lw      $t9, 0x0790($t8)           ## 00000790
/* 000D8 80BAB4C8 28410064 */  slti    $at, $v0, 0x0064           
/* 000DC 80BAB4CC 244A0001 */  addiu   $t2, $v0, 0x0001           ## $t2 = 00000001
/* 000E0 80BAB4D0 8F29005C */  lw      $t1, 0x005C($t9)           ## 0000005C
/* 000E4 80BAB4D4 AC890024 */  sw      $t1, 0x0024($a0)           ## 00000024
/* 000E8 80BAB4D8 8F280060 */  lw      $t0, 0x0060($t9)           ## 00000060
/* 000EC 80BAB4DC AC880028 */  sw      $t0, 0x0028($a0)           ## 00000028
/* 000F0 80BAB4E0 8F290064 */  lw      $t1, 0x0064($t9)           ## 00000064
/* 000F4 80BAB4E4 10200003 */  beq     $at, $zero, .L80BAB4F4     
/* 000F8 80BAB4E8 AC89002C */  sw      $t1, 0x002C($a0)           ## 0000002C
/* 000FC 80BAB4EC 10000003 */  beq     $zero, $zero, .L80BAB4FC   
/* 00100 80BAB4F0 A48A014C */  sh      $t2, 0x014C($a0)           ## 0000014C
.L80BAB4F4:
/* 00104 80BAB4F4 0C00B55C */  jal     Actor_Kill
              
/* 00108 80BAB4F8 00000000 */  nop
.L80BAB4FC:
/* 0010C 80BAB4FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00110 80BAB500 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00114 80BAB504 03E00008 */  jr      $ra                        
/* 00118 80BAB508 00000000 */  nop
