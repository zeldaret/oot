glabel func_80880D68
/* 010C8 80880D68 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 010CC 80880D6C AFA40048 */  sw      $a0, 0x0048($sp)           
/* 010D0 80880D70 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 010D4 80880D74 3C048088 */  lui     $a0, %hi(D_80880F98)       ## $a0 = 80880000
/* 010D8 80880D78 24840F98 */  addiu   $a0, $a0, %lo(D_80880F98)  ## $a0 = 80880F98
/* 010DC 80880D7C 0C0346BD */  jal     Matrix_MultVec3f              
/* 010E0 80880D80 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFDC
/* 010E4 80880D84 3C048088 */  lui     $a0, %hi(D_80880FA4)       ## $a0 = 80880000
/* 010E8 80880D88 24840FA4 */  addiu   $a0, $a0, %lo(D_80880FA4)  ## $a0 = 80880FA4
/* 010EC 80880D8C 0C0346BD */  jal     Matrix_MultVec3f              
/* 010F0 80880D90 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFE8
/* 010F4 80880D94 3C048088 */  lui     $a0, %hi(D_80880FB0)       ## $a0 = 80880000
/* 010F8 80880D98 24840FB0 */  addiu   $a0, $a0, %lo(D_80880FB0)  ## $a0 = 80880FB0
/* 010FC 80880D9C 0C0346BD */  jal     Matrix_MultVec3f              
/* 01100 80880DA0 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFF4
/* 01104 80880DA4 8FA40048 */  lw      $a0, 0x0048($sp)           
/* 01108 80880DA8 27AE003C */  addiu   $t6, $sp, 0x003C           ## $t6 = FFFFFFF4
/* 0110C 80880DAC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01110 80880DB0 248401C4 */  addiu   $a0, $a0, 0x01C4           ## $a0 = 000001C4
/* 01114 80880DB4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01118 80880DB8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0111C 80880DBC 27A60024 */  addiu   $a2, $sp, 0x0024           ## $a2 = FFFFFFDC
/* 01120 80880DC0 0C0189E8 */  jal     func_800627A0              
/* 01124 80880DC4 27A70030 */  addiu   $a3, $sp, 0x0030           ## $a3 = FFFFFFE8
/* 01128 80880DC8 3C048088 */  lui     $a0, %hi(D_80880FEC)       ## $a0 = 80880000
/* 0112C 80880DCC 24840FEC */  addiu   $a0, $a0, %lo(D_80880FEC)  ## $a0 = 80880FEC
/* 01130 80880DD0 0C0346BD */  jal     Matrix_MultVec3f              
/* 01134 80880DD4 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFE8
/* 01138 80880DD8 27AF0030 */  addiu   $t7, $sp, 0x0030           ## $t7 = FFFFFFE8
/* 0113C 80880DDC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 01140 80880DE0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01144 80880DE4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01148 80880DE8 27A60024 */  addiu   $a2, $sp, 0x0024           ## $a2 = FFFFFFDC
/* 0114C 80880DEC 0C0189E8 */  jal     func_800627A0              
/* 01150 80880DF0 27A7003C */  addiu   $a3, $sp, 0x003C           ## $a3 = FFFFFFF4
/* 01154 80880DF4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01158 80880DF8 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 0115C 80880DFC 03E00008 */  jr      $ra                        
/* 01160 80880E00 00000000 */  nop


