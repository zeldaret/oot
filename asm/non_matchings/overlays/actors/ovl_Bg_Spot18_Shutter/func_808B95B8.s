glabel func_808B95B8
/* 001E8 808B95B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001EC 808B95BC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001F0 808B95C0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 001F4 808B95C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001F8 808B95C8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 001FC 808B95CC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00200 808B95D0 85C5001C */  lh      $a1, 0x001C($t6)           ## 0000001C
/* 00204 808B95D4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00208 808B95D8 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 0020C 808B95DC 1040000A */  beq     $v0, $zero, .L808B9608     
/* 00210 808B95E0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00214 808B95E4 0C00B56E */  jal     Actor_SetHeight
              
/* 00218 808B95E8 3C05428C */  lui     $a1, 0x428C                ## $a1 = 428C0000
/* 0021C 808B95EC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00220 808B95F0 0C020120 */  jal     func_80080480              
/* 00224 808B95F4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00228 808B95F8 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 0022C 808B95FC 3C0F808C */  lui     $t7, %hi(func_808B9698)    ## $t7 = 808C0000
/* 00230 808B9600 25EF9698 */  addiu   $t7, $t7, %lo(func_808B9698) ## $t7 = 808B9698
/* 00234 808B9604 AF0F0164 */  sw      $t7, 0x0164($t8)           ## 00000164
.L808B9608:
/* 00238 808B9608 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0023C 808B960C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00240 808B9610 03E00008 */  jr      $ra                        
/* 00244 808B9614 00000000 */  nop


