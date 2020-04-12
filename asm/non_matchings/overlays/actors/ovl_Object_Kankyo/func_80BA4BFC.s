glabel func_80BA4BFC
/* 0215C 80BA4BFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02160 80BA4C00 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02164 80BA4C04 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02168 80BA4C08 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 0216C 80BA4C0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02170 80BA4C10 00A12021 */  addu    $a0, $a1, $at              
/* 02174 80BA4C14 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 02178 80BA4C18 240500A1 */  addiu   $a1, $zero, 0x00A1         ## $a1 = 000000A1
/* 0217C 80BA4C1C 04410009 */  bgez    $v0, .L80BA4C44            
/* 02180 80BA4C20 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 02184 80BA4C24 3C0480BA */  lui     $a0, %hi(D_80BA5B18)       ## $a0 = 80BA0000
/* 02188 80BA4C28 3C0580BA */  lui     $a1, %hi(D_80BA5B1C)       ## $a1 = 80BA0000
/* 0218C 80BA4C2C 24A55B1C */  addiu   $a1, $a1, %lo(D_80BA5B1C)  ## $a1 = 80BA5B1C
/* 02190 80BA4C30 24845B18 */  addiu   $a0, $a0, %lo(D_80BA5B18)  ## $a0 = 80BA5B18
/* 02194 80BA4C34 0C0007FC */  jal     __assert
              
/* 02198 80BA4C38 240604E3 */  addiu   $a2, $zero, 0x04E3         ## $a2 = 000004E3
/* 0219C 80BA4C3C 10000002 */  beq     $zero, $zero, .L80BA4C48   
/* 021A0 80BA4C40 00000000 */  nop
.L80BA4C44:
/* 021A4 80BA4C44 A1C21658 */  sb      $v0, 0x1658($t6)           ## 00001658
.L80BA4C48:
/* 021A8 80BA4C48 3C0580BA */  lui     $a1, %hi(func_80BA4C68)    ## $a1 = 80BA0000
/* 021AC 80BA4C4C 24A54C68 */  addiu   $a1, $a1, %lo(func_80BA4C68) ## $a1 = 80BA4C68
/* 021B0 80BA4C50 0C2E8AA8 */  jal     ObjectKankyo_SetupAction              
/* 021B4 80BA4C54 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 021B8 80BA4C58 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 021BC 80BA4C5C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 021C0 80BA4C60 03E00008 */  jr      $ra                        
/* 021C4 80BA4C64 00000000 */  nop
