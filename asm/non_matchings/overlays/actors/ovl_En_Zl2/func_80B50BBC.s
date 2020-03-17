glabel func_80B50BBC
/* 0222C 80B50BBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02230 80B50BC0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02234 80B50BC4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02238 80B50BC8 0C2D3F33 */  jal     func_80B4FCCC              
/* 0223C 80B50BCC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02240 80B50BD0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02244 80B50BD4 0C2D4281 */  jal     func_80B50A04              
/* 02248 80B50BD8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0224C 80B50BDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02250 80B50BE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02254 80B50BE4 03E00008 */  jr      $ra                        
/* 02258 80B50BE8 00000000 */  nop


