glabel func_809DF6BC
/* 008BC 809DF6BC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008C0 809DF6C0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008C4 809DF6C4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 008C8 809DF6C8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 008CC 809DF6CC 0C042F6F */  jal     func_8010BDBC              
/* 008D0 809DF6D0 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 008D4 809DF6D4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 008D8 809DF6D8 54410012 */  bnel    $v0, $at, .L809DF724       
/* 008DC 809DF6DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008E0 809DF6E0 0C041AF2 */  jal     func_80106BC8              
/* 008E4 809DF6E4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 008E8 809DF6E8 5040000E */  beql    $v0, $zero, .L809DF724     
/* 008EC 809DF6EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008F0 809DF6F0 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 008F4 809DF6F4 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 008F8 809DF6F8 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 008FC 809DF6FC 8C4E0004 */  lw      $t6, 0x0004($v0)           ## 00000004
/* 00900 809DF700 01C17824 */  and     $t7, $t6, $at              
/* 00904 809DF704 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 00908 809DF708 0C041B33 */  jal     func_80106CCC              
/* 0090C 809DF70C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00910 809DF710 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 00914 809DF714 3C18809E */  lui     $t8, %hi(func_809DF96C)    ## $t8 = 809E0000
/* 00918 809DF718 2718F96C */  addiu   $t8, $t8, %lo(func_809DF96C) ## $t8 = 809DF96C
/* 0091C 809DF71C AF38027C */  sw      $t8, 0x027C($t9)           ## 0000027C
/* 00920 809DF720 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809DF724:
/* 00924 809DF724 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00928 809DF728 03E00008 */  jr      $ra                        
/* 0092C 809DF72C 00000000 */  nop
