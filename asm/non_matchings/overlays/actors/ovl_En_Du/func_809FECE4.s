glabel func_809FECE4
/* 010B4 809FECE4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 010B8 809FECE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 010BC 809FECEC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 010C0 809FECF0 848E01F4 */  lh      $t6, 0x01F4($a0)           ## 000001F4
/* 010C4 809FECF4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 010C8 809FECF8 3C0580A0 */  lui     $a1, %hi(func_809FE3C0)    ## $a1 = 80A00000
/* 010CC 809FECFC 15C10003 */  bne     $t6, $at, .L809FED0C       
/* 010D0 809FED00 24A5E3C0 */  addiu   $a1, $a1, %lo(func_809FE3C0) ## $a1 = 809FE3C0
/* 010D4 809FED04 0C27F70C */  jal     func_809FDC30              
/* 010D8 809FED08 A48001F4 */  sh      $zero, 0x01F4($a0)         ## 000001F4
.L809FED0C:
/* 010DC 809FED0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 010E0 809FED10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010E4 809FED14 03E00008 */  jr      $ra                        
/* 010E8 809FED18 00000000 */  nop
