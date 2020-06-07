glabel func_80985770
/* 00B90 80985770 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B94 80985774 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B98 80985778 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B9C 8098577C 0C261406 */  jal     func_80985018              
/* 00BA0 80985780 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00BA4 80985784 0C261418 */  jal     func_80985060              
/* 00BA8 80985788 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BAC 8098578C 0C2612F8 */  jal     func_80984BE0              
/* 00BB0 80985790 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BB4 80985794 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BB8 80985798 0C26156A */  jal     func_809855A8              
/* 00BBC 8098579C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00BC0 809857A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BC4 809857A4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BC8 809857A8 03E00008 */  jr      $ra                        
/* 00BCC 809857AC 00000000 */  nop
