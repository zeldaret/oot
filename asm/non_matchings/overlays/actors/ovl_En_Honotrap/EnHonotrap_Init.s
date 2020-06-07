glabel EnHonotrap_Init
/* 00414 80A5A044 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00418 80A5A048 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0041C 80A5A04C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00420 80A5A050 3C0580A6 */  lui     $a1, %hi(D_80A5B03C)       ## $a1 = 80A60000
/* 00424 80A5A054 24A5B03C */  addiu   $a1, $a1, %lo(D_80A5B03C)  ## $a1 = 80A5B03C
/* 00428 80A5A058 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0042C 80A5A05C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00430 80A5A060 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00434 80A5A064 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00438 80A5A068 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 0043C 80A5A06C 15C00005 */  bne     $t6, $zero, .L80A5A084     
/* 00440 80A5A070 00000000 */  nop
/* 00444 80A5A074 0C29675C */  jal     func_80A59D70              
/* 00448 80A5A078 00000000 */  nop
/* 0044C 80A5A07C 10000004 */  beq     $zero, $zero, .L80A5A090   
/* 00450 80A5A080 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A5A084:
/* 00454 80A5A084 0C2967C2 */  jal     func_80A59F08              
/* 00458 80A5A088 00000000 */  nop
/* 0045C 80A5A08C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A5A090:
/* 00460 80A5A090 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00464 80A5A094 03E00008 */  jr      $ra                        
/* 00468 80A5A098 00000000 */  nop
