.rdata
glabel D_80877EC0
    .asciz "\x1b[32m"
    .balign 4

glabel D_80877EC8
    .asciz "WHY !!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80877EE0
    .asciz "\x1b[m"
    .balign 4

.text
glabel BgGanonOtyuka_Destroy
/* 00098 808759B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0009C 808759BC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000A0 808759C0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000A4 808759C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000A8 808759C8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000AC 808759CC 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000B0 808759D0 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000B4 808759D4 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000B8 808759D8 3C048087 */  lui     $a0, %hi(D_80877EC0)       ## $a0 = 80870000
/* 000BC 808759DC 0C00084C */  jal     osSyncPrintf
              
/* 000C0 808759E0 24847EC0 */  addiu   $a0, $a0, %lo(D_80877EC0)  ## $a0 = 80877EC0
/* 000C4 808759E4 3C048087 */  lui     $a0, %hi(D_80877EC8)       ## $a0 = 80870000
/* 000C8 808759E8 0C00084C */  jal     osSyncPrintf
              
/* 000CC 808759EC 24847EC8 */  addiu   $a0, $a0, %lo(D_80877EC8)  ## $a0 = 80877EC8
/* 000D0 808759F0 3C048087 */  lui     $a0, %hi(D_80877EE0)       ## $a0 = 80870000
/* 000D4 808759F4 0C00084C */  jal     osSyncPrintf
              
/* 000D8 808759F8 24847EE0 */  addiu   $a0, $a0, %lo(D_80877EE0)  ## $a0 = 80877EE0
/* 000DC 808759FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000E0 80875A00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000E4 80875A04 03E00008 */  jr      $ra                        
/* 000E8 80875A08 00000000 */  nop
