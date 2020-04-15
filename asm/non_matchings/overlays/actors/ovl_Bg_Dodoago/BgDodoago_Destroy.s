glabel BgDodoago_Destroy
/* 00288 80871C88 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0028C 80871C8C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00290 80871C90 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 00294 80871C94 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00298 80871C98 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0029C 80871C9C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 002A0 80871CA0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002A4 80871CA4 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 002A8 80871CA8 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 002AC 80871CAC 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 002B0 80871CB0 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 002B4 80871CB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002B8 80871CB8 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 002BC 80871CBC 24A50168 */  addiu   $a1, $a1, 0x0168           ## $a1 = 00000168
/* 002C0 80871CC0 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 002C4 80871CC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002C8 80871CC8 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 002CC 80871CCC 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 002D0 80871CD0 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 002D4 80871CD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002D8 80871CD8 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 002DC 80871CDC 24A50200 */  addiu   $a1, $a1, 0x0200           ## $a1 = 00000200
/* 002E0 80871CE0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002E4 80871CE4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 002E8 80871CE8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 002EC 80871CEC 03E00008 */  jr      $ra                        
/* 002F0 80871CF0 00000000 */  nop
