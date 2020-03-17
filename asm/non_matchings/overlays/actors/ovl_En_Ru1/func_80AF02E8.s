glabel func_80AF02E8
/* 056D8 80AF02E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 056DC 80AF02EC 8FAE002C */  lw      $t6, 0x002C($sp)           
/* 056E0 80AF02F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 056E4 80AF02F4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 056E8 80AF02F8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 056EC 80AF02FC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 056F0 80AF0300 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 056F4 80AF0304 8DC20290 */  lw      $v0, 0x0290($t6)           ## 00000290
/* 056F8 80AF0308 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 056FC 80AF030C 3C0480AF */  lui     $a0, %hi(D_80AF1B18)       ## $a0 = 80AF0000
/* 05700 80AF0310 0440000A */  bltz    $v0, .L80AF033C            
/* 05704 80AF0314 00000000 */  nop
/* 05708 80AF0318 1C400008 */  bgtz    $v0, .L80AF033C            
/* 0570C 80AF031C 00027880 */  sll     $t7, $v0,  2               
/* 05710 80AF0320 3C0380AF */  lui     $v1, %hi(D_80AF19F4)       ## $v1 = 80AF0000
/* 05714 80AF0324 006F1821 */  addu    $v1, $v1, $t7              
/* 05718 80AF0328 8C6319F4 */  lw      $v1, %lo(D_80AF19F4)($v1)  
/* 0571C 80AF032C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 05720 80AF0330 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 05724 80AF0334 14600005 */  bne     $v1, $zero, .L80AF034C     
/* 05728 80AF0338 00000000 */  nop
.L80AF033C:
/* 0572C 80AF033C 0C00084C */  jal     osSyncPrintf
              
/* 05730 80AF0340 24841B18 */  addiu   $a0, $a0, %lo(D_80AF1B18)  ## $a0 = 80AF1B18
/* 05734 80AF0344 10000004 */  beq     $zero, $zero, .L80AF0358   
/* 05738 80AF0348 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF034C:
/* 0573C 80AF034C 0060F809 */  jalr    $ra, $v1                   
/* 05740 80AF0350 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 05744 80AF0354 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF0358:
/* 05748 80AF0358 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0574C 80AF035C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 05750 80AF0360 03E00008 */  jr      $ra                        
/* 05754 80AF0364 00000000 */  nop


