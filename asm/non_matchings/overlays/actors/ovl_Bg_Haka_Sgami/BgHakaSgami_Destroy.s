glabel BgHakaSgami_Destroy
/* 002A4 8087E784 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002A8 8087E788 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002AC 8087E78C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 002B0 8087E790 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002B4 8087E794 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 002B8 8087E798 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002BC 8087E79C 0C009C27 */  jal     func_8002709C              
/* 002C0 8087E7A0 8DC50154 */  lw      $a1, 0x0154($t6)           ## 00000154
/* 002C4 8087E7A4 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 002C8 8087E7A8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 002CC 8087E7AC 0C009C27 */  jal     func_8002709C              
/* 002D0 8087E7B0 8DE50158 */  lw      $a1, 0x0158($t7)           ## 00000158
/* 002D4 8087E7B4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 002D8 8087E7B8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 002DC 8087E7BC 0C017232 */  jal     func_8005C8C8              
/* 002E0 8087E7C0 24A501A8 */  addiu   $a1, $a1, 0x01A8           ## $a1 = 000001A8
/* 002E4 8087E7C4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 002E8 8087E7C8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 002EC 8087E7CC 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 002F0 8087E7D0 24A5015C */  addiu   $a1, $a1, 0x015C           ## $a1 = 0000015C
/* 002F4 8087E7D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002F8 8087E7D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002FC 8087E7DC 03E00008 */  jr      $ra                        
/* 00300 8087E7E0 00000000 */  nop


