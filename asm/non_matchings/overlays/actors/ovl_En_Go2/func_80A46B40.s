.late_rodata
glabel D_80A487A4
    .float 0.4

glabel D_80A487A8
    .float 0.6

.text
glabel func_80A46B40
/* 03E10 80A46B40 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03E14 80A46B44 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03E18 80A46B48 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03E1C 80A46B4C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 03E20 80A46B50 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 03E24 80A46B54 908E0211 */  lbu     $t6, 0x0211($a0)           ## 00000211
/* 03E28 80A46B58 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 03E2C 80A46B5C 3063001F */  andi    $v1, $v1, 0x001F           ## $v1 = 00000000
/* 03E30 80A46B60 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03E34 80A46B64 15C10017 */  bne     $t6, $at, .L80A46BC4       
/* 03E38 80A46B68 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000000
/* 03E3C 80A46B6C 0C291906 */  jal     func_80A46418              
/* 03E40 80A46B70 00000000 */  nop
/* 03E44 80A46B74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03E48 80A46B78 0C29186A */  jal     func_80A461A8              
/* 03E4C 80A46B7C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 03E50 80A46B80 0C291612 */  jal     func_80A45848              
/* 03E54 80A46B84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03E58 80A46B88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03E5C 80A46B8C 0C291807 */  jal     func_80A4601C              
/* 03E60 80A46B90 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 03E64 80A46B94 5440004C */  bnel    $v0, $zero, .L80A46CC8     
/* 03E68 80A46B98 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03E6C 80A46B9C 0C29181F */  jal     func_80A4607C              
/* 03E70 80A46BA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03E74 80A46BA4 54400048 */  bnel    $v0, $zero, .L80A46CC8     
/* 03E78 80A46BA8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03E7C 80A46BAC 0C2917E7 */  jal     func_80A45F9C              
/* 03E80 80A46BB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03E84 80A46BB4 50400039 */  beql    $v0, $zero, .L80A46C9C     
/* 03E88 80A46BB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03E8C 80A46BBC 10000042 */  beq     $zero, $zero, .L80A46CC8   
/* 03E90 80A46BC0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A46BC4:
/* 03E94 80A46BC4 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 03E98 80A46BC8 A3A30027 */  sb      $v1, 0x0027($sp)           
/* 03E9C 80A46BCC 0C0295B2 */  jal     func_800A56C8              
/* 03EA0 80A46BD0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 03EA4 80A46BD4 10400017 */  beq     $v0, $zero, .L80A46C34     
/* 03EA8 80A46BD8 93A30027 */  lbu     $v1, 0x0027($sp)           
/* 03EAC 80A46BDC 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 03EB0 80A46BE0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 03EB4 80A46BE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03EB8 80A46BE8 31F8001F */  andi    $t8, $t7, 0x001F           ## $t8 = 00000000
/* 03EBC 80A46BEC 17010004 */  bne     $t8, $at, .L80A46C00       
/* 03EC0 80A46BF0 00000000 */  nop
/* 03EC4 80A46BF4 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 03EC8 80A46BF8 37280001 */  ori     $t0, $t9, 0x0001           ## $t0 = 00000001
/* 03ECC 80A46BFC AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
.L80A46C00:
/* 03ED0 80A46C00 0C291533 */  jal     func_80A454CC              
/* 03ED4 80A46C04 A3A30027 */  sb      $v1, 0x0027($sp)           
/* 03ED8 80A46C08 93A30027 */  lbu     $v1, 0x0027($sp)           
/* 03EDC 80A46C0C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 03EE0 80A46C10 3C0B80A5 */  lui     $t3, %hi(D_80A48174)       ## $t3 = 80A50000
/* 03EE4 80A46C14 00035080 */  sll     $t2, $v1,  2               
/* 03EE8 80A46C18 01435021 */  addu    $t2, $t2, $v1              
/* 03EEC 80A46C1C 000A5040 */  sll     $t2, $t2,  1               
/* 03EF0 80A46C20 A2090211 */  sb      $t1, 0x0211($s0)           ## 00000211
/* 03EF4 80A46C24 016A5821 */  addu    $t3, $t3, $t2              
/* 03EF8 80A46C28 856B8174 */  lh      $t3, %lo(D_80A48174)($t3)  
/* 03EFC 80A46C2C 1000001A */  beq     $zero, $zero, .L80A46C98   
/* 03F00 80A46C30 A60B01FE */  sh      $t3, 0x01FE($s0)           ## 000001FE
.L80A46C34:
/* 03F04 80A46C34 C6060164 */  lwc1    $f6, 0x0164($s0)           ## 00000164
/* 03F08 80A46C38 C608015C */  lwc1    $f8, 0x015C($s0)           ## 0000015C
/* 03F0C 80A46C3C 00036080 */  sll     $t4, $v1,  2               
/* 03F10 80A46C40 01836021 */  addu    $t4, $t4, $v1              
/* 03F14 80A46C44 46083283 */  div.s   $f10, $f6, $f8             
/* 03F18 80A46C48 000C6040 */  sll     $t4, $t4,  1               
/* 03F1C 80A46C4C 3C0D80A5 */  lui     $t5, %hi(D_80A48174)       ## $t5 = 80A50000
/* 03F20 80A46C50 01AC6821 */  addu    $t5, $t5, $t4              
/* 03F24 80A46C54 85AD8174 */  lh      $t5, %lo(D_80A48174)($t5)  
/* 03F28 80A46C58 3C0180A5 */  lui     $at, %hi(D_80A487A4)       ## $at = 80A50000
/* 03F2C 80A46C5C C43087A4 */  lwc1    $f16, %lo(D_80A487A4)($at) 
/* 03F30 80A46C60 448D2000 */  mtc1    $t5, $f4                   ## $f4 = -0.00
/* 03F34 80A46C64 3C0180A5 */  lui     $at, %hi(D_80A487A8)       ## $at = 80A50000
/* 03F38 80A46C68 C42687A8 */  lwc1    $f6, %lo(D_80A487A8)($at)  
/* 03F3C 80A46C6C 46802020 */  cvt.s.w $f0, $f4                   
/* 03F40 80A46C70 46100482 */  mul.s   $f18, $f0, $f16            
/* 03F44 80A46C74 00000000 */  nop
/* 03F48 80A46C78 460A9102 */  mul.s   $f4, $f18, $f10            
/* 03F4C 80A46C7C 00000000 */  nop
/* 03F50 80A46C80 46060202 */  mul.s   $f8, $f0, $f6              
/* 03F54 80A46C84 46082400 */  add.s   $f16, $f4, $f8             
/* 03F58 80A46C88 4600848D */  trunc.w.s $f18, $f16                 
/* 03F5C 80A46C8C 440F9000 */  mfc1    $t7, $f18                  
/* 03F60 80A46C90 00000000 */  nop
/* 03F64 80A46C94 A60F01FE */  sh      $t7, 0x01FE($s0)           ## 000001FE
.L80A46C98:
/* 03F68 80A46C98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A46C9C:
/* 03F6C 80A46C9C 0C291587 */  jal     func_80A4561C              
/* 03F70 80A46CA0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 03F74 80A46CA4 54400008 */  bnel    $v0, $zero, .L80A46CC8     
/* 03F78 80A46CA8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03F7C 80A46CAC 0C291370 */  jal     func_80A44DC0              
/* 03F80 80A46CB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03F84 80A46CB4 14400003 */  bne     $v0, $zero, .L80A46CC4     
/* 03F88 80A46CB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03F8C 80A46CBC 0C2916E7 */  jal     func_80A45B9C              
/* 03F90 80A46CC0 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80A46CC4:
/* 03F94 80A46CC4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A46CC8:
/* 03F98 80A46CC8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03F9C 80A46CCC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03FA0 80A46CD0 03E00008 */  jr      $ra                        
/* 03FA4 80A46CD4 00000000 */  nop
