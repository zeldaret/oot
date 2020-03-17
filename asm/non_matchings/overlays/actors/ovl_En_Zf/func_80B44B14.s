glabel func_80B44B14
/* 00AC4 80B44B14 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00AC8 80B44B18 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 00ACC 80B44B1C AFBE0050 */  sw      $s8, 0x0050($sp)           
/* 00AD0 80B44B20 AFB7004C */  sw      $s7, 0x004C($sp)           
/* 00AD4 80B44B24 AFB60048 */  sw      $s6, 0x0048($sp)           
/* 00AD8 80B44B28 AFB50044 */  sw      $s5, 0x0044($sp)           
/* 00ADC 80B44B2C AFB40040 */  sw      $s4, 0x0040($sp)           
/* 00AE0 80B44B30 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 00AE4 80B44B34 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 00AE8 80B44B38 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 00AEC 80B44B3C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00AF0 80B44B40 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 00AF4 80B44B44 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 00AF8 80B44B48 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00AFC 80B44B4C AFA40058 */  sw      $a0, 0x0058($sp)           
/* 00B00 80B44B50 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 00B04 80B44B54 AFA60060 */  sw      $a2, 0x0060($sp)           
/* 00B08 80B44B58 8CE21C44 */  lw      $v0, 0x1C44($a3)           ## 00001C44
/* 00B0C 80B44B5C 00058400 */  sll     $s0, $a1, 16               
/* 00B10 80B44B60 0006AC00 */  sll     $s5, $a2, 16               
/* 00B14 80B44B64 24570024 */  addiu   $s7, $v0, 0x0024           ## $s7 = 00000024
/* 00B18 80B44B68 0015AC03 */  sra     $s5, $s5, 16               
/* 00B1C 80B44B6C 00108403 */  sra     $s0, $s0, 16               
/* 00B20 80B44B70 24110007 */  addiu   $s1, $zero, 0x0007         ## $s1 = 00000007
/* 00B24 80B44B74 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 00B28 80B44B78 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 00000024
/* 00B2C 80B44B7C 0C2D11AA */  jal     func_80B446A8              
/* 00B30 80B44B80 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
/* 00B34 80B44B84 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 00B38 80B44B88 4481C000 */  mtc1    $at, $f24                  ## $f24 = 500.00
/* 00B3C 80B44B8C 3C0180B5 */  lui     $at, %hi(D_80B4A340)       ## $at = 80B50000
/* 00B40 80B44B90 C434A340 */  lwc1    $f20, %lo(D_80B4A340)($at) 
/* 00B44 80B44B94 8FA40058 */  lw      $a0, 0x0058($sp)           
/* 00B48 80B44B98 3C0180B5 */  lui     $at, %hi(D_80B4A344)       ## $at = 80B50000
/* 00B4C 80B44B9C C436A344 */  lwc1    $f22, %lo(D_80B4A344)($at) 
/* 00B50 80B44BA0 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00B54 80B44BA4 44812000 */  mtc1    $at, $f4                   ## $f4 = 200.00
/* 00B58 80B44BA8 C4860004 */  lwc1    $f6, 0x0004($a0)           ## 00000004
/* 00B5C 80B44BAC 0002F400 */  sll     $s8, $v0, 16               
/* 00B60 80B44BB0 00109400 */  sll     $s2, $s0, 16               
/* 00B64 80B44BB4 4606203C */  c.lt.s  $f4, $f6                   
/* 00B68 80B44BB8 00159C00 */  sll     $s3, $s5, 16               
/* 00B6C 80B44BBC 001EF403 */  sra     $s8, $s8, 16               
/* 00B70 80B44BC0 00129403 */  sra     $s2, $s2, 16               
/* 00B74 80B44BC4 45000005 */  bc1f    .L80B44BDC                 
/* 00B78 80B44BC8 00139C03 */  sra     $s3, $s3, 16               
/* 00B7C 80B44BCC 3C014391 */  lui     $at, 0x4391                ## $at = 43910000
/* 00B80 80B44BD0 4481C000 */  mtc1    $at, $f24                  ## $f24 = 290.00
/* 00B84 80B44BD4 24110017 */  addiu   $s1, $zero, 0x0017         ## $s1 = 00000017
/* 00B88 80B44BD8 24140008 */  addiu   $s4, $zero, 0x0008         ## $s4 = 00000008
.L80B44BDC:
/* 00B8C 80B44BDC 0234082A */  slt     $at, $s1, $s4              
/* 00B90 80B44BE0 1420002D */  bne     $at, $zero, .L80B44C98     
/* 00B94 80B44BE4 2416000C */  addiu   $s6, $zero, 0x000C         ## $s6 = 0000000C
/* 00B98 80B44BE8 3C1580B5 */  lui     $s5, %hi(D_80B4A090)       ## $s5 = 80B50000
/* 00B9C 80B44BEC 26B5A090 */  addiu   $s5, $s5, %lo(D_80B4A090)  ## $s5 = 80B4A090
.L80B44BF0:
/* 00BA0 80B44BF0 02360019 */  multu   $s1, $s6                   
/* 00BA4 80B44BF4 8FA40058 */  lw      $a0, 0x0058($sp)           
/* 00BA8 80B44BF8 00007012 */  mflo    $t6                        
/* 00BAC 80B44BFC 02AE8021 */  addu    $s0, $s5, $t6              
/* 00BB0 80B44C00 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 00BB4 80B44C04 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00BB8 80B44C08 4600C03C */  c.lt.s  $f24, $f0                  
/* 00BBC 80B44C0C 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 00000024
/* 00BC0 80B44C10 4503001C */  bc1tl   .L80B44C84                 
/* 00BC4 80B44C14 2631FFFF */  addiu   $s1, $s1, 0xFFFF           ## $s1 = 00000016
/* 00BC8 80B44C18 523E0017 */  beql    $s1, $s8, .L80B44C78       
/* 00BCC 80B44C1C 001E9400 */  sll     $s2, $s8, 16               
/* 00BD0 80B44C20 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 00BD4 80B44C24 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00BD8 80B44C28 4614003C */  c.lt.s  $f0, $f20                  
/* 00BDC 80B44C2C 00000000 */  nop
/* 00BE0 80B44C30 45020009 */  bc1fl   .L80B44C58                 
/* 00BE4 80B44C34 4616003C */  c.lt.s  $f0, $f22                  
/* 00BE8 80B44C38 00129C00 */  sll     $s3, $s2, 16               
/* 00BEC 80B44C3C 4600A586 */  mov.s   $f22, $f20                 
/* 00BF0 80B44C40 00119400 */  sll     $s2, $s1, 16               
/* 00BF4 80B44C44 00139C03 */  sra     $s3, $s3, 16               
/* 00BF8 80B44C48 46000506 */  mov.s   $f20, $f0                  
/* 00BFC 80B44C4C 1000000C */  beq     $zero, $zero, .L80B44C80   
/* 00C00 80B44C50 00129403 */  sra     $s2, $s2, 16               
/* 00C04 80B44C54 4616003C */  c.lt.s  $f0, $f22                  
.L80B44C58:
/* 00C08 80B44C58 00000000 */  nop
/* 00C0C 80B44C5C 45020009 */  bc1fl   .L80B44C84                 
/* 00C10 80B44C60 2631FFFF */  addiu   $s1, $s1, 0xFFFF           ## $s1 = 00000015
/* 00C14 80B44C64 00119C00 */  sll     $s3, $s1, 16               
/* 00C18 80B44C68 46000586 */  mov.s   $f22, $f0                  
/* 00C1C 80B44C6C 10000004 */  beq     $zero, $zero, .L80B44C80   
/* 00C20 80B44C70 00139C03 */  sra     $s3, $s3, 16               
/* 00C24 80B44C74 001E9400 */  sll     $s2, $s8, 16               
.L80B44C78:
/* 00C28 80B44C78 10000007 */  beq     $zero, $zero, .L80B44C98   
/* 00C2C 80B44C7C 00129403 */  sra     $s2, $s2, 16               
.L80B44C80:
/* 00C30 80B44C80 2631FFFF */  addiu   $s1, $s1, 0xFFFF           ## $s1 = 00000014
.L80B44C84:
/* 00C34 80B44C84 00118C00 */  sll     $s1, $s1, 16               
/* 00C38 80B44C88 00118C03 */  sra     $s1, $s1, 16               
/* 00C3C 80B44C8C 0234082A */  slt     $at, $s1, $s4              
/* 00C40 80B44C90 1020FFD7 */  beq     $at, $zero, .L80B44BF0     
/* 00C44 80B44C94 00000000 */  nop
.L80B44C98:
/* 00C48 80B44C98 127E0004 */  beq     $s3, $s8, .L80B44CAC       
/* 00C4C 80B44C9C D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00C50 80B44CA0 0012F400 */  sll     $s8, $s2, 16               
/* 00C54 80B44CA4 10000003 */  beq     $zero, $zero, .L80B44CB4   
/* 00C58 80B44CA8 001EF403 */  sra     $s8, $s8, 16               
.L80B44CAC:
/* 00C5C 80B44CAC 0013F400 */  sll     $s8, $s3, 16               
/* 00C60 80B44CB0 001EF403 */  sra     $s8, $s8, 16               
.L80B44CB4:
/* 00C64 80B44CB4 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 00C68 80B44CB8 03C01025 */  or      $v0, $s8, $zero            ## $v0 = 00000000
/* 00C6C 80B44CBC 8FBE0050 */  lw      $s8, 0x0050($sp)           
/* 00C70 80B44CC0 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 00C74 80B44CC4 D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 00C78 80B44CC8 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00C7C 80B44CCC 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 00C80 80B44CD0 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 00C84 80B44CD4 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 00C88 80B44CD8 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 00C8C 80B44CDC 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 00C90 80B44CE0 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 00C94 80B44CE4 8FB7004C */  lw      $s7, 0x004C($sp)           
/* 00C98 80B44CE8 03E00008 */  jr      $ra                        
/* 00C9C 80B44CEC 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000


