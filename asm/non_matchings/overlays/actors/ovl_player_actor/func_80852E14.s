.rdata
glabel D_8085533C
    .asciz "DEMO MODE=%d\n"
    .balign 4

.text
glabel func_80852E14
/* 20C04 80852E14 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 20C08 80852E18 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 20C0C 80852E1C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 20C10 80852E20 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 20C14 80852E24 908E0445 */  lbu     $t6, 0x0445($a0)           ## 00000445
/* 20C18 80852E28 90820444 */  lbu     $v0, 0x0444($a0)           ## 00000444
/* 20C1C 80852E2C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 20C20 80852E30 11C20018 */  beq     $t6, $v0, .L80852E94       
/* 20C24 80852E34 00000000 */  nop
/* 20C28 80852E38 908F01E9 */  lbu     $t7, 0x01E9($a0)           ## 000001E9
/* 20C2C 80852E3C 3C018086 */  lui     $at, %hi(D_80858AA0)       ## $at = 80860000
/* 20C30 80852E40 0C20CB6F */  jal     func_80832DBC              
/* 20C34 80852E44 AC2F8AA0 */  sw      $t7, %lo(D_80858AA0)($at)  
/* 20C38 80852E48 92050444 */  lbu     $a1, 0x0444($s0)           ## 00000444
/* 20C3C 80852E4C 3C048085 */  lui     $a0, %hi(D_8085533C)       ## $a0 = 80850000
/* 20C40 80852E50 2484533C */  addiu   $a0, $a0, %lo(D_8085533C)  ## $a0 = 8085533C
/* 20C44 80852E54 0C00084C */  jal     osSyncPrintf
              
/* 20C48 80852E58 A2050445 */  sb      $a1, 0x0445($s0)           ## 00000445
/* 20C4C 80852E5C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 20C50 80852E60 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 20C54 80852E64 0C214B03 */  jal     func_80852C0C              
/* 20C58 80852E68 92060444 */  lbu     $a2, 0x0444($s0)           ## 00000444
/* 20C5C 80852E6C 92180444 */  lbu     $t8, 0x0444($s0)           ## 00000444
/* 20C60 80852E70 3C088085 */  lui     $t0, %hi(D_80854B18)       ## $t0 = 80850000
/* 20C64 80852E74 25084B18 */  addiu   $t0, $t0, %lo(D_80854B18)  ## $t0 = 80854B18
/* 20C68 80852E78 0018C8C0 */  sll     $t9, $t8,  3               
/* 20C6C 80852E7C 03283821 */  addu    $a3, $t9, $t0              
/* 20C70 80852E80 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 20C74 80852E84 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 20C78 80852E88 0C214AD3 */  jal     func_80852B4C              
/* 20C7C 80852E8C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 20C80 80852E90 92020444 */  lbu     $v0, 0x0444($s0)           ## 00000444
.L80852E94:
/* 20C84 80852E94 3C0A8085 */  lui     $t2, %hi(D_80854E50)       ## $t2 = 80850000
/* 20C88 80852E98 254A4E50 */  addiu   $t2, $t2, %lo(D_80854E50)  ## $t2 = 80854E50
/* 20C8C 80852E9C 000248C0 */  sll     $t1, $v0,  3               
/* 20C90 80852EA0 012A3821 */  addu    $a3, $t1, $t2              
/* 20C94 80852EA4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 20C98 80852EA8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 20C9C 80852EAC 0C214AD3 */  jal     func_80852B4C              
/* 20CA0 80852EB0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 20CA4 80852EB4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 20CA8 80852EB8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 20CAC 80852EBC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 20CB0 80852EC0 03E00008 */  jr      $ra                        
/* 20CB4 80852EC4 00000000 */  nop


