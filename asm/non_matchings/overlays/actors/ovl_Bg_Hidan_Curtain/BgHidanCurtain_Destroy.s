glabel BgHidanCurtain_Destroy
/* 0026C 8088540C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00270 80885410 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00274 80885414 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00278 80885418 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0027C 8088541C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00280 80885420 24C50158 */  addiu   $a1, $a2, 0x0158           ## $a1 = 00000158
/* 00284 80885424 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00288 80885428 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0028C 8088542C 03E00008 */  jr      $ra                        
/* 00290 80885430 00000000 */  nop
