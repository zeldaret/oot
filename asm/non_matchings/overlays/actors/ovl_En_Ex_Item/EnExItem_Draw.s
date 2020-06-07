.late_rodata
.late_rodata_alignment 8
glabel jtbl_80A0A130
.word L80A09B04
.word L80A09B14
.word L80A09B04
.word L80A09B04
.word L80A09B24
.word L80A09B04
.word L80A09B14
.word L80A09B04
.word L80A09B04
.word L80A09B24
.word L80A09B24
.word L80A09B24
.word L80A09B24
.word L80A09B24
.word L80A09B24
.word L80A09B34
.word L80A09B48
.word L80A09B48
.word L80A09B48
.word L80A09B04

.text
glabel EnExItem_Draw
/* 00C1C 80A09ABC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C20 80A09AC0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C24 80A09AC4 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00C28 80A09AC8 8C850164 */  lw      $a1, 0x0164($a0)           ## 00000164
/* 00C2C 80A09ACC AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00C30 80A09AD0 0C00B58B */  jal     Actor_SetScale
              
/* 00C34 80A09AD4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C38 80A09AD8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C3C 80A09ADC 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 00C40 80A09AE0 84830152 */  lh      $v1, 0x0152($a0)           ## 00000152
/* 00C44 80A09AE4 2C610014 */  sltiu   $at, $v1, 0x0014           
/* 00C48 80A09AE8 1020001C */  beq     $at, $zero, .L80A09B5C     
/* 00C4C 80A09AEC 00037080 */  sll     $t6, $v1,  2               
/* 00C50 80A09AF0 3C0180A1 */  lui     $at, %hi(jtbl_80A0A130)       ## $at = 80A10000
/* 00C54 80A09AF4 002E0821 */  addu    $at, $at, $t6              
/* 00C58 80A09AF8 8C2EA130 */  lw      $t6, %lo(jtbl_80A0A130)($at)  
/* 00C5C 80A09AFC 01C00008 */  jr      $t6                        
/* 00C60 80A09B00 00000000 */  nop
glabel L80A09B04
/* 00C64 80A09B04 0C2826DB */  jal     func_80A09B6C              
/* 00C68 80A09B08 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00C6C 80A09B0C 10000014 */  beq     $zero, $zero, .L80A09B60   
/* 00C70 80A09B10 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A09B14
/* 00C74 80A09B14 0C2826F3 */  jal     func_80A09BCC              
/* 00C78 80A09B18 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00C7C 80A09B1C 10000010 */  beq     $zero, $zero, .L80A09B60   
/* 00C80 80A09B20 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A09B24
/* 00C84 80A09B24 0C28275B */  jal     func_80A09D6C              
/* 00C88 80A09B28 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00C8C 80A09B2C 1000000C */  beq     $zero, $zero, .L80A09B60   
/* 00C90 80A09B30 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A09B34
/* 00C94 80A09B34 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00C98 80A09B38 0C282710 */  jal     func_80A09C40              
/* 00C9C 80A09B3C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00CA0 80A09B40 10000007 */  beq     $zero, $zero, .L80A09B60   
/* 00CA4 80A09B44 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A09B48
/* 00CA8 80A09B48 2462FFF0 */  addiu   $v0, $v1, 0xFFF0           ## $v0 = FFFFFFF0
/* 00CAC 80A09B4C 00023400 */  sll     $a2, $v0, 16               
/* 00CB0 80A09B50 00063403 */  sra     $a2, $a2, 16               
/* 00CB4 80A09B54 0C2826FF */  jal     func_80A09BFC              
/* 00CB8 80A09B58 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
.L80A09B5C:
/* 00CBC 80A09B5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A09B60:
/* 00CC0 80A09B60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CC4 80A09B64 03E00008 */  jr      $ra                        
/* 00CC8 80A09B68 00000000 */  nop
