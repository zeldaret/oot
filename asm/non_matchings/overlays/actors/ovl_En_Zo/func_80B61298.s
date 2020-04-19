.late_rodata
glabel jtbl_80B626DC
.word L80B612DC
.word L80B612DC
.word L80B612E4
.word L80B612DC
.word L80B6135C
.word L80B613C4
.word L80B612DC
.word L80B612DC
.word L80B612DC
.word L80B612DC

.text
glabel func_80B61298
/* 01078 80B61298 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0107C 80B6129C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01080 80B612A0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01084 80B612A4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01088 80B612A8 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 0108C 80B612AC 0C042F6F */  jal     func_8010BDBC              
/* 01090 80B612B0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01094 80B612B4 2C41000A */  sltiu   $at, $v0, 0x000A           
/* 01098 80B612B8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0109C 80B612BC 10200049 */  beq     $at, $zero, .L80B613E4     
/* 010A0 80B612C0 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 010A4 80B612C4 00027080 */  sll     $t6, $v0,  2               
/* 010A8 80B612C8 3C0180B6 */  lui     $at, %hi(jtbl_80B626DC)       ## $at = 80B60000
/* 010AC 80B612CC 002E0821 */  addu    $at, $at, $t6              
/* 010B0 80B612D0 8C2E26DC */  lw      $t6, %lo(jtbl_80B626DC)($at)  
/* 010B4 80B612D4 01C00008 */  jr      $t6                        
/* 010B8 80B612D8 00000000 */  nop
glabel L80B612DC
/* 010BC 80B612DC 10000042 */  beq     $zero, $zero, .L80B613E8   
/* 010C0 80B612E0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80B612E4
/* 010C4 80B612E4 94E2010E */  lhu     $v0, 0x010E($a3)           ## 0000010E
/* 010C8 80B612E8 24014008 */  addiu   $at, $zero, 0x4008         ## $at = 00004008
/* 010CC 80B612EC 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 010D0 80B612F0 1041000D */  beq     $v0, $at, .L80B61328       
/* 010D4 80B612F4 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 010D8 80B612F8 24014020 */  addiu   $at, $zero, 0x4020         ## $at = 00004020
/* 010DC 80B612FC 10410008 */  beq     $v0, $at, .L80B61320       
/* 010E0 80B61300 24014021 */  addiu   $at, $zero, 0x4021         ## $at = 00004021
/* 010E4 80B61304 10410006 */  beq     $v0, $at, .L80B61320       
/* 010E8 80B61308 2401402F */  addiu   $at, $zero, 0x402F         ## $at = 0000402F
/* 010EC 80B6130C 1041000A */  beq     $v0, $at, .L80B61338       
/* 010F0 80B61310 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 010F4 80B61314 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 010F8 80B61318 1000000B */  beq     $zero, $zero, .L80B61348   
/* 010FC 80B6131C 2463E660 */  addiu   $v1, %lo(gSaveContext)
.L80B61320:
/* 01100 80B61320 10000031 */  beq     $zero, $zero, .L80B613E8   
/* 01104 80B61324 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B61328:
/* 01108 80B61328 946F0F1C */  lhu     $t7, 0x0F1C($v1)           ## 8015F57C
/* 0110C 80B6132C 35F80010 */  ori     $t8, $t7, 0x0010           ## $t8 = 00000010
/* 01110 80B61330 10000005 */  beq     $zero, $zero, .L80B61348   
/* 01114 80B61334 A4780F1C */  sh      $t8, 0x0F1C($v1)           ## 8015F57C
.L80B61338:
/* 01118 80B61338 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 0111C 80B6133C 94790F1C */  lhu     $t9, 0x0F1C($v1)           ## 8015DBDC
/* 01120 80B61340 37280200 */  ori     $t0, $t9, 0x0200           ## $t0 = 00000200
/* 01124 80B61344 A4680F1C */  sh      $t0, 0x0F1C($v1)           ## 8015DBDC
.L80B61348:
/* 01128 80B61348 94690EDA */  lhu     $t1, 0x0EDA($v1)           ## 8015DB9A
/* 0112C 80B6134C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01130 80B61350 352A0001 */  ori     $t2, $t1, 0x0001           ## $t2 = 00000001
/* 01134 80B61354 10000024 */  beq     $zero, $zero, .L80B613E8   
/* 01138 80B61358 A46A0EDA */  sh      $t2, 0x0EDA($v1)           ## 8015DB9A
glabel L80B6135C
/* 0113C 80B6135C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01140 80B61360 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01144 80B61364 0C041AF2 */  jal     func_80106BC8              
/* 01148 80B61368 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 0114C 80B6136C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01150 80B61370 14400003 */  bne     $v0, $zero, .L80B61380     
/* 01154 80B61374 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 01158 80B61378 1000001B */  beq     $zero, $zero, .L80B613E8   
/* 0115C 80B6137C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B61380:
/* 01160 80B61380 94EB010E */  lhu     $t3, 0x010E($a3)           ## 0000010E
/* 01164 80B61384 2401400C */  addiu   $at, $zero, 0x400C         ## $at = 0000400C
/* 01168 80B61388 3C0C0001 */  lui     $t4, 0x0001                ## $t4 = 00010000
/* 0116C 80B6138C 1561000B */  bne     $t3, $at, .L80B613BC       
/* 01170 80B61390 01866021 */  addu    $t4, $t4, $a2              
/* 01174 80B61394 918C04BD */  lbu     $t4, 0x04BD($t4)           ## 000104BD
/* 01178 80B61398 240E400E */  addiu   $t6, $zero, 0x400E         ## $t6 = 0000400E
/* 0117C 80B6139C 240D400D */  addiu   $t5, $zero, 0x400D         ## $t5 = 0000400D
/* 01180 80B613A0 15800003 */  bne     $t4, $zero, .L80B613B0     
/* 01184 80B613A4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 01188 80B613A8 10000002 */  beq     $zero, $zero, .L80B613B4   
/* 0118C 80B613AC A4ED010E */  sh      $t5, 0x010E($a3)           ## 0000010E
.L80B613B0:
/* 01190 80B613B0 A4EE010E */  sh      $t6, 0x010E($a3)           ## 0000010E
.L80B613B4:
/* 01194 80B613B4 0C042DC8 */  jal     func_8010B720              
/* 01198 80B613B8 94E5010E */  lhu     $a1, 0x010E($a3)           ## 0000010E
.L80B613BC:
/* 0119C 80B613BC 1000000A */  beq     $zero, $zero, .L80B613E8   
/* 011A0 80B613C0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80B613C4
/* 011A4 80B613C4 0C041AF2 */  jal     func_80106BC8              
/* 011A8 80B613C8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 011AC 80B613CC 14400003 */  bne     $v0, $zero, .L80B613DC     
/* 011B0 80B613D0 00000000 */  nop
/* 011B4 80B613D4 10000004 */  beq     $zero, $zero, .L80B613E8   
/* 011B8 80B613D8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B613DC:
/* 011BC 80B613DC 10000002 */  beq     $zero, $zero, .L80B613E8   
/* 011C0 80B613E0 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80B613E4:
/* 011C4 80B613E4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B613E8:
/* 011C8 80B613E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 011CC 80B613EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 011D0 80B613F0 03E00008 */  jr      $ra                        
/* 011D4 80B613F4 00000000 */  nop
