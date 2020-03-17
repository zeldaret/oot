glabel EnDivingGame_Destroy
/* 00134 809ED9A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00138 809ED9A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0013C 809ED9AC 908E031F */  lbu     $t6, 0x031F($a0)           ## 0000031F
/* 00140 809ED9B0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00144 809ED9B4 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00148 809ED9B8 15C00003 */  bne     $t6, $zero, .L809ED9C8     
/* 0014C 809ED9BC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00150 809ED9C0 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00154 809ED9C4 A420FA2E */  sh      $zero, -0x05D2($at)        ## 8015FA2E
.L809ED9C8:
/* 00158 809ED9C8 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 0015C 809ED9CC 24C5034C */  addiu   $a1, $a2, 0x034C           ## $a1 = 0000034C
/* 00160 809ED9D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00164 809ED9D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00168 809ED9D8 03E00008 */  jr      $ra                        
/* 0016C 809ED9DC 00000000 */  nop


