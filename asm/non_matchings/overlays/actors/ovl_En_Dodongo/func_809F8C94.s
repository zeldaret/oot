glabel func_809F8C94
/* 00A44 809F8C94 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A48 809F8C98 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00A4C 809F8C9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A50 809F8CA0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00A54 809F8CA4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00A58 809F8CA8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A5C 809F8CAC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00A60 809F8CB0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00A64 809F8CB4 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00A68 809F8CB8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00A6C 809F8CBC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00A70 809F8CC0 84C3030C */  lh      $v1, 0x030C($a2)           ## 0000030C
/* 00A74 809F8CC4 14600003 */  bne     $v1, $zero, .L809F8CD4     
/* 00A78 809F8CC8 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 00A7C 809F8CCC 10000003 */  beq     $zero, $zero, .L809F8CDC   
/* 00A80 809F8CD0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809F8CD4:
/* 00A84 809F8CD4 A4CE030C */  sh      $t6, 0x030C($a2)           ## 0000030C
/* 00A88 809F8CD8 84C2030C */  lh      $v0, 0x030C($a2)           ## 0000030C
.L809F8CDC:
/* 00A8C 809F8CDC 54400008 */  bnel    $v0, $zero, .L809F8D00     
/* 00A90 809F8CE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A94 809F8CE4 0C0295B2 */  jal     func_800A56C8              
/* 00A98 809F8CE8 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00A9C 809F8CEC 10400003 */  beq     $v0, $zero, .L809F8CFC     
/* 00AA0 809F8CF0 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00AA4 809F8CF4 0C27E28D */  jal     func_809F8A34              
/* 00AA8 809F8CF8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
.L809F8CFC:
/* 00AAC 809F8CFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809F8D00:
/* 00AB0 809F8D00 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00AB4 809F8D04 03E00008 */  jr      $ra                        
/* 00AB8 809F8D08 00000000 */  nop


