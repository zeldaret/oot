glabel BgSpot15Rrbox_Draw
/* 00BF8 808B4558 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BFC 808B455C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C00 808B4560 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00C04 808B4564 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C08 808B4568 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00C0C 808B456C 0C00D498 */  jal     Draw_DListOpa
              
/* 00C10 808B4570 24A50180 */  addiu   $a1, $a1, 0x0180           ## $a1 = 06000180
/* 00C14 808B4574 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C18 808B4578 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C1C 808B457C 03E00008 */  jr      $ra                        
/* 00C20 808B4580 00000000 */  nop
/* 00C24 808B4584 00000000 */  nop
/* 00C28 808B4588 00000000 */  nop
/* 00C2C 808B458C 00000000 */  nop

