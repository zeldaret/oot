glabel EnAni_Update
/* 007A8 809B0B18 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 007AC 809B0B1C AFB00024 */  sw      $s0, 0x0024($sp)           
/* 007B0 809B0B20 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007B4 809B0B24 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 007B8 809B0B28 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 007BC 809B0B2C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 007C0 809B0B30 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 007C4 809B0B34 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000014C
/* 007C8 809B0B38 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 007CC 809B0B3C AFA60034 */  sw      $a2, 0x0034($sp)           
/* 007D0 809B0B40 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 007D4 809B0B44 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 007D8 809B0B48 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 007DC 809B0B4C 02212821 */  addu    $a1, $s1, $at              
/* 007E0 809B0B50 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 007E4 809B0B54 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 007E8 809B0B58 0C00B638 */  jal     Actor_MoveForward
              
/* 007EC 809B0B5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007F0 809B0B60 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 007F4 809B0B64 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 007F8 809B0B68 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 007FC 809B0B6C 44060000 */  mfc1    $a2, $f0                   
/* 00800 809B0B70 44070000 */  mfc1    $a3, $f0                   
/* 00804 809B0B74 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00808 809B0B78 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0080C 809B0B7C 0C00B92D */  jal     func_8002E4B4              
/* 00810 809B0B80 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00814 809B0B84 922F1D6C */  lbu     $t7, 0x1D6C($s1)           ## 00001D6C
/* 00818 809B0B88 11E0002C */  beq     $t7, $zero, .L809B0C3C     
/* 0081C 809B0B8C 00000000 */  nop
/* 00820 809B0B90 8E381D8C */  lw      $t8, 0x1D8C($s1)           ## 00001D8C
/* 00824 809B0B94 13000029 */  beq     $t8, $zero, .L809B0C3C     
/* 00828 809B0B98 00000000 */  nop
/* 0082C 809B0B9C 961902AA */  lhu     $t9, 0x02AA($s0)           ## 000002AA
/* 00830 809B0BA0 2F210005 */  sltiu   $at, $t9, 0x0005           
/* 00834 809B0BA4 1020001D */  beq     $at, $zero, .L809B0C1C     
/* 00838 809B0BA8 0019C880 */  sll     $t9, $t9,  2               
/* 0083C 809B0BAC 3C01809B */  lui     $at, %hi(jtbl_809B0FB0)       ## $at = 809B0000
/* 00840 809B0BB0 00390821 */  addu    $at, $at, $t9              
/* 00844 809B0BB4 8C390FB0 */  lw      $t9, %lo(jtbl_809B0FB0)($at)  
/* 00848 809B0BB8 03200008 */  jr      $t9                        
/* 0084C 809B0BBC 00000000 */  nop
glabel L809B0BC0
/* 00850 809B0BC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00854 809B0BC4 0C26C29B */  jal     func_809B0A6C              
/* 00858 809B0BC8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0085C 809B0BCC 10000014 */  beq     $zero, $zero, .L809B0C20   
/* 00860 809B0BD0 96281D74 */  lhu     $t0, 0x1D74($s1)           ## 00001D74
glabel L809B0BD4
/* 00864 809B0BD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00868 809B0BD8 0C26C28A */  jal     func_809B0A28              
/* 0086C 809B0BDC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00870 809B0BE0 1000000F */  beq     $zero, $zero, .L809B0C20   
/* 00874 809B0BE4 96281D74 */  lhu     $t0, 0x1D74($s1)           ## 00001D74
glabel L809B0BE8
/* 00878 809B0BE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0087C 809B0BEC 0C26C265 */  jal     func_809B0994              
/* 00880 809B0BF0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00884 809B0BF4 1000000A */  beq     $zero, $zero, .L809B0C20   
/* 00888 809B0BF8 96281D74 */  lhu     $t0, 0x1D74($s1)           ## 00001D74
glabel L809B0BFC
/* 0088C 809B0BFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00890 809B0C00 0C26C28A */  jal     func_809B0A28              
/* 00894 809B0C04 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00898 809B0C08 10000005 */  beq     $zero, $zero, .L809B0C20   
/* 0089C 809B0C0C 96281D74 */  lhu     $t0, 0x1D74($s1)           ## 00001D74
glabel L809B0C10
/* 008A0 809B0C10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008A4 809B0C14 0C26C262 */  jal     func_809B0988              
/* 008A8 809B0C18 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L809B0C1C:
/* 008AC 809B0C1C 96281D74 */  lhu     $t0, 0x1D74($s1)           ## 00001D74
.L809B0C20:
/* 008B0 809B0C20 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 008B4 809B0C24 55010012 */  bnel    $t0, $at, .L809B0C70       
/* 008B8 809B0C28 960902A8 */  lhu     $t1, 0x02A8($s0)           ## 000002A8
/* 008BC 809B0C2C 0C01E233 */  jal     func_800788CC              
/* 008C0 809B0C30 24041845 */  addiu   $a0, $zero, 0x1845         ## $a0 = 00001845
/* 008C4 809B0C34 1000000E */  beq     $zero, $zero, .L809B0C70   
/* 008C8 809B0C38 960902A8 */  lhu     $t1, 0x02A8($s0)           ## 000002A8
.L809B0C3C:
/* 008CC 809B0C3C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 008D0 809B0C40 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 008D4 809B0C44 50400005 */  beql    $v0, $zero, .L809B0C5C     
/* 008D8 809B0C48 8E1902B0 */  lw      $t9, 0x02B0($s0)           ## 000002B0
/* 008DC 809B0C4C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 008E0 809B0C50 00000000 */  nop
/* 008E4 809B0C54 E60401B0 */  swc1    $f4, 0x01B0($s0)           ## 000001B0
/* 008E8 809B0C58 8E1902B0 */  lw      $t9, 0x02B0($s0)           ## 000002B0
.L809B0C5C:
/* 008EC 809B0C5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008F0 809B0C60 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 008F4 809B0C64 0320F809 */  jalr    $ra, $t9                   
/* 008F8 809B0C68 00000000 */  nop
/* 008FC 809B0C6C 960902A8 */  lhu     $t1, 0x02A8($s0)           ## 000002A8
.L809B0C70:
/* 00900 809B0C70 2604029C */  addiu   $a0, $s0, 0x029C           ## $a0 = 0000029C
/* 00904 809B0C74 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00908 809B0C78 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 0090C 809B0C7C 11400011 */  beq     $t2, $zero, .L809B0CC4     
/* 00910 809B0C80 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00914 809B0C84 8E0C0038 */  lw      $t4, 0x0038($s0)           ## 00000038
/* 00918 809B0C88 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0091C 809B0C8C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00920 809B0C90 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00924 809B0C94 8E0B003C */  lw      $t3, 0x003C($s0)           ## 0000003C
/* 00928 809B0C98 2606029C */  addiu   $a2, $s0, 0x029C           ## $a2 = 0000029C
/* 0092C 809B0C9C 260702A2 */  addiu   $a3, $s0, 0x02A2           ## $a3 = 000002A2
/* 00930 809B0CA0 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00934 809B0CA4 8E0C0040 */  lw      $t4, 0x0040($s0)           ## 00000040
/* 00938 809B0CA8 0C00E0A4 */  jal     func_80038290              
/* 0093C 809B0CAC AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 00940 809B0CB0 A60002A6 */  sh      $zero, 0x02A6($s0)         ## 000002A6
/* 00944 809B0CB4 860302A6 */  lh      $v1, 0x02A6($s0)           ## 000002A6
/* 00948 809B0CB8 A60302A4 */  sh      $v1, 0x02A4($s0)           ## 000002A4
/* 0094C 809B0CBC 1000001A */  beq     $zero, $zero, .L809B0D28   
/* 00950 809B0CC0 A60302A2 */  sh      $v1, 0x02A2($s0)           ## 000002A2
.L809B0CC4:
/* 00954 809B0CC4 240D0064 */  addiu   $t5, $zero, 0x0064         ## $t5 = 00000064
/* 00958 809B0CC8 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 0095C 809B0CCC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00960 809B0CD0 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00964 809B0CD4 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 00968 809B0CD8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0096C 809B0CDC 2604029E */  addiu   $a0, $s0, 0x029E           ## $a0 = 0000029E
/* 00970 809B0CE0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00974 809B0CE4 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00978 809B0CE8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0097C 809B0CEC 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00980 809B0CF0 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 00984 809B0CF4 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00988 809B0CF8 260402A2 */  addiu   $a0, $s0, 0x02A2           ## $a0 = 000002A2
/* 0098C 809B0CFC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00990 809B0D00 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00994 809B0D04 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00998 809B0D08 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 0099C 809B0D0C 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 009A0 809B0D10 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 009A4 809B0D14 260402A4 */  addiu   $a0, $s0, 0x02A4           ## $a0 = 000002A4
/* 009A8 809B0D18 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 009AC 809B0D1C 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 009B0 809B0D20 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 009B4 809B0D24 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
.L809B0D28:
/* 009B8 809B0D28 860302AE */  lh      $v1, 0x02AE($s0)           ## 000002AE
/* 009BC 809B0D2C 2404003C */  addiu   $a0, $zero, 0x003C         ## $a0 = 0000003C
/* 009C0 809B0D30 14600003 */  bne     $v1, $zero, .L809B0D40     
/* 009C4 809B0D34 2468FFFF */  addiu   $t0, $v1, 0xFFFF           ## $t0 = FFFFFFFF
/* 009C8 809B0D38 10000004 */  beq     $zero, $zero, .L809B0D4C   
/* 009CC 809B0D3C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809B0D40:
/* 009D0 809B0D40 A60802AE */  sh      $t0, 0x02AE($s0)           ## 000002AE
/* 009D4 809B0D44 860302AE */  lh      $v1, 0x02AE($s0)           ## 000002AE
/* 009D8 809B0D48 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L809B0D4C:
/* 009DC 809B0D4C 54400006 */  bnel    $v0, $zero, .L809B0D68     
/* 009E0 809B0D50 A60302AC */  sh      $v1, 0x02AC($s0)           ## 000002AC
/* 009E4 809B0D54 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 009E8 809B0D58 2405003C */  addiu   $a1, $zero, 0x003C         ## $a1 = 0000003C
/* 009EC 809B0D5C A60202AE */  sh      $v0, 0x02AE($s0)           ## 000002AE
/* 009F0 809B0D60 860302AE */  lh      $v1, 0x02AE($s0)           ## 000002AE
/* 009F4 809B0D64 A60302AC */  sh      $v1, 0x02AC($s0)           ## 000002AC
.L809B0D68:
/* 009F8 809B0D68 861902AC */  lh      $t9, 0x02AC($s0)           ## 000002AC
/* 009FC 809B0D6C 2B210003 */  slti    $at, $t9, 0x0003           
/* 00A00 809B0D70 54200003 */  bnel    $at, $zero, .L809B0D80     
/* 00A04 809B0D74 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00A08 809B0D78 A60002AC */  sh      $zero, 0x02AC($s0)         ## 000002AC
/* 00A0C 809B0D7C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809B0D80:
/* 00A10 809B0D80 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 00A14 809B0D84 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 00A18 809B0D88 03E00008 */  jr      $ra                        
/* 00A1C 809B0D8C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000


