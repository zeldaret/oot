.late_rodata
glabel D_80B5AB40
 .word 0x3DFCD6EA

.text
glabel func_80B55F6C
/* 02BBC 80B55F6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02BC0 80B55F70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02BC4 80B55F74 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02BC8 80B55F78 0C00BC65 */  jal     func_8002F194              
/* 02BCC 80B55F7C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02BD0 80B55F80 10400004 */  beq     $v0, $zero, .L80B55F94     
/* 02BD4 80B55F84 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02BD8 80B55F88 240E0012 */  addiu   $t6, $zero, 0x0012         ## $t6 = 00000012
/* 02BDC 80B55F8C 1000002B */  beq     $zero, $zero, .L80B5603C   
/* 02BE0 80B55F90 AC8E024C */  sw      $t6, 0x024C($a0)           ## 0000024C
.L80B55F94:
/* 02BE4 80B55F94 848F008A */  lh      $t7, 0x008A($a0)           ## 0000008A
/* 02BE8 80B55F98 849800B6 */  lh      $t8, 0x00B6($a0)           ## 000000B6
/* 02BEC 80B55F9C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02BF0 80B55FA0 01F81023 */  subu    $v0, $t7, $t8              
/* 02BF4 80B55FA4 00021400 */  sll     $v0, $v0, 16               
/* 02BF8 80B55FA8 00021403 */  sra     $v0, $v0, 16               
/* 02BFC 80B55FAC 04400003 */  bltz    $v0, .L80B55FBC            
/* 02C00 80B55FB0 00021823 */  subu    $v1, $zero, $v0            
/* 02C04 80B55FB4 10000001 */  beq     $zero, $zero, .L80B55FBC   
/* 02C08 80B55FB8 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80B55FBC:
/* 02C0C 80B55FBC 28614301 */  slti    $at, $v1, 0x4301           
/* 02C10 80B55FC0 50200018 */  beql    $at, $zero, .L80B56024     
/* 02C14 80B55FC4 8C8C0004 */  lw      $t4, 0x0004($a0)           ## 00000004
/* 02C18 80B55FC8 0C2D4D22 */  jal     func_80B53488              
/* 02C1C 80B55FCC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02C20 80B55FD0 1040001A */  beq     $v0, $zero, .L80B5603C     
/* 02C24 80B55FD4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02C28 80B55FD8 3C0180B6 */  lui     $at, %hi(D_80B5AB40)       ## $at = 80B60000
/* 02C2C 80B55FDC C424AB40 */  lwc1    $f4, %lo(D_80B5AB40)($at)  
/* 02C30 80B55FE0 C4460324 */  lwc1    $f6, 0x0324($v0)           ## 00000324
/* 02C34 80B55FE4 4604303E */  c.le.s  $f6, $f4                   
/* 02C38 80B55FE8 00000000 */  nop
/* 02C3C 80B55FEC 45020014 */  bc1fl   .L80B56040                 
/* 02C40 80B55FF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02C44 80B55FF4 8C990004 */  lw      $t9, 0x0004($a0)           ## 00000004
/* 02C48 80B55FF8 240B7059 */  addiu   $t3, $zero, 0x7059         ## $t3 = 00007059
/* 02C4C 80B55FFC A48B010E */  sh      $t3, 0x010E($a0)           ## 0000010E
/* 02C50 80B56000 37280009 */  ori     $t0, $t9, 0x0009           ## $t0 = 00000009
/* 02C54 80B56004 AC880004 */  sw      $t0, 0x0004($a0)           ## 00000004
/* 02C58 80B56008 350A0001 */  ori     $t2, $t0, 0x0001           ## $t2 = 00000009
/* 02C5C 80B5600C AC8A0004 */  sw      $t2, 0x0004($a0)           ## 00000004
/* 02C60 80B56010 0C00BCBD */  jal     func_8002F2F4              
/* 02C64 80B56014 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 02C68 80B56018 10000009 */  beq     $zero, $zero, .L80B56040   
/* 02C6C 80B5601C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02C70 80B56020 8C8C0004 */  lw      $t4, 0x0004($a0)           ## 00000004
.L80B56024:
/* 02C74 80B56024 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 02C78 80B56028 01816824 */  and     $t5, $t4, $at              
/* 02C7C 80B5602C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02C80 80B56030 AC8D0004 */  sw      $t5, 0x0004($a0)           ## 00000004
/* 02C84 80B56034 01A17824 */  and     $t7, $t5, $at              
/* 02C88 80B56038 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
.L80B5603C:
/* 02C8C 80B5603C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B56040:
/* 02C90 80B56040 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02C94 80B56044 03E00008 */  jr      $ra                        
/* 02C98 80B56048 00000000 */  nop
