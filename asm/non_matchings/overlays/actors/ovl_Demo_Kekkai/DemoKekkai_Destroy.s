glabel DemoKekkai_Destroy
/* 00270 8098D240 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00274 8098D244 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00278 8098D248 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0027C 8098D24C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00280 8098D250 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00284 8098D254 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00288 8098D258 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 0028C 8098D25C 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 00290 8098D260 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00294 8098D264 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00298 8098D268 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 0029C 8098D26C 24A50198 */  addiu   $a1, $a1, 0x0198           ## $a1 = 00000198
/* 002A0 8098D270 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002A4 8098D274 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002A8 8098D278 03E00008 */  jr      $ra                        
/* 002AC 8098D27C 00000000 */  nop
