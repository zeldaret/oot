.rdata

glabel D_80AF5188
    .asciz "En_Ru2_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

.text

glabel func_80AF3564
/* 01014 80AF3564 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01018 80AF3568 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0101C 80AF356C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01020 80AF3570 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01024 80AF3574 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01028 80AF3578 0C2BC9EB */  jal     func_80AF27AC              
/* 0102C 80AF357C 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01030 80AF3580 1040001C */  beq     $v0, $zero, .L80AF35F4     
/* 01034 80AF3584 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 01038 80AF3588 94460000 */  lhu     $a2, 0x0000($v0)           ## 00000000
/* 0103C 80AF358C 8CE302BC */  lw      $v1, 0x02BC($a3)           ## 000002BC
/* 01040 80AF3590 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01044 80AF3594 50C30018 */  beql    $a2, $v1, .L80AF35F8       
/* 01048 80AF3598 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0104C 80AF359C 10C10006 */  beq     $a2, $at, .L80AF35B8       
/* 01050 80AF35A0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01054 80AF35A4 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 01058 80AF35A8 10C10008 */  beq     $a2, $at, .L80AF35CC       
/* 0105C 80AF35AC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01060 80AF35B0 1000000A */  beq     $zero, $zero, .L80AF35DC   
/* 01064 80AF35B4 3C0480AF */  lui     $a0, %hi(D_80AF5188)       ## $a0 = 80AF0000
.L80AF35B8:
/* 01068 80AF35B8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0106C 80AF35BC 0C2BCD1B */  jal     func_80AF346C              
/* 01070 80AF35C0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01074 80AF35C4 10000009 */  beq     $zero, $zero, .L80AF35EC   
/* 01078 80AF35C8 8FA60018 */  lw      $a2, 0x0018($sp)           
.L80AF35CC:
/* 0107C 80AF35CC 0C2BCD3C */  jal     func_80AF34F0              
/* 01080 80AF35D0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01084 80AF35D4 10000005 */  beq     $zero, $zero, .L80AF35EC   
/* 01088 80AF35D8 8FA60018 */  lw      $a2, 0x0018($sp)           
.L80AF35DC:
/* 0108C 80AF35DC 24845188 */  addiu   $a0, $a0, %lo(D_80AF5188)  ## $a0 = 00005188
/* 01090 80AF35E0 0C00084C */  jal     osSyncPrintf
              
/* 01094 80AF35E4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01098 80AF35E8 8FA60018 */  lw      $a2, 0x0018($sp)           
.L80AF35EC:
/* 0109C 80AF35EC 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 010A0 80AF35F0 ADC602BC */  sw      $a2, 0x02BC($t6)           ## 000002BC
.L80AF35F4:
/* 010A4 80AF35F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF35F8:
/* 010A8 80AF35F8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 010AC 80AF35FC 03E00008 */  jr      $ra                        
/* 010B0 80AF3600 00000000 */  nop


