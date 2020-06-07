glabel func_808B7B6C
/* 0045C 808B7B6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00460 808B7B70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00464 808B7B74 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00468 808B7B78 848E0216 */  lh      $t6, 0x0216($a0)           ## 00000216
/* 0046C 808B7B7C 29C10015 */  slti    $at, $t6, 0x0015           
/* 00470 808B7B80 54200008 */  bnel    $at, $zero, .L808B7BA4     
/* 00474 808B7B84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00478 808B7B88 0C22DEEC */  jal     func_808B7BB0              
/* 0047C 808B7B8C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00480 808B7B90 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00484 808B7B94 8C8F011C */  lw      $t7, 0x011C($a0)           ## 0000011C
/* 00488 808B7B98 ADE00118 */  sw      $zero, 0x0118($t7)         ## 00000118
/* 0048C 808B7B9C AC80011C */  sw      $zero, 0x011C($a0)         ## 0000011C
/* 00490 808B7BA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808B7BA4:
/* 00494 808B7BA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00498 808B7BA8 03E00008 */  jr      $ra                        
/* 0049C 808B7BAC 00000000 */  nop
