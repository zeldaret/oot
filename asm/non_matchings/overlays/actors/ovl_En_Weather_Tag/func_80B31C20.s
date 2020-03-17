glabel func_80B31C20
/* 00C00 80B31C20 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C04 80B31C24 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C08 80B31C28 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C0C 80B31C2C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C10 80B31C30 8CA41C44 */  lw      $a0, 0x1C44($a1)           ## 00001C44
/* 00C14 80B31C34 0C00B6E3 */  jal     func_8002DB8C              
/* 00C18 80B31C38 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00C1C 80B31C3C 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00C20 80B31C40 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00C24 80B31C44 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 00C28 80B31C48 85F8001C */  lh      $t8, 0x001C($t7)           ## 0000001C
/* 00C2C 80B31C4C 0018CA03 */  sra     $t9, $t8,  8               
/* 00C30 80B31C50 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 00C34 80B31C54 00000000 */  nop
/* 00C38 80B31C58 468021A0 */  cvt.s.w $f6, $f4                   
/* 00C3C 80B31C5C 46083282 */  mul.s   $f10, $f6, $f8             
/* 00C40 80B31C60 460A003C */  c.lt.s  $f0, $f10                  
/* 00C44 80B31C64 00000000 */  nop
/* 00C48 80B31C68 45020012 */  bc1fl   .L80B31CB4                 
/* 00C4C 80B31C6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C50 80B31C70 0C01DD89 */  jal     func_80077624              
/* 00C54 80B31C74 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00C58 80B31C78 8FA9001C */  lw      $t1, 0x001C($sp)           
/* 00C5C 80B31C7C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00C60 80B31C80 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00C64 80B31C84 00290821 */  addu    $at, $at, $t1              
/* 00C68 80B31C88 A0280B03 */  sb      $t0, 0x0B03($at)           ## 00010B03
/* 00C6C 80B31C8C 8FAB001C */  lw      $t3, 0x001C($sp)           
/* 00C70 80B31C90 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00C74 80B31C94 240A0019 */  addiu   $t2, $zero, 0x0019         ## $t2 = 00000019
/* 00C78 80B31C98 002B0821 */  addu    $at, $at, $t3              
/* 00C7C 80B31C9C A02A0B12 */  sb      $t2, 0x0B12($at)           ## 00010B12
/* 00C80 80B31CA0 3C0580B3 */  lui     $a1, %hi(func_80B31CC0)    ## $a1 = 80B30000
/* 00C84 80B31CA4 24A51CC0 */  addiu   $a1, $a1, %lo(func_80B31CC0) ## $a1 = 80B31CC0
/* 00C88 80B31CA8 0C2CC408 */  jal     func_80B31020              
/* 00C8C 80B31CAC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C90 80B31CB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B31CB4:
/* 00C94 80B31CB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C98 80B31CB8 03E00008 */  jr      $ra                        
/* 00C9C 80B31CBC 00000000 */  nop


