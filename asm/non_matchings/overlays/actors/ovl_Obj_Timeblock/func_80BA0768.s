.rdata
glabel D_80BA0BCC
    .asciz "◯◯◯◯ Time Block 注目カメラ (frame counter  %d)\n"
    .balign 4

.text
glabel func_80BA0768
/* 007C8 80BA0768 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 007CC 80BA076C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 007D0 80BA0770 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007D4 80BA0774 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007D8 80BA0778 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 007DC 80BA077C 8E190168 */  lw      $t9, 0x0168($s0)           ## 00000168
/* 007E0 80BA0780 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 007E4 80BA0784 0320F809 */  jalr    $ra, $t9                   
/* 007E8 80BA0788 00000000 */  nop
/* 007EC 80BA078C 50400016 */  beql    $v0, $zero, .L80BA07E8     
/* 007F0 80BA0790 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007F4 80BA0794 860E016C */  lh      $t6, 0x016C($s0)           ## 0000016C
/* 007F8 80BA0798 240F000C */  addiu   $t7, $zero, 0x000C         ## $t7 = 0000000C
/* 007FC 80BA079C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00800 80BA07A0 1DC00010 */  bgtz    $t6, .L80BA07E4            
/* 00804 80BA07A4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00808 80BA07A8 0C2E8016 */  jal     func_80BA0058              
/* 0080C 80BA07AC A60F0170 */  sh      $t7, 0x0170($s0)           ## 00000170
/* 00810 80BA07B0 241800A0 */  addiu   $t8, $zero, 0x00A0         ## $t8 = 000000A0
/* 00814 80BA07B4 A618016C */  sh      $t8, 0x016C($s0)           ## 0000016C
/* 00818 80BA07B8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0081C 80BA07BC 0C020120 */  jal     func_80080480              
/* 00820 80BA07C0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00824 80BA07C4 3C0480BA */  lui     $a0, %hi(D_80BA0BCC)       ## $a0 = 80BA0000
/* 00828 80BA07C8 24840BCC */  addiu   $a0, $a0, %lo(D_80BA0BCC)  ## $a0 = 80BA0BCC
/* 0082C 80BA07CC 0C00084C */  jal     osSyncPrintf
              
/* 00830 80BA07D0 8E25009C */  lw      $a1, 0x009C($s1)           ## 0000009C
/* 00834 80BA07D4 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00838 80BA07D8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0083C 80BA07DC 0C2E8033 */  jal     func_80BA00CC              
/* 00840 80BA07E0 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
.L80BA07E4:
/* 00844 80BA07E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80BA07E8:
/* 00848 80BA07E8 0C2E81AB */  jal     func_80BA06AC              
/* 0084C 80BA07EC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00850 80BA07F0 8608016C */  lh      $t0, 0x016C($s0)           ## 0000016C
/* 00854 80BA07F4 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00858 80BA07F8 55010004 */  bnel    $t0, $at, .L80BA080C       
/* 0085C 80BA07FC 92090178 */  lbu     $t1, 0x0178($s0)           ## 00000178
/* 00860 80BA0800 0C01E221 */  jal     func_80078884              
/* 00864 80BA0804 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 00868 80BA0808 92090178 */  lbu     $t1, 0x0178($s0)           ## 00000178
.L80BA080C:
/* 0086C 80BA080C 55200007 */  bnel    $t1, $zero, .L80BA082C     
/* 00870 80BA0810 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00874 80BA0814 860A016C */  lh      $t2, 0x016C($s0)           ## 0000016C
/* 00878 80BA0818 5D400004 */  bgtzl   $t2, .L80BA082C            
/* 0087C 80BA081C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00880 80BA0820 0C2E820F */  jal     func_80BA083C              
/* 00884 80BA0824 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00888 80BA0828 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80BA082C:
/* 0088C 80BA082C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00890 80BA0830 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00894 80BA0834 03E00008 */  jr      $ra                        
/* 00898 80BA0838 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
