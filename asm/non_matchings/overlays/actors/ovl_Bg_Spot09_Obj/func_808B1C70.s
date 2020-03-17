glabel func_808B1C70
/* 00190 808B1C70 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00194 808B1C74 AFB30020 */  sw      $s3, 0x0020($sp)           
/* 00198 808B1C78 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0019C 808B1C7C AFB2001C */  sw      $s2, 0x001C($sp)           
/* 001A0 808B1C80 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 001A4 808B1C84 3C10808B */  lui     $s0, %hi(D_808B1FA4)       ## $s0 = 808B0000
/* 001A8 808B1C88 3C13808B */  lui     $s3, %hi(D_808B1FB0)       ## $s3 = 808B0000
/* 001AC 808B1C8C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 001B0 808B1C90 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 001B4 808B1C94 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 001B8 808B1C98 26731FB0 */  addiu   $s3, $s3, %lo(D_808B1FB0)  ## $s3 = 808B1FB0
/* 001BC 808B1C9C 26101FA4 */  addiu   $s0, $s0, %lo(D_808B1FA4)  ## $s0 = 808B1FA4
/* 001C0 808B1CA0 8E190000 */  lw      $t9, 0x0000($s0)           ## 808B1FA4
.L808B1CA4:
/* 001C4 808B1CA4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001C8 808B1CA8 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 001CC 808B1CAC 0320F809 */  jalr    $ra, $t9                   
/* 001D0 808B1CB0 00000000 */  nop
/* 001D4 808B1CB4 14400003 */  bne     $v0, $zero, .L808B1CC4     
/* 001D8 808B1CB8 26100004 */  addiu   $s0, $s0, 0x0004           ## $s0 = 808B1FA8
/* 001DC 808B1CBC 10000004 */  beq     $zero, $zero, .L808B1CD0   
/* 001E0 808B1CC0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808B1CC4:
/* 001E4 808B1CC4 5613FFF7 */  bnel    $s0, $s3, .L808B1CA4       
/* 001E8 808B1CC8 8E190000 */  lw      $t9, 0x0000($s0)           ## 808B1FA8
/* 001EC 808B1CCC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808B1CD0:
/* 001F0 808B1CD0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 001F4 808B1CD4 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 001F8 808B1CD8 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 001FC 808B1CDC 8FB2001C */  lw      $s2, 0x001C($sp)           
/* 00200 808B1CE0 8FB30020 */  lw      $s3, 0x0020($sp)           
/* 00204 808B1CE4 03E00008 */  jr      $ra                        
/* 00208 808B1CE8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


