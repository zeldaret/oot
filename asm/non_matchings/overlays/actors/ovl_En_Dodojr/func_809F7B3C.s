glabel func_809F7B3C
/* 0177C 809F7B3C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01780 809F7B40 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 01784 809F7B44 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 01788 809F7B48 848201FC */  lh      $v0, 0x01FC($a0)           ## 000001FC
/* 0178C 809F7B4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01790 809F7B50 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 01794 809F7B54 5040000D */  beql    $v0, $zero, .L809F7B8C     
/* 01798 809F7B58 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 0179C 809F7B5C 908E0114 */  lbu     $t6, 0x0114($a0)           ## 00000114
/* 017A0 809F7B60 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 017A4 809F7B64 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 017A8 809F7B68 15C00019 */  bne     $t6, $zero, .L809F7BD0     
/* 017AC 809F7B6C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 017B0 809F7B70 0C00D09B */  jal     func_8003426C              
/* 017B4 809F7B74 AFA20010 */  sw      $v0, 0x0010($sp)           
/* 017B8 809F7B78 860F01FC */  lh      $t7, 0x01FC($s0)           ## 000001FC
/* 017BC 809F7B7C 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 017C0 809F7B80 10000013 */  beq     $zero, $zero, .L809F7BD0   
/* 017C4 809F7B84 A61801FC */  sh      $t8, 0x01FC($s0)           ## 000001FC
/* 017C8 809F7B88 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
.L809F7B8C:
/* 017CC 809F7B8C 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 017D0 809F7B90 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 017D4 809F7B94 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 017D8 809F7B98 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 017DC 809F7B9C AFA00024 */  sw      $zero, 0x0024($sp)         
/* 017E0 809F7BA0 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 017E4 809F7BA4 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 017E8 809F7BA8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 017EC 809F7BAC 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 017F0 809F7BB0 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 017F4 809F7BB4 10400002 */  beq     $v0, $zero, .L809F7BC0     
/* 017F8 809F7BB8 24190008 */  addiu   $t9, $zero, 0x0008         ## $t9 = 00000008
/* 017FC 809F7BBC A44001F8 */  sh      $zero, 0x01F8($v0)         ## 000001F8
.L809F7BC0:
/* 01800 809F7BC0 3C08809F */  lui     $t0, %hi(func_809F7BE4)    ## $t0 = 809F0000
/* 01804 809F7BC4 25087BE4 */  addiu   $t0, $t0, %lo(func_809F7BE4) ## $t0 = 809F7BE4
/* 01808 809F7BC8 A6190202 */  sh      $t9, 0x0202($s0)           ## 00000202
/* 0180C 809F7BCC AE080190 */  sw      $t0, 0x0190($s0)           ## 00000190
.L809F7BD0:
/* 01810 809F7BD0 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01814 809F7BD4 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01818 809F7BD8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0181C 809F7BDC 03E00008 */  jr      $ra                        
/* 01820 809F7BE0 00000000 */  nop
