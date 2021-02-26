glabel func_80A1CB08
/* 02168 80A1CB08 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0216C 80A1CB0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02170 80A1CB10 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02174 80A1CB14 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02178 80A1CB18 0C042F6F */  jal     func_8010BDBC              
/* 0217C 80A1CB1C 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 02180 80A1CB20 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 02184 80A1CB24 54410009 */  bnel    $v0, $at, .L80A1CB4C       
/* 02188 80A1CB28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0218C 80A1CB2C 0C041AF2 */  jal     func_80106BC8              
/* 02190 80A1CB30 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02194 80A1CB34 10400004 */  beq     $v0, $zero, .L80A1CB48     
/* 02198 80A1CB38 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 0219C 80A1CB3C 3C0E80A2 */  lui     $t6, %hi(func_80A1BCB4)    ## $t6 = 80A20000
/* 021A0 80A1CB40 25CEBCB4 */  addiu   $t6, $t6, %lo(func_80A1BCB4) ## $t6 = 80A1BCB4
/* 021A4 80A1CB44 ADEE0354 */  sw      $t6, 0x0354($t7)           ## 00000354
.L80A1CB48:
/* 021A8 80A1CB48 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A1CB4C:
/* 021AC 80A1CB4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 021B0 80A1CB50 03E00008 */  jr      $ra                        
/* 021B4 80A1CB54 00000000 */  nop
