.rdata
glabel D_80B5A7A0
    .asciz "En_Zl3_Get_path_info レールデータをゲットだぜ = %d!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80B5A7E4
    .asciz "En_Zl3_Get_path_info レールデータが無い!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

.text
glabel func_80B56F10
/* 03B60 80B56F10 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03B64 80B56F14 3C030001 */  lui     $v1, 0x0001                ## $v1 = 00010000
/* 03B68 80B56F18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03B6C 80B56F1C 00651821 */  addu    $v1, $v1, $a1              
/* 03B70 80B56F20 8C631E08 */  lw      $v1, 0x1E08($v1)           ## 00011E08
/* 03B74 80B56F24 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 03B78 80B56F28 10600011 */  beq     $v1, $zero, .L80B56F70     
/* 03B7C 80B56F2C 00000000 */  nop
/* 03B80 80B56F30 AFA30018 */  sw      $v1, 0x0018($sp)           
/* 03B84 80B56F34 0C2D5371 */  jal     func_80B54DC4              
/* 03B88 80B56F38 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 03B8C 80B56F3C 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 03B90 80B56F40 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 03B94 80B56F44 000270C0 */  sll     $t6, $v0,  3               
/* 03B98 80B56F48 006E1821 */  addu    $v1, $v1, $t6              
/* 03B9C 80B56F4C ACC3030C */  sw      $v1, 0x030C($a2)           ## 0000030C
/* 03BA0 80B56F50 906F0000 */  lbu     $t7, 0x0000($v1)           ## 00000000
/* 03BA4 80B56F54 3C0480B6 */  lui     $a0, %hi(D_80B5A7A0)       ## $a0 = 80B60000
/* 03BA8 80B56F58 2484A7A0 */  addiu   $a0, $a0, %lo(D_80B5A7A0)  ## $a0 = 80B5A7A0
/* 03BAC 80B56F5C 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 03BB0 80B56F60 0C00084C */  jal     osSyncPrintf
              
/* 03BB4 80B56F64 ACCF0310 */  sw      $t7, 0x0310($a2)           ## 00000310
/* 03BB8 80B56F68 10000005 */  beq     $zero, $zero, .L80B56F80   
/* 03BBC 80B56F6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B56F70:
/* 03BC0 80B56F70 3C0480B6 */  lui     $a0, %hi(D_80B5A7E4)       ## $a0 = 80B60000
/* 03BC4 80B56F74 0C00084C */  jal     osSyncPrintf
              
/* 03BC8 80B56F78 2484A7E4 */  addiu   $a0, $a0, %lo(D_80B5A7E4)  ## $a0 = 80B5A7E4
/* 03BCC 80B56F7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B56F80:
/* 03BD0 80B56F80 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03BD4 80B56F84 03E00008 */  jr      $ra                        
/* 03BD8 80B56F88 00000000 */  nop
