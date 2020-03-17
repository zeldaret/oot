glabel BgSpot16Bombstone_Destroy
/* 0052C 808B515C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00530 808B5160 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00534 808B5164 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00538 808B5168 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 0053C 808B516C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00540 808B5170 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00544 808B5174 15C10008 */  bne     $t6, $at, .L808B5198       
/* 00548 808B5178 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0054C 808B517C 24C50164 */  addiu   $a1, $a2, 0x0164           ## $a1 = 00000164
/* 00550 808B5180 0C016F32 */  jal     func_8005BCC8              
/* 00554 808B5184 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00558 808B5188 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0055C 808B518C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00560 808B5190 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00564 808B5194 24C501C4 */  addiu   $a1, $a2, 0x01C4           ## $a1 = 000001C4
.L808B5198:
/* 00568 808B5198 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0056C 808B519C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00570 808B51A0 03E00008 */  jr      $ra                        
/* 00574 808B51A4 00000000 */  nop


