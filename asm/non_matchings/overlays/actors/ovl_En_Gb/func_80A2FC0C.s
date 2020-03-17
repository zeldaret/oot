glabel func_80A2FC0C
/* 00A8C 80A2FC0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A90 80A2FC10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A94 80A2FC14 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A98 80A2FC18 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00A9C 80A2FC1C 0C042F6F */  jal     func_8010BDBC              
/* 00AA0 80A2FC20 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00AA4 80A2FC24 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00AA8 80A2FC28 5441000E */  bnel    $v0, $at, .L80A2FC64       
/* 00AAC 80A2FC2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AB0 80A2FC30 0C041AF2 */  jal     func_80106BC8              
/* 00AB4 80A2FC34 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00AB8 80A2FC38 10400009 */  beq     $v0, $zero, .L80A2FC60     
/* 00ABC 80A2FC3C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00AC0 80A2FC40 0C00BC65 */  jal     func_8002F194              
/* 00AC4 80A2FC44 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00AC8 80A2FC48 0C28BC60 */  jal     func_80A2F180              
/* 00ACC 80A2FC4C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00AD0 80A2FC50 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00AD4 80A2FC54 3C0E80A3 */  lui     $t6, %hi(func_80A2F83C)    ## $t6 = 80A30000
/* 00AD8 80A2FC58 25CEF83C */  addiu   $t6, $t6, %lo(func_80A2F83C) ## $t6 = 80A2F83C
/* 00ADC 80A2FC5C ADEE0238 */  sw      $t6, 0x0238($t7)           ## 00000238
.L80A2FC60:
/* 00AE0 80A2FC60 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A2FC64:
/* 00AE4 80A2FC64 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AE8 80A2FC68 03E00008 */  jr      $ra                        
/* 00AEC 80A2FC6C 00000000 */  nop


