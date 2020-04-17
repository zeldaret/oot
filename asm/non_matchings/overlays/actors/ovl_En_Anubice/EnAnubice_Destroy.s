glabel EnAnubice_Destroy
/* 002B4 809B13D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002B8 809B13D8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 002BC 809B13DC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002C0 809B13E0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002C4 809B13E4 24C502C8 */  addiu   $a1, $a2, 0x02C8           ## $a1 = 000002C8
/* 002C8 809B13E8 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 002CC 809B13EC AFA60018 */  sw      $a2, 0x0018($sp)           
/* 002D0 809B13F0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 002D4 809B13F4 84CE001C */  lh      $t6, 0x001C($a2)           ## 0000001C
/* 002D8 809B13F8 51C00009 */  beql    $t6, $zero, .L809B1420     
/* 002DC 809B13FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002E0 809B1400 8CC30118 */  lw      $v1, 0x0118($a2)           ## 00000118
/* 002E4 809B1404 50600006 */  beql    $v1, $zero, .L809B1420     
/* 002E8 809B1408 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002EC 809B140C 8C6F0130 */  lw      $t7, 0x0130($v1)           ## 00000130
/* 002F0 809B1410 51E00003 */  beql    $t7, $zero, .L809B1420     
/* 002F4 809B1414 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002F8 809B1418 AC600150 */  sw      $zero, 0x0150($v1)         ## 00000150
/* 002FC 809B141C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809B1420:
/* 00300 809B1420 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00304 809B1424 03E00008 */  jr      $ra                        
/* 00308 809B1428 00000000 */  nop
