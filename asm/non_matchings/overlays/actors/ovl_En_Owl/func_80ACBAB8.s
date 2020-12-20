.late_rodata
glabel jtbl_80ACD830
.word L80ACBAFC
.word L80ACBB38
.word L80ACBB80
.word L80ACBBC8
.word L80ACBBE4

.text
glabel func_80ACBAB8
/* 01B98 80ACBAB8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01B9C 80ACBABC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01BA0 80ACBAC0 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 01BA4 80ACBAC4 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 01BA8 80ACBAC8 8CAE1DA8 */  lw      $t6, 0x1DA8($a1)           ## 00001DA8
/* 01BAC 80ACBACC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01BB0 80ACBAD0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01BB4 80ACBAD4 95C20000 */  lhu     $v0, 0x0000($t6)           ## 00000000
/* 01BB8 80ACBAD8 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 01BBC 80ACBADC 2DE10005 */  sltiu   $at, $t7, 0x0005           
/* 01BC0 80ACBAE0 10200044 */  beq     $at, $zero, .L80ACBBF4     
/* 01BC4 80ACBAE4 000F7880 */  sll     $t7, $t7,  2               
/* 01BC8 80ACBAE8 3C0180AD */  lui     $at, %hi(jtbl_80ACD830)       ## $at = 80AD0000
/* 01BCC 80ACBAEC 002F0821 */  addu    $at, $at, $t7              
/* 01BD0 80ACBAF0 8C2FD830 */  lw      $t7, %lo(jtbl_80ACD830)($at)  
/* 01BD4 80ACBAF4 01E00008 */  jr      $t7                        
/* 01BD8 80ACBAF8 00000000 */  nop
glabel L80ACBAFC
/* 01BDC 80ACBAFC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01BE0 80ACBB00 3C180600 */  lui     $t8, %hi(D_060015CC)                ## $t8 = 06000000
/* 01BE4 80ACBB04 271815CC */  addiu   $t8, $t8, %lo(D_060015CC)           ## $t8 = 060015CC
/* 01BE8 80ACBB08 3C0580AD */  lui     $a1, %hi(func_80ACB904)    ## $a1 = 80AD0000
/* 01BEC 80ACBB0C 3C0680AD */  lui     $a2, %hi(func_80ACC540)    ## $a2 = 80AD0000
/* 01BF0 80ACBB10 24C6C540 */  addiu   $a2, $a2, %lo(func_80ACC540) ## $a2 = 80ACC540
/* 01BF4 80ACBB14 24A5B904 */  addiu   $a1, $a1, %lo(func_80ACB904) ## $a1 = 80ACB904
/* 01BF8 80ACBB18 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 01BFC 80ACBB1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C00 80ACBB20 26070198 */  addiu   $a3, $s0, 0x0198           ## $a3 = 00000198
/* 01C04 80ACBB24 0C2B342E */  jal     func_80ACD0B8              
/* 01C08 80ACBB28 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 01C0C 80ACBB2C 8E391DA8 */  lw      $t9, 0x1DA8($s1)           ## 00001DA8
/* 01C10 80ACBB30 10000030 */  beq     $zero, $zero, .L80ACBBF4   
/* 01C14 80ACBB34 97220000 */  lhu     $v0, 0x0000($t9)           ## 00000000
glabel L80ACBB38
/* 01C18 80ACBB38 3C0880AD */  lui     $t0, %hi(EnOwl_Draw)    ## $t0 = 80AD0000
/* 01C1C 80ACBB3C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01C20 80ACBB40 2508CFB8 */  addiu   $t0, $t0, %lo(EnOwl_Draw) ## $t0 = 80ACCFB8
/* 01C24 80ACBB44 3C090601 */  lui     $t1, %hi(D_0600C8A0)                ## $t1 = 06010000
/* 01C28 80ACBB48 AE080134 */  sw      $t0, 0x0134($s0)           ## 00000134
/* 01C2C 80ACBB4C 2529C8A0 */  addiu   $t1, $t1, %lo(D_0600C8A0)           ## $t1 = 0600C8A0
/* 01C30 80ACBB50 3C0580AD */  lui     $a1, %hi(func_80ACBA24)    ## $a1 = 80AD0000
/* 01C34 80ACBB54 3C0680AD */  lui     $a2, %hi(func_80ACC540)    ## $a2 = 80AD0000
/* 01C38 80ACBB58 24C6C540 */  addiu   $a2, $a2, %lo(func_80ACC540) ## $a2 = 80ACC540
/* 01C3C 80ACBB5C 24A5BA24 */  addiu   $a1, $a1, %lo(func_80ACBA24) ## $a1 = 80ACBA24
/* 01C40 80ACBB60 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 01C44 80ACBB64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C48 80ACBB68 26070198 */  addiu   $a3, $s0, 0x0198           ## $a3 = 00000198
/* 01C4C 80ACBB6C 0C2B342E */  jal     func_80ACD0B8              
/* 01C50 80ACBB70 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 01C54 80ACBB74 8E2A1DA8 */  lw      $t2, 0x1DA8($s1)           ## 00001DA8
/* 01C58 80ACBB78 1000001E */  beq     $zero, $zero, .L80ACBBF4   
/* 01C5C 80ACBB7C 95420000 */  lhu     $v0, 0x0000($t2)           ## 00000000
glabel L80ACBB80
/* 01C60 80ACBB80 3C0B80AD */  lui     $t3, %hi(EnOwl_Draw)    ## $t3 = 80AD0000
/* 01C64 80ACBB84 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01C68 80ACBB88 256BCFB8 */  addiu   $t3, $t3, %lo(EnOwl_Draw) ## $t3 = 80ACCFB8
/* 01C6C 80ACBB8C 3C0C0600 */  lui     $t4, %hi(D_060015CC)                ## $t4 = 06000000
/* 01C70 80ACBB90 AE0B0134 */  sw      $t3, 0x0134($s0)           ## 00000134
/* 01C74 80ACBB94 258C15CC */  addiu   $t4, $t4, %lo(D_060015CC)           ## $t4 = 060015CC
/* 01C78 80ACBB98 3C0580AD */  lui     $a1, %hi(func_80ACB994)    ## $a1 = 80AD0000
/* 01C7C 80ACBB9C 3C0680AD */  lui     $a2, %hi(func_80ACC540)    ## $a2 = 80AD0000
/* 01C80 80ACBBA0 24C6C540 */  addiu   $a2, $a2, %lo(func_80ACC540) ## $a2 = 80ACC540
/* 01C84 80ACBBA4 24A5B994 */  addiu   $a1, $a1, %lo(func_80ACB994) ## $a1 = 80ACB994
/* 01C88 80ACBBA8 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 01C8C 80ACBBAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C90 80ACBBB0 26070198 */  addiu   $a3, $s0, 0x0198           ## $a3 = 00000198
/* 01C94 80ACBBB4 0C2B342E */  jal     func_80ACD0B8              
/* 01C98 80ACBBB8 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 01C9C 80ACBBBC 8E2D1DA8 */  lw      $t5, 0x1DA8($s1)           ## 00001DA8
/* 01CA0 80ACBBC0 1000000C */  beq     $zero, $zero, .L80ACBBF4   
/* 01CA4 80ACBBC4 95A20000 */  lhu     $v0, 0x0000($t5)           ## 00000000
glabel L80ACBBC8
/* 01CA8 80ACBBC8 3C0E80AD */  lui     $t6, %hi(func_80ACBA24)    ## $t6 = 80AD0000
/* 01CAC 80ACBBCC 25CEBA24 */  addiu   $t6, $t6, %lo(func_80ACBA24) ## $t6 = 80ACBA24
/* 01CB0 80ACBBD0 AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 01CB4 80ACBBD4 AE0E040C */  sw      $t6, 0x040C($s0)           ## 0000040C
/* 01CB8 80ACBBD8 8E2F1DA8 */  lw      $t7, 0x1DA8($s1)           ## 00001DA8
/* 01CBC 80ACBBDC 10000005 */  beq     $zero, $zero, .L80ACBBF4   
/* 01CC0 80ACBBE0 95E20000 */  lhu     $v0, 0x0000($t7)           ## 00000000
glabel L80ACBBE4
/* 01CC4 80ACBBE4 0C00B55C */  jal     Actor_Kill
              
/* 01CC8 80ACBBE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CCC 80ACBBEC 8E381DA8 */  lw      $t8, 0x1DA8($s1)           ## 00001DA8
/* 01CD0 80ACBBF0 97020000 */  lhu     $v0, 0x0000($t8)           ## 00000000
.L80ACBBF4:
/* 01CD4 80ACBBF4 A202040A */  sb      $v0, 0x040A($s0)           ## 0000040A
/* 01CD8 80ACBBF8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01CDC 80ACBBFC 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 01CE0 80ACBC00 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 01CE4 80ACBC04 03E00008 */  jr      $ra                        
/* 01CE8 80ACBC08 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
