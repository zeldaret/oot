.late_rodata
glabel D_80B0BD0C
    .float 0.01

.text
glabel EnStream_Init
/* 00008 80B0B7A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0000C 80B0B7AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00010 80B0B7B0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00014 80B0B7B4 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00018 80B0B7B8 3C0580B1 */  lui     $a1, %hi(D_80B0BCC0)       ## $a1 = 80B10000
/* 0001C 80B0B7BC 24A5BCC0 */  addiu   $a1, $a1, %lo(D_80B0BCC0)  ## $a1 = 80B0BCC0
/* 00020 80B0B7C0 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 00024 80B0B7C4 AC8F0150 */  sw      $t7, 0x0150($a0)           ## 00000150
/* 00028 80B0B7C8 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0002C 80B0B7CC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00030 80B0B7D0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00034 80B0B7D4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00038 80B0B7D8 3C0580B1 */  lui     $a1, %hi(func_80B0BAC8)    ## $a1 = 80B10000
/* 0003C 80B0B7DC 8C820150 */  lw      $v0, 0x0150($a0)           ## 00000150
/* 00040 80B0B7E0 10400005 */  beq     $v0, $zero, .L80B0B7F8     
/* 00044 80B0B7E4 00000000 */  nop
/* 00048 80B0B7E8 14410003 */  bne     $v0, $at, .L80B0B7F8       
/* 0004C 80B0B7EC 3C0180B1 */  lui     $at, %hi(D_80B0BD0C)       ## $at = 80B10000
/* 00050 80B0B7F0 C424BD0C */  lwc1    $f4, %lo(D_80B0BD0C)($at)  
/* 00054 80B0B7F4 E4840054 */  swc1    $f4, 0x0054($a0)           ## 00000054
.L80B0B7F8:
/* 00058 80B0B7F8 0C2C2DE8 */  jal     func_80B0B7A0              
/* 0005C 80B0B7FC 24A5BAC8 */  addiu   $a1, $a1, %lo(func_80B0BAC8) ## $a1 = 80B0BAC8
/* 00060 80B0B800 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00064 80B0B804 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00068 80B0B808 03E00008 */  jr      $ra                        
/* 0006C 80B0B80C 00000000 */  nop
