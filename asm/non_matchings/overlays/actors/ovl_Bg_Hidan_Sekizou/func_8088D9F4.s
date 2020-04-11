.rdata
glabel D_8088E2A0
    .asciz "../z_bg_hidan_sekizou.c"
    .balign 4

.late_rodata
glabel D_8088E300
 .word 0x3E124925
glabel D_8088E304
    .float 0.7
    .balign 4

glabel D_8088E308
    .float 0.7



.text
glabel func_8088D9F4
/* 00B34 8088D9F4 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00B38 8088D9F8 87AE0062 */  lh      $t6, 0x0062($sp)           
/* 00B3C 8088D9FC AFA60050 */  sw      $a2, 0x0050($sp)           
/* 00B40 8088DA00 00063400 */  sll     $a2, $a2, 16               
/* 00B44 8088DA04 00063403 */  sra     $a2, $a2, 16               
/* 00B48 8088DA08 01C67821 */  addu    $t7, $t6, $a2              
/* 00B4C 8088DA0C 3C018089 */  lui     $at, %hi(D_8088E300)       ## $at = 80890000
/* 00B50 8088DA10 C428E300 */  lwc1    $f8, %lo(D_8088E300)($at)  
/* 00B54 8088DA14 8FA30064 */  lw      $v1, 0x0064($sp)           
/* 00B58 8088DA18 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 00B5C 8088DA1C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B60 8088DA20 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00B64 8088DA24 05E10004 */  bgez    $t7, .L8088DA38            
/* 00B68 8088DA28 31F80007 */  andi    $t8, $t7, 0x0007           ## $t8 = 00000000
/* 00B6C 8088DA2C 13000002 */  beq     $t8, $zero, .L8088DA38     
/* 00B70 8088DA30 00000000 */  nop
/* 00B74 8088DA34 2718FFF8 */  addiu   $t8, $t8, 0xFFF8           ## $t8 = FFFFFFF8
.L8088DA38:
/* 00B78 8088DA38 0018C8C0 */  sll     $t9, $t8,  3               
/* 00B7C 8088DA3C 0338C823 */  subu    $t9, $t9, $t8              
/* 00B80 8088DA40 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 00B84 8088DA44 354A0024 */  ori     $t2, $t2, 0x0024           ## $t2 = DB060024
/* 00B88 8088DA48 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00B8C 8088DA4C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00B90 8088DA50 3C048089 */  lui     $a0, %hi(D_8088E27C)       ## $a0 = 80890000
/* 00B94 8088DA54 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 00B98 8088DA58 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00B9C 8088DA5C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00BA0 8088DA60 24C60001 */  addiu   $a2, $a2, 0x0001           ## $a2 = 00000001
/* 00BA4 8088DA64 46083282 */  mul.s   $f10, $f6, $f8             
/* 00BA8 8088DA68 00063400 */  sll     $a2, $a2, 16               
/* 00BAC 8088DA6C 00063403 */  sra     $a2, $a2, 16               
/* 00BB0 8088DA70 24630008 */  addiu   $v1, $v1, 0x0008           ## $v1 = 00000008
/* 00BB4 8088DA74 4600540D */  trunc.w.s $f16, $f10                 
/* 00BB8 8088DA78 44098000 */  mfc1    $t1, $f16                  
/* 00BBC 8088DA7C 00000000 */  nop
/* 00BC0 8088DA80 A7A90062 */  sh      $t1, 0x0062($sp)           
/* 00BC4 8088DA84 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00BC8 8088DA88 87AB0062 */  lh      $t3, 0x0062($sp)           
/* 00BCC 8088DA8C 000B6080 */  sll     $t4, $t3,  2               
/* 00BD0 8088DA90 008C2021 */  addu    $a0, $a0, $t4              
/* 00BD4 8088DA94 8C84E27C */  lw      $a0, %lo(D_8088E27C)($a0)  
/* 00BD8 8088DA98 3C0CFA00 */  lui     $t4, 0xFA00                ## $t4 = FA000000
/* 00BDC 8088DA9C 358C0001 */  ori     $t4, $t4, 0x0001           ## $t4 = FA000001
/* 00BE0 8088DAA0 00047100 */  sll     $t6, $a0,  4               
/* 00BE4 8088DAA4 000E7F02 */  srl     $t7, $t6, 28               
/* 00BE8 8088DAA8 000FC080 */  sll     $t8, $t7,  2               
/* 00BEC 8088DAAC 0338C821 */  addu    $t9, $t9, $t8              
/* 00BF0 8088DAB0 8F396FA8 */  lw      $t9, 0x6FA8($t9)           ## 80166FA8
/* 00BF4 8088DAB4 00816824 */  and     $t5, $a0, $at              
/* 00BF8 8088DAB8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00BFC 8088DABC 01B94021 */  addu    $t0, $t5, $t9              
/* 00C00 8088DAC0 01014821 */  addu    $t1, $t0, $at              
/* 00C04 8088DAC4 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00C08 8088DAC8 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
/* 00C0C 8088DACC 10C2000C */  beq     $a2, $v0, .L8088DB00       
/* 00C10 8088DAD0 3C0EFFFF */  lui     $t6, 0xFFFF                ## $t6 = FFFF0000
/* 00C14 8088DAD4 84AA0170 */  lh      $t2, 0x0170($a1)           ## 00000170
/* 00C18 8088DAD8 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 00C1C 8088DADC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.25
/* 00C20 8088DAE0 004A5823 */  subu    $t3, $v0, $t2              
/* 00C24 8088DAE4 448B9000 */  mtc1    $t3, $f18                  ## $f18 = 0.00
/* 00C28 8088DAE8 44865000 */  mtc1    $a2, $f10                  ## $f10 = 0.00
/* 00C2C 8088DAEC 46809120 */  cvt.s.w $f4, $f18                  
/* 00C30 8088DAF0 46805420 */  cvt.s.w $f16, $f10                 
/* 00C34 8088DAF4 46062202 */  mul.s   $f8, $f4, $f6              
/* 00C38 8088DAF8 10000004 */  beq     $zero, $zero, .L8088DB0C   
/* 00C3C 8088DAFC 46088300 */  add.s   $f12, $f16, $f8            
.L8088DB00:
/* 00C40 8088DB00 44869000 */  mtc1    $a2, $f18                  ## $f18 = 0.00
/* 00C44 8088DB04 00000000 */  nop
/* 00C48 8088DB08 46809320 */  cvt.s.w $f12, $f18                 
.L8088DB0C:
/* 00C4C 8088DB0C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000008
/* 00C50 8088DB10 35CE0096 */  ori     $t6, $t6, 0x0096           ## $t6 = FFFF0096
/* 00C54 8088DB14 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 0000000C
/* 00C58 8088DB18 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000008
/* 00C5C 8088DB1C 24630008 */  addiu   $v1, $v1, 0x0008           ## $v1 = 00000010
/* 00C60 8088DB20 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000010
/* 00C64 8088DB24 3C18FF00 */  lui     $t8, 0xFF00                ## $t8 = FF000000
/* 00C68 8088DB28 371800FF */  ori     $t8, $t8, 0x00FF           ## $t8 = FF0000FF
/* 00C6C 8088DB2C 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 00C70 8088DB30 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000010
/* 00C74 8088DB34 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000014
/* 00C78 8088DB38 3C018089 */  lui     $at, %hi(D_8088E304)       ## $at = 80890000
/* 00C7C 8088DB3C C424E304 */  lwc1    $f4, %lo(D_8088E304)($at)  
/* 00C80 8088DB40 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00C84 8088DB44 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 00C88 8088DB48 460C2182 */  mul.s   $f6, $f4, $f12             
/* 00C8C 8088DB4C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00C90 8088DB50 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 00C94 8088DB54 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00C98 8088DB58 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 00C9C 8088DB5C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00CA0 8088DB60 24630008 */  addiu   $v1, $v1, 0x0008           ## $v1 = 00000018
/* 00CA4 8088DB64 460A3000 */  add.s   $f0, $f6, $f10             
/* 00CA8 8088DB68 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000018
/* 00CAC 8088DB6C 3C0DDA38 */  lui     $t5, 0xDA38                ## $t5 = DA380000
/* 00CB0 8088DB70 35AD0003 */  ori     $t5, $t5, 0x0003           ## $t5 = DA380003
/* 00CB4 8088DB74 46100202 */  mul.s   $f8, $f0, $f16             
/* 00CB8 8088DB78 E4E00028 */  swc1    $f0, 0x0028($a3)           ## 00000028
/* 00CBC 8088DB7C E4E00014 */  swc1    $f0, 0x0014($a3)           ## 00000014
/* 00CC0 8088DB80 E4E00000 */  swc1    $f0, 0x0000($a3)           ## 00000000
/* 00CC4 8088DB84 C7A60058 */  lwc1    $f6, 0x0058($sp)           
/* 00CC8 8088DB88 C4B00024 */  lwc1    $f16, 0x0024($a1)          ## 00000024
/* 00CCC 8088DB8C 24630008 */  addiu   $v1, $v1, 0x0008           ## $v1 = 00000020
/* 00CD0 8088DB90 460C4482 */  mul.s   $f18, $f8, $f12            
/* 00CD4 8088DB94 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00CD8 8088DB98 240602C7 */  addiu   $a2, $zero, 0x02C7         ## $a2 = 000002C7
/* 00CDC 8088DB9C 46049080 */  add.s   $f2, $f18, $f4             
/* 00CE0 8088DBA0 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 00CE4 8088DBA4 3C018089 */  lui     $at, %hi(D_8088E308)       ## $at = 80890000
/* 00CE8 8088DBA8 46061282 */  mul.s   $f10, $f2, $f6             
/* 00CEC 8088DBAC 46105200 */  add.s   $f8, $f10, $f16            
/* 00CF0 8088DBB0 E4E80030 */  swc1    $f8, 0x0030($a3)           ## 00000030
/* 00CF4 8088DBB4 C42AE308 */  lwc1    $f10, %lo(D_8088E308)($at) 
/* 00CF8 8088DBB8 C4B20028 */  lwc1    $f18, 0x0028($a1)          ## 00000028
/* 00CFC 8088DBBC 460C5402 */  mul.s   $f16, $f10, $f12           
/* 00D00 8088DBC0 46049180 */  add.s   $f6, $f18, $f4             
/* 00D04 8088DBC4 46103200 */  add.s   $f8, $f6, $f16             
/* 00D08 8088DBC8 E4E80034 */  swc1    $f8, 0x0034($a3)           ## 00000034
/* 00D0C 8088DBCC C7B2005C */  lwc1    $f18, 0x005C($sp)          
/* 00D10 8088DBD0 C4AA002C */  lwc1    $f10, 0x002C($a1)          ## 0000002C
/* 00D14 8088DBD4 3C058089 */  lui     $a1, %hi(D_8088E2A0)       ## $a1 = 80890000
/* 00D18 8088DBD8 46121102 */  mul.s   $f4, $f2, $f18             
/* 00D1C 8088DBDC 24A5E2A0 */  addiu   $a1, $a1, %lo(D_8088E2A0)  ## $a1 = 8088E2A0
/* 00D20 8088DBE0 460A2180 */  add.s   $f6, $f4, $f10             
/* 00D24 8088DBE4 E4E60038 */  swc1    $f6, 0x0038($a3)           ## 00000038
/* 00D28 8088DBE8 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000018
/* 00D2C 8088DBEC AFA30064 */  sw      $v1, 0x0064($sp)           
/* 00D30 8088DBF0 0C034A17 */  jal     Matrix_CheckFloats              
/* 00D34 8088DBF4 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 00D38 8088DBF8 8FB90048 */  lw      $t9, 0x0048($sp)           
/* 00D3C 8088DBFC AFA20018 */  sw      $v0, 0x0018($sp)           
/* 00D40 8088DC00 24050040 */  addiu   $a1, $zero, 0x0040         ## $a1 = 00000040
/* 00D44 8088DC04 0C031A73 */  jal     Graph_Alloc
              
/* 00D48 8088DC08 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 00D4C 8088DC0C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00D50 8088DC10 0C034610 */  jal     Matrix_MtxFToMtx              
/* 00D54 8088DC14 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00D58 8088DC18 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 00D5C 8088DC1C 8FA30064 */  lw      $v1, 0x0064($sp)           
/* 00D60 8088DC20 3C0A0601 */  lui     $t2, 0x0601                ## $t2 = 06010000
/* 00D64 8088DC24 AD020004 */  sw      $v0, 0x0004($t0)           ## 00000004
/* 00D68 8088DC28 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00D6C 8088DC2C 254ADC30 */  addiu   $t2, $t2, 0xDC30           ## $t2 = 0600DC30
/* 00D70 8088DC30 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 00D74 8088DC34 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00D78 8088DC38 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 00D7C 8088DC3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D80 8088DC40 24630008 */  addiu   $v1, $v1, 0x0008           ## $v1 = 00000008
/* 00D84 8088DC44 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000008
/* 00D88 8088DC48 03E00008 */  jr      $ra                        
/* 00D8C 8088DC4C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000


