glabel BgPoEvent_Update
/* 017A8 808A79B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 017AC 808A79BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 017B0 808A79C0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 017B4 808A79C4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 017B8 808A79C8 8C990164 */  lw      $t9, 0x0164($a0)           ## 00000164
/* 017BC 808A79CC 0320F809 */  jalr    $ra, $t9                   
/* 017C0 808A79D0 00000000 */  nop
/* 017C4 808A79D4 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 017C8 808A79D8 3C0E808A */  lui     $t6, %hi(func_808A72AC)    ## $t6 = 808A0000
/* 017CC 808A79DC 25CE72AC */  addiu   $t6, $t6, %lo(func_808A72AC) ## $t6 = 808A72AC
/* 017D0 808A79E0 8CE20164 */  lw      $v0, 0x0164($a3)           ## 00000164
/* 017D4 808A79E4 3C0F808A */  lui     $t7, %hi(func_808A75B8)    ## $t7 = 808A0000
/* 017D8 808A79E8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 017DC 808A79EC 11C20002 */  beq     $t6, $v0, .L808A79F8       
/* 017E0 808A79F0 25EF75B8 */  addiu   $t7, $t7, %lo(func_808A75B8) ## $t7 = 808A75B8
/* 017E4 808A79F4 15E20005 */  bne     $t7, $v0, .L808A7A0C       
.L808A79F8:
/* 017E8 808A79F8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 017EC 808A79FC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 017F0 808A7A00 00812821 */  addu    $a1, $a0, $at              
/* 017F4 808A7A04 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 017F8 808A7A08 24E60170 */  addiu   $a2, $a3, 0x0170           ## $a2 = 00000170
.L808A7A0C:
/* 017FC 808A7A0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01800 808A7A10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01804 808A7A14 03E00008 */  jr      $ra                        
/* 01808 808A7A18 00000000 */  nop


