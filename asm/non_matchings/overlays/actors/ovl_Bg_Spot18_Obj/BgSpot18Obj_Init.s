.rdata
glabel D_808B925C
    .asciz "Spot18 Object [arg_data : 0x%04x]\n"
    .balign 4

.text
glabel BgSpot18Obj_Init
/* 0040C 808B8D1C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00410 808B8D20 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00414 808B8D24 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00418 808B8D28 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0041C 808B8D2C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00420 808B8D30 3C04808C */  lui     $a0, %hi(D_808B925C)       ## $a0 = 808C0000
/* 00424 808B8D34 2484925C */  addiu   $a0, $a0, %lo(D_808B925C)  ## $a0 = 808B925C
/* 00428 808B8D38 0C00084C */  jal     osSyncPrintf
              
/* 0042C 808B8D3C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00430 808B8D40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00434 808B8D44 0C22E2CE */  jal     func_808B8B38              
/* 00438 808B8D48 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0043C 808B8D4C 14400005 */  bne     $v0, $zero, .L808B8D64     
/* 00440 808B8D50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00444 808B8D54 0C00B55C */  jal     Actor_Kill
              
/* 00448 808B8D58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0044C 808B8D5C 10000008 */  beq     $zero, $zero, .L808B8D80   
/* 00450 808B8D60 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B8D64:
/* 00454 808B8D64 0C22E332 */  jal     func_808B8CC8              
/* 00458 808B8D68 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0045C 808B8D6C 54400004 */  bnel    $v0, $zero, .L808B8D80     
/* 00460 808B8D70 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00464 808B8D74 0C00B55C */  jal     Actor_Kill
              
/* 00468 808B8D78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0046C 808B8D7C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808B8D80:
/* 00470 808B8D80 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00474 808B8D84 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00478 808B8D88 03E00008 */  jr      $ra                        
/* 0047C 808B8D8C 00000000 */  nop
