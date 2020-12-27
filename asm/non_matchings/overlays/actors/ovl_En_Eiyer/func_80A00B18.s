.late_rodata
glabel D_80A019F8
 .word 0x3E858150
glabel D_80A019FC
    .float 0.8

.text
glabel func_80A00B18
/* 00B78 80A00B18 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00B7C 80A00B1C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00B80 80A00B20 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B84 80A00B24 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B88 80A00B28 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00B8C 80A00B2C 0C02927F */  jal     SkelAnime_Update
              
/* 00B90 80A00B30 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00B94 80A00B34 AFA2003C */  sw      $v0, 0x003C($sp)           
/* 00B98 80A00B38 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00B9C 80A00B3C C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 00BA0 80A00B40 44812000 */  mtc1    $at, $f4                   ## $f4 = 12.00
/* 00BA4 80A00B44 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00BA8 80A00B48 4604003C */  c.lt.s  $f0, $f4                   
/* 00BAC 80A00B4C 00000000 */  nop
/* 00BB0 80A00B50 45020026 */  bc1fl   .L80A00BEC                 
/* 00BB4 80A00B54 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 00BB8 80A00B58 3C0180A0 */  lui     $at, %hi(D_80A019F8)       ## $at = 80A00000
/* 00BBC 80A00B5C C42619F8 */  lwc1    $f6, %lo(D_80A019F8)($at)  
/* 00BC0 80A00B60 46003302 */  mul.s   $f12, $f6, $f0             
/* 00BC4 80A00B64 0C041184 */  jal     cosf
              
/* 00BC8 80A00B68 E7AC002C */  swc1    $f12, 0x002C($sp)          
/* 00BCC 80A00B6C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00BD0 80A00B70 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 00BD4 80A00B74 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00BD8 80A00B78 44818000 */  mtc1    $at, $f16                  ## $f16 = 40.00
/* 00BDC 80A00B7C 46004281 */  sub.s   $f10, $f8, $f0             
/* 00BE0 80A00B80 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 00BE4 80A00B84 C7AC002C */  lwc1    $f12, 0x002C($sp)          
/* 00BE8 80A00B88 46105482 */  mul.s   $f18, $f10, $f16           
/* 00BEC 80A00B8C 46049180 */  add.s   $f6, $f18, $f4             
/* 00BF0 80A00B90 0C0400A4 */  jal     sinf
              
/* 00BF4 80A00B94 E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
/* 00BF8 80A00B98 3C01C220 */  lui     $at, 0xC220                ## $at = C2200000
/* 00BFC 80A00B9C 44814000 */  mtc1    $at, $f8                   ## $f8 = -40.00
/* 00C00 80A00BA0 00000000 */  nop
/* 00C04 80A00BA4 46080282 */  mul.s   $f10, $f0, $f8             
/* 00C08 80A00BA8 E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 00C0C 80A00BAC 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00C10 80A00BB0 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00C14 80A00BB4 C7B00034 */  lwc1    $f16, 0x0034($sp)          
/* 00C18 80A00BB8 C604027C */  lwc1    $f4, 0x027C($s0)           ## 0000027C
/* 00C1C 80A00BBC 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00C20 80A00BC0 46100482 */  mul.s   $f18, $f0, $f16            
/* 00C24 80A00BC4 46049180 */  add.s   $f6, $f18, $f4             
/* 00C28 80A00BC8 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 00C2C 80A00BCC E6060024 */  swc1    $f6, 0x0024($s0)           ## 00000024
/* 00C30 80A00BD0 C7A80034 */  lwc1    $f8, 0x0034($sp)           
/* 00C34 80A00BD4 C6100284 */  lwc1    $f16, 0x0284($s0)          ## 00000284
/* 00C38 80A00BD8 46080282 */  mul.s   $f10, $f0, $f8             
/* 00C3C 80A00BDC 46105480 */  add.s   $f18, $f10, $f16           
/* 00C40 80A00BE0 1000000C */  beq     $zero, $zero, .L80A00C14   
/* 00C44 80A00BE4 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 00C48 80A00BE8 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
.L80A00BEC:
/* 00C4C 80A00BEC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
/* 00C50 80A00BF0 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00C54 80A00BF4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00C58 80A00BF8 46062200 */  add.s   $f8, $f4, $f6              
/* 00C5C 80A00BFC 44054000 */  mfc1    $a1, $f8                   
/* 00C60 80A00C00 0C01DE80 */  jal     Math_StepToF
              
/* 00C64 80A00C04 00000000 */  nop
/* 00C68 80A00C08 3C0180A0 */  lui     $at, %hi(D_80A019FC)       ## $at = 80A00000
/* 00C6C 80A00C0C C42A19FC */  lwc1    $f10, %lo(D_80A019FC)($at) 
/* 00C70 80A00C10 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
.L80A00C14:
/* 00C74 80A00C14 8FAE003C */  lw      $t6, 0x003C($sp)           
/* 00C78 80A00C18 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00C7C 80A00C1C 26050078 */  addiu   $a1, $s0, 0x0078           ## $a1 = 00000078
/* 00C80 80A00C20 11C00008 */  beq     $t6, $zero, .L80A00C44     
/* 00C84 80A00C24 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 00C88 80A00C28 920F0299 */  lbu     $t7, 0x0299($s0)           ## 00000299
/* 00C8C 80A00C2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C90 80A00C30 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00C94 80A00C34 0C28012F */  jal     func_80A004BC              
/* 00C98 80A00C38 A2180299 */  sb      $t8, 0x0299($s0)           ## 00000299
/* 00C9C 80A00C3C 10000008 */  beq     $zero, $zero, .L80A00C60   
/* 00CA0 80A00C40 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A00C44:
/* 00CA4 80A00C44 26190024 */  addiu   $t9, $s0, 0x0024           ## $t9 = 00000024
/* 00CA8 80A00C48 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00CAC 80A00C4C 27A60030 */  addiu   $a2, $sp, 0x0030           ## $a2 = FFFFFFF0
/* 00CB0 80A00C50 0C00F269 */  jal     func_8003C9A4              
/* 00CB4 80A00C54 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 00CB8 80A00C58 E6000080 */  swc1    $f0, 0x0080($s0)           ## 00000080
/* 00CBC 80A00C5C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A00C60:
/* 00CC0 80A00C60 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00CC4 80A00C64 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00CC8 80A00C68 03E00008 */  jr      $ra                        
/* 00CCC 80A00C6C 00000000 */  nop
