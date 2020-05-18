glabel func_8084AB54
/* 18944 8084AB54 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 18948 8084AB58 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 1894C 8084AB5C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 18950 8084AB60 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 18954 8084AB64 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 18958 8084AB68 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1895C 8084AB6C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 18960 8084AB70 0C009C27 */  jal     Effect_Delete              
/* 18964 8084AB74 8E050670 */  lw      $a1, 0x0670($s0)           ## 00000670
/* 18968 8084AB78 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1896C 8084AB7C 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 18970 8084AB80 26050498 */  addiu   $a1, $s0, 0x0498           ## $a1 = 00000498
/* 18974 8084AB84 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 18978 8084AB88 0C017418 */  jal     Collider_DestroyQuad              
/* 1897C 8084AB8C 260504E4 */  addiu   $a1, $s0, 0x04E4           ## $a1 = 000004E4
/* 18980 8084AB90 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 18984 8084AB94 0C017418 */  jal     Collider_DestroyQuad              
/* 18988 8084AB98 26050564 */  addiu   $a1, $s0, 0x0564           ## $a1 = 00000564
/* 1898C 8084AB9C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 18990 8084ABA0 0C017418 */  jal     Collider_DestroyQuad              
/* 18994 8084ABA4 260505E4 */  addiu   $a1, $s0, 0x05E4           ## $a1 = 000005E4
/* 18998 8084ABA8 0C021DB2 */  jal     func_800876C8              
/* 1899C 8084ABAC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 189A0 8084ABB0 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 189A4 8084ABB4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 189A8 8084ABB8 01D17021 */  addu    $t6, $t6, $s1              
/* 189AC 8084ABBC 91CE1DE8 */  lbu     $t6, 0x1DE8($t6)           ## 00011DE8
/* 189B0 8084ABC0 3C018016 */  lui     $at, %hi(gSaveContext+4)
/* 189B4 8084ABC4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 189B8 8084ABC8 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 189BC 8084ABCC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 189C0 8084ABD0 03E00008 */  jr      $ra                        
/* 189C4 8084ABD4 AC2EE664 */  sw      $t6, %lo(gSaveContext+4)($at)
