glabel func_80BA2DD4
/* 00334 80BA2DD4 27BDFF08 */  addiu   $sp, $sp, 0xFF08           ## $sp = FFFFFF08
/* 00338 80BA2DD8 3C0F80BA */  lui     $t7, %hi(D_80BA5948)       ## $t7 = 80BA0000
/* 0033C 80BA2DDC AFBF006C */  sw      $ra, 0x006C($sp)           
/* 00340 80BA2DE0 AFB60068 */  sw      $s6, 0x0068($sp)           
/* 00344 80BA2DE4 AFB50064 */  sw      $s5, 0x0064($sp)           
/* 00348 80BA2DE8 AFB40060 */  sw      $s4, 0x0060($sp)           
/* 0034C 80BA2DEC AFB3005C */  sw      $s3, 0x005C($sp)           
/* 00350 80BA2DF0 AFB20058 */  sw      $s2, 0x0058($sp)           
/* 00354 80BA2DF4 AFB10054 */  sw      $s1, 0x0054($sp)           
/* 00358 80BA2DF8 AFB00050 */  sw      $s0, 0x0050($sp)           
/* 0035C 80BA2DFC F7BE0048 */  sdc1    $f30, 0x0048($sp)          
/* 00360 80BA2E00 F7BC0040 */  sdc1    $f28, 0x0040($sp)          
/* 00364 80BA2E04 F7BA0038 */  sdc1    $f26, 0x0038($sp)          
/* 00368 80BA2E08 F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 0036C 80BA2E0C F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 00370 80BA2E10 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 00374 80BA2E14 AFA400F8 */  sw      $a0, 0x00F8($sp)           
/* 00378 80BA2E18 25EF5948 */  addiu   $t7, $t7, %lo(D_80BA5948)  ## $t7 = 80BA5948
/* 0037C 80BA2E1C 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80BA5948
/* 00380 80BA2E20 27AE00B8 */  addiu   $t6, $sp, 0x00B8           ## $t6 = FFFFFFC0
/* 00384 80BA2E24 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80BA594C
/* 00388 80BA2E28 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFC0
/* 0038C 80BA2E2C 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80BA5950
/* 00390 80BA2E30 3C0980BA */  lui     $t1, %hi(D_80BA5954)       ## $t1 = 80BA0000
/* 00394 80BA2E34 25295954 */  addiu   $t1, $t1, %lo(D_80BA5954)  ## $t1 = 80BA5954
/* 00398 80BA2E38 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFC4
/* 0039C 80BA2E3C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFC8
/* 003A0 80BA2E40 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80BA5954
/* 003A4 80BA2E44 27A800AC */  addiu   $t0, $sp, 0x00AC           ## $t0 = FFFFFFB4
/* 003A8 80BA2E48 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80BA5958
/* 003AC 80BA2E4C AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFB4
/* 003B0 80BA2E50 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80BA595C
/* 003B4 80BA2E54 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFB8
/* 003B8 80BA2E58 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 003BC 80BA2E5C AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFBC
/* 003C0 80BA2E60 84AC00A4 */  lh      $t4, 0x00A4($a1)           ## 000000A4
/* 003C4 80BA2E64 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 003C8 80BA2E68 8CB41C44 */  lw      $s4, 0x1C44($a1)           ## 00001C44
/* 003CC 80BA2E6C 15810047 */  bne     $t4, $at, .L80BA2F8C       
/* 003D0 80BA2E70 3C108016 */  lui     $s0, 0x8016                ## $s0 = 80160000
/* 003D4 80BA2E74 2610E660 */  addiu   $s0, $s0, 0xE660           ## $s0 = 8015E660
/* 003D8 80BA2E78 8E0D1360 */  lw      $t5, 0x1360($s0)           ## 8015F9C0
/* 003DC 80BA2E7C 8FA400F8 */  lw      $a0, 0x00F8($sp)           
/* 003E0 80BA2E80 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 003E4 80BA2E84 15A10041 */  bne     $t5, $at, .L80BA2F8C       
/* 003E8 80BA2E88 2484164C */  addiu   $a0, $a0, 0x164C           ## $a0 = 0000164C
/* 003EC 80BA2E8C 0C032D9E */  jal     func_800CB678              
/* 003F0 80BA2E90 24A500E0 */  addiu   $a1, $a1, 0x00E0           ## $a1 = 000000E0
/* 003F4 80BA2E94 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 003F8 80BA2E98 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 003FC 80BA2E9C C62400E0 */  lwc1    $f4, 0x00E0($s1)           ## 000000E0
/* 00400 80BA2EA0 8FAE00F8 */  lw      $t6, 0x00F8($sp)           
/* 00404 80BA2EA4 460A0303 */  div.s   $f12, $f0, $f10            
/* 00408 80BA2EA8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0040C 80BA2EAC E5C4164C */  swc1    $f4, 0x164C($t6)           ## 0000164C
/* 00410 80BA2EB0 8FAF00F8 */  lw      $t7, 0x00F8($sp)           
/* 00414 80BA2EB4 C62600E4 */  lwc1    $f6, 0x00E4($s1)           ## 000000E4
/* 00418 80BA2EB8 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 0041C 80BA2EBC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00420 80BA2EC0 E5E61650 */  swc1    $f6, 0x1650($t7)           ## 00001650
/* 00424 80BA2EC4 8FB800F8 */  lw      $t8, 0x00F8($sp)           
/* 00428 80BA2EC8 C62800E8 */  lwc1    $f8, 0x00E8($s1)           ## 000000E8
/* 0042C 80BA2ECC E7081654 */  swc1    $f8, 0x1654($t8)           ## 00001654
/* 00430 80BA2ED0 460C203C */  c.lt.s  $f4, $f12                  
/* 00434 80BA2ED4 00000000 */  nop
/* 00438 80BA2ED8 45000003 */  bc1f    .L80BA2EE8                 
/* 0043C 80BA2EDC 00000000 */  nop
/* 00440 80BA2EE0 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 00444 80BA2EE4 00000000 */  nop
.L80BA2EE8:
/* 00448 80BA2EE8 3C0180BA */  lui     $at, %hi(D_80BA5C14)       ## $at = 80BA0000
/* 0044C 80BA2EEC C4265C14 */  lwc1    $f6, %lo(D_80BA5C14)($at)  
/* 00450 80BA2EF0 3C0180BA */  lui     $at, %hi(D_80BA5C18)       ## $at = 80BA0000
/* 00454 80BA2EF4 C42A5C18 */  lwc1    $f10, %lo(D_80BA5C18)($at) 
/* 00458 80BA2EF8 460C3202 */  mul.s   $f8, $f6, $f12             
/* 0045C 80BA2EFC 3C0480BA */  lui     $a0, %hi(D_80BA5960)       ## $a0 = 80BA0000
/* 00460 80BA2F00 24845960 */  addiu   $a0, $a0, %lo(D_80BA5960)  ## $a0 = 80BA5960
/* 00464 80BA2F04 24052071 */  addiu   $a1, $zero, 0x2071         ## $a1 = 00002071
/* 00468 80BA2F08 460A4100 */  add.s   $f4, $f8, $f10             
/* 0046C 80BA2F0C 44062000 */  mfc1    $a2, $f4                   
/* 00470 80BA2F10 0C03D0DB */  jal     func_800F436C              
/* 00474 80BA2F14 00000000 */  nop
/* 00478 80BA2F18 96221D74 */  lhu     $v0, 0x1D74($s1)           ## 00001D74
/* 0047C 80BA2F1C 240101D9 */  addiu   $at, $zero, 0x01D9         ## $at = 000001D9
/* 00480 80BA2F20 1041000A */  beq     $v0, $at, .L80BA2F4C       
/* 00484 80BA2F24 24010247 */  addiu   $at, $zero, 0x0247         ## $at = 00000247
/* 00488 80BA2F28 1041000C */  beq     $v0, $at, .L80BA2F5C       
/* 0048C 80BA2F2C 3C048013 */  lui     $a0, 0x8013                ## $a0 = 80130000
/* 00490 80BA2F30 240102FB */  addiu   $at, $zero, 0x02FB         ## $at = 000002FB
/* 00494 80BA2F34 1041000F */  beq     $v0, $at, .L80BA2F74       
/* 00498 80BA2F38 24010303 */  addiu   $at, $zero, 0x0303         ## $at = 00000303
/* 0049C 80BA2F3C 10410011 */  beq     $v0, $at, .L80BA2F84       
/* 004A0 80BA2F40 00000000 */  nop
/* 004A4 80BA2F44 10000012 */  beq     $zero, $zero, .L80BA2F90   
/* 004A8 80BA2F48 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80BA2F4C:
/* 004AC 80BA2F4C 0C01E233 */  jal     func_800788CC              
/* 004B0 80BA2F50 24046844 */  addiu   $a0, $zero, 0x6844         ## $a0 = 00006844
/* 004B4 80BA2F54 1000000E */  beq     $zero, $zero, .L80BA2F90   
/* 004B8 80BA2F58 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80BA2F5C:
/* 004BC 80BA2F5C 248433D4 */  addiu   $a0, $a0, 0x33D4           ## $a0 = 000033D4
/* 004C0 80BA2F60 2405685F */  addiu   $a1, $zero, 0x685F         ## $a1 = 0000685F
/* 004C4 80BA2F64 0C03D149 */  jal     func_800F4524              
/* 004C8 80BA2F68 24060020 */  addiu   $a2, $zero, 0x0020         ## $a2 = 00000020
/* 004CC 80BA2F6C 10000008 */  beq     $zero, $zero, .L80BA2F90   
/* 004D0 80BA2F70 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80BA2F74:
/* 004D4 80BA2F74 0C01E221 */  jal     func_80078884              
/* 004D8 80BA2F78 24042072 */  addiu   $a0, $zero, 0x2072         ## $a0 = 00002072
/* 004DC 80BA2F7C 10000004 */  beq     $zero, $zero, .L80BA2F90   
/* 004E0 80BA2F80 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80BA2F84:
/* 004E4 80BA2F84 0C01E221 */  jal     func_80078884              
/* 004E8 80BA2F88 24046865 */  addiu   $a0, $zero, 0x6865         ## $a0 = 00006865
.L80BA2F8C:
/* 004EC 80BA2F8C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80BA2F90:
/* 004F0 80BA2F90 0221C821 */  addu    $t9, $s1, $at              
/* 004F4 80BA2F94 AFB90088 */  sw      $t9, 0x0088($sp)           
/* 004F8 80BA2F98 93220B15 */  lbu     $v0, 0x0B15($t9)           ## 00000B15
/* 004FC 80BA2F9C 3C108016 */  lui     $s0, 0x8016                ## $s0 = 80160000
/* 00500 80BA2FA0 2610E660 */  addiu   $s0, $s0, 0xE660           ## $s0 = 8015E660
/* 00504 80BA2FA4 28410040 */  slti    $at, $v0, 0x0040           
/* 00508 80BA2FA8 1020000F */  beq     $at, $zero, .L80BA2FE8     
/* 0050C 80BA2FAC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 00510 80BA2FB0 8E090000 */  lw      $t1, 0x0000($s0)           ## 8015E660
/* 00514 80BA2FB4 240100EE */  addiu   $at, $zero, 0x00EE         ## $at = 000000EE
/* 00518 80BA2FB8 8FAC0088 */  lw      $t4, 0x0088($sp)           
/* 0051C 80BA2FBC 55210007 */  bnel    $t1, $at, .L80BA2FDC       
/* 00520 80BA2FC0 246B0010 */  addiu   $t3, $v1, 0x0010           ## $t3 = 00000010
/* 00524 80BA2FC4 8E0A1360 */  lw      $t2, 0x1360($s0)           ## 8015F9C0
/* 00528 80BA2FC8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0052C 80BA2FCC 55410003 */  bnel    $t2, $at, .L80BA2FDC       
/* 00530 80BA2FD0 246B0010 */  addiu   $t3, $v1, 0x0010           ## $t3 = 00000010
/* 00534 80BA2FD4 10400004 */  beq     $v0, $zero, .L80BA2FE8     
/* 00538 80BA2FD8 246B0010 */  addiu   $t3, $v1, 0x0010           ## $t3 = 00000010
.L80BA2FDC:
/* 0053C 80BA2FDC A18B0B15 */  sb      $t3, 0x0B15($t4)           ## 00000B15
/* 00540 80BA2FE0 8FAD0088 */  lw      $t5, 0x0088($sp)           
/* 00544 80BA2FE4 91A30B15 */  lbu     $v1, 0x0B15($t5)           ## 00000B15
.L80BA2FE8:
/* 00548 80BA2FE8 186002F0 */  blez    $v1, .L80BA3BAC            
/* 0054C 80BA2FEC 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 00550 80BA2FF0 3C014302 */  lui     $at, 0x4302                ## $at = 43020000
/* 00554 80BA2FF4 4481C000 */  mtc1    $at, $f24                  ## $f24 = 130.00
/* 00558 80BA2FF8 3C0180BA */  lui     $at, %hi(D_80BA5C1C)       ## $at = 80BA0000
/* 0055C 80BA2FFC C4365C1C */  lwc1    $f22, %lo(D_80BA5C1C)($at) 
/* 00560 80BA3000 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00564 80BA3004 3C1380BA */  lui     $s3, %hi(D_80BA5944)       ## $s3 = 80BA0000
/* 00568 80BA3008 4481A000 */  mtc1    $at, $f20                  ## $f20 = 0.50
/* 0056C 80BA300C 4480D000 */  mtc1    $zero, $f26                ## $f26 = 0.00
/* 00570 80BA3010 26735944 */  addiu   $s3, $s3, %lo(D_80BA5944)  ## $s3 = 80BA5944
/* 00574 80BA3014 24160002 */  addiu   $s6, $zero, 0x0002         ## $s6 = 00000002
/* 00578 80BA3018 24150001 */  addiu   $s5, $zero, 0x0001         ## $s5 = 00000001
/* 0057C 80BA301C C63000E0 */  lwc1    $f16, 0x00E0($s1)          ## 000000E0
.L80BA3020:
/* 00580 80BA3020 C62600EC */  lwc1    $f6, 0x00EC($s1)           ## 000000EC
/* 00584 80BA3024 C62800F0 */  lwc1    $f8, 0x00F0($s1)           ## 000000F0
/* 00588 80BA3028 C62A00E4 */  lwc1    $f10, 0x00E4($s1)          ## 000000E4
/* 0058C 80BA302C 46103081 */  sub.s   $f2, $f6, $f16             
/* 00590 80BA3030 C62600E8 */  lwc1    $f6, 0x00E8($s1)           ## 000000E8
/* 00594 80BA3034 C62400F4 */  lwc1    $f4, 0x00F4($s1)           ## 000000F4
/* 00598 80BA3038 460A4301 */  sub.s   $f12, $f8, $f10            
/* 0059C 80BA303C 46021202 */  mul.s   $f8, $f2, $f2              
/* 005A0 80BA3040 00127880 */  sll     $t7, $s2,  2               
/* 005A4 80BA3044 46062381 */  sub.s   $f14, $f4, $f6             
/* 005A8 80BA3048 460C6282 */  mul.s   $f10, $f12, $f12           
/* 005AC 80BA304C 01F27821 */  addu    $t7, $t7, $s2              
/* 005B0 80BA3050 8FAE00F8 */  lw      $t6, 0x00F8($sp)           
/* 005B4 80BA3054 460E7182 */  mul.s   $f6, $f14, $f14            
/* 005B8 80BA3058 000F7880 */  sll     $t7, $t7,  2               
/* 005BC 80BA305C 01F27821 */  addu    $t7, $t7, $s2              
/* 005C0 80BA3060 000F7880 */  sll     $t7, $t7,  2               
/* 005C4 80BA3064 01CF8021 */  addu    $s0, $t6, $t7              
/* 005C8 80BA3068 460A4100 */  add.s   $f4, $f8, $f10             
/* 005CC 80BA306C 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 005D0 80BA3070 46062000 */  add.s   $f0, $f4, $f6              
/* 005D4 80BA3074 46000004 */  sqrt.s  $f0, $f0                   
/* 005D8 80BA3078 46006203 */  div.s   $f8, $f12, $f0             
/* 005DC 80BA307C 46007103 */  div.s   $f4, $f14, $f0             
/* 005E0 80BA3080 E7A8007C */  swc1    $f8, 0x007C($sp)           
/* 005E4 80BA3084 C7AA007C */  lwc1    $f10, 0x007C($sp)          
/* 005E8 80BA3088 E7AA00D8 */  swc1    $f10, 0x00D8($sp)          
/* 005EC 80BA308C 46001483 */  div.s   $f18, $f2, $f0             
/* 005F0 80BA3090 E7A40078 */  swc1    $f4, 0x0078($sp)           
/* 005F4 80BA3094 C7A60078 */  lwc1    $f6, 0x0078($sp)           
/* 005F8 80BA3098 E7A600D4 */  swc1    $f6, 0x00D4($sp)           
/* 005FC 80BA309C E7B200DC */  swc1    $f18, 0x00DC($sp)          
/* 00600 80BA30A0 9202014C */  lbu     $v0, 0x014C($s0)           ## 8015E7AC
/* 00604 80BA30A4 C7A800DC */  lwc1    $f8, 0x00DC($sp)           
/* 00608 80BA30A8 5040000B */  beql    $v0, $zero, .L80BA30D8     
/* 0060C 80BA30AC 4481E000 */  mtc1    $at, $f28                  ## $f28 = 80.00
/* 00610 80BA30B0 1055006F */  beq     $v0, $s5, .L80BA3270       
/* 00614 80BA30B4 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00618 80BA30B8 5056006E */  beql    $v0, $s6, .L80BA3274       
/* 0061C 80BA30BC 44810000 */  mtc1    $at, $f0                   ## $f0 = 80.00
/* 00620 80BA30C0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00624 80BA30C4 504102B1 */  beql    $v0, $at, .L80BA3B8C       
/* 00628 80BA30C8 A200014C */  sb      $zero, 0x014C($s0)         ## 8015E7AC
/* 0062C 80BA30CC 100002B2 */  beq     $zero, $zero, .L80BA3B98   
/* 00630 80BA30D0 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 00634 80BA30D4 4481E000 */  mtc1    $at, $f28                  ## $f28 = 0.00
.L80BA30D8:
/* 00638 80BA30D8 00000000 */  nop
/* 0063C 80BA30DC 461C4282 */  mul.s   $f10, $f8, $f28            
/* 00640 80BA30E0 460A8100 */  add.s   $f4, $f16, $f10            
/* 00644 80BA30E4 E6040168 */  swc1    $f4, 0x0168($s0)           ## 8015E7C8
/* 00648 80BA30E8 C7A800D8 */  lwc1    $f8, 0x00D8($sp)           
/* 0064C 80BA30EC C62600E4 */  lwc1    $f6, 0x00E4($s1)           ## 000000E4
/* 00650 80BA30F0 461C4282 */  mul.s   $f10, $f8, $f28            
/* 00654 80BA30F4 460A3100 */  add.s   $f4, $f6, $f10             
/* 00658 80BA30F8 E604016C */  swc1    $f4, 0x016C($s0)           ## 8015E7CC
/* 0065C 80BA30FC C7A600D4 */  lwc1    $f6, 0x00D4($sp)           
/* 00660 80BA3100 C62800E8 */  lwc1    $f8, 0x00E8($s1)           ## 000000E8
/* 00664 80BA3104 461C3282 */  mul.s   $f10, $f6, $f28            
/* 00668 80BA3108 460A4100 */  add.s   $f4, $f8, $f10             
/* 0066C 80BA310C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00670 80BA3110 E6040170 */  swc1    $f4, 0x0170($s0)           ## 8015E7D0
/* 00674 80BA3114 46140181 */  sub.s   $f6, $f0, $f20             
/* 00678 80BA3118 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 0067C 80BA311C 44814000 */  mtc1    $at, $f8                   ## $f8 = 160.00
/* 00680 80BA3120 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00684 80BA3124 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 00688 80BA3128 46083282 */  mul.s   $f10, $f6, $f8             
/* 0068C 80BA312C E6040154 */  swc1    $f4, 0x0154($s0)           ## 8015E7B4
/* 00690 80BA3130 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00694 80BA3134 E60A0150 */  swc1    $f10, 0x0150($s0)          ## 8015E7B0
/* 00698 80BA3138 46140181 */  sub.s   $f6, $f0, $f20             
/* 0069C 80BA313C 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 006A0 80BA3140 44814000 */  mtc1    $at, $f8                   ## $f8 = 160.00
/* 006A4 80BA3144 00000000 */  nop
/* 006A8 80BA3148 46083282 */  mul.s   $f10, $f6, $f8             
/* 006AC 80BA314C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 006B0 80BA3150 E60A0158 */  swc1    $f10, 0x0158($s0)          ## 8015E7B8
/* 006B4 80BA3154 3C0180BA */  lui     $at, %hi(D_80BA5C20)       ## $at = 80BA0000
/* 006B8 80BA3158 C4245C20 */  lwc1    $f4, %lo(D_80BA5C20)($at)  
/* 006BC 80BA315C A200018C */  sb      $zero, 0x018C($s0)         ## 8015E7EC
/* 006C0 80BA3160 46040182 */  mul.s   $f6, $f0, $f4              
/* 006C4 80BA3164 46143200 */  add.s   $f8, $f6, $f20             
/* 006C8 80BA3168 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 006CC 80BA316C E6080184 */  swc1    $f8, 0x0184($s0)           ## 8015E7E4
/* 006D0 80BA3170 3C0180BA */  lui     $at, %hi(D_80BA5C24)       ## $at = 80BA0000
/* 006D4 80BA3174 C42A5C24 */  lwc1    $f10, %lo(D_80BA5C24)($at) 
/* 006D8 80BA3178 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 006DC 80BA317C 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 006E0 80BA3180 460A0102 */  mul.s   $f4, $f0, $f10             
/* 006E4 80BA3184 4458F800 */  cfc1    $t8, $31
/* 006E8 80BA3188 44D9F800 */  ctc1    $t9, $31
/* 006EC 80BA318C 00000000 */  nop
/* 006F0 80BA3190 460021A4 */  cvt.w.s $f6, $f4                   
/* 006F4 80BA3194 4459F800 */  cfc1    $t9, $31
/* 006F8 80BA3198 00000000 */  nop
/* 006FC 80BA319C 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 00700 80BA31A0 53200013 */  beql    $t9, $zero, .L80BA31F0     
/* 00704 80BA31A4 44193000 */  mfc1    $t9, $f6                   
/* 00708 80BA31A8 44813000 */  mtc1    $at, $f6                   ## $f6 = 2147483648.00
/* 0070C 80BA31AC 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00710 80BA31B0 46062181 */  sub.s   $f6, $f4, $f6              
/* 00714 80BA31B4 44D9F800 */  ctc1    $t9, $31
/* 00718 80BA31B8 00000000 */  nop
/* 0071C 80BA31BC 460031A4 */  cvt.w.s $f6, $f6                   
/* 00720 80BA31C0 4459F800 */  cfc1    $t9, $31
/* 00724 80BA31C4 00000000 */  nop
/* 00728 80BA31C8 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 0072C 80BA31CC 17200005 */  bne     $t9, $zero, .L80BA31E4     
/* 00730 80BA31D0 00000000 */  nop
/* 00734 80BA31D4 44193000 */  mfc1    $t9, $f6                   
/* 00738 80BA31D8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0073C 80BA31DC 10000007 */  beq     $zero, $zero, .L80BA31FC   
/* 00740 80BA31E0 0321C825 */  or      $t9, $t9, $at              ## $t9 = 80000000
.L80BA31E4:
/* 00744 80BA31E4 10000005 */  beq     $zero, $zero, .L80BA31FC   
/* 00748 80BA31E8 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 0074C 80BA31EC 44193000 */  mfc1    $t9, $f6                   
.L80BA31F0:
/* 00750 80BA31F0 00000000 */  nop
/* 00754 80BA31F4 0720FFFB */  bltz    $t9, .L80BA31E4            
/* 00758 80BA31F8 00000000 */  nop
.L80BA31FC:
/* 0075C 80BA31FC A6190188 */  sh      $t9, 0x0188($s0)           ## 8015E7E8
/* 00760 80BA3200 3C0180BA */  lui     $at, %hi(D_80BA5C28)       ## $at = 80BA0000
/* 00764 80BA3204 C4285C28 */  lwc1    $f8, %lo(D_80BA5C28)($at)  
/* 00768 80BA3208 44D8F800 */  ctc1    $t8, $31
/* 0076C 80BA320C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00770 80BA3210 E6080190 */  swc1    $f8, 0x0190($s0)           ## 8015E7F0
/* 00774 80BA3214 3C0143B4 */  lui     $at, 0x43B4                ## $at = 43B40000
/* 00778 80BA3218 44815000 */  mtc1    $at, $f10                  ## $f10 = 360.00
/* 0077C 80BA321C 00000000 */  nop
/* 00780 80BA3220 460A0102 */  mul.s   $f4, $f0, $f10             
/* 00784 80BA3224 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00788 80BA3228 E6040174 */  swc1    $f4, 0x0174($s0)           ## 8015E7D4
/* 0078C 80BA322C 3C0143B4 */  lui     $at, 0x43B4                ## $at = 43B40000
/* 00790 80BA3230 44813000 */  mtc1    $at, $f6                   ## $f6 = 360.00
/* 00794 80BA3234 00000000 */  nop
/* 00798 80BA3238 46060202 */  mul.s   $f8, $f0, $f6              
/* 0079C 80BA323C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 007A0 80BA3240 E6080178 */  swc1    $f8, 0x0178($s0)           ## 8015E7D8
/* 007A4 80BA3244 3C0143B4 */  lui     $at, 0x43B4                ## $at = 43B40000
/* 007A8 80BA3248 44815000 */  mtc1    $at, $f10                  ## $f10 = 360.00
/* 007AC 80BA324C 9208014C */  lbu     $t0, 0x014C($s0)           ## 8015E7AC
/* 007B0 80BA3250 A600019C */  sh      $zero, 0x019C($s0)         ## 8015E7FC
/* 007B4 80BA3254 460A0102 */  mul.s   $f4, $f0, $f10             
/* 007B8 80BA3258 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 007BC 80BA325C A209014C */  sb      $t1, 0x014C($s0)           ## 8015E7AC
/* 007C0 80BA3260 E604017C */  swc1    $f4, 0x017C($s0)           ## 8015E7DC
/* 007C4 80BA3264 8FAA0088 */  lw      $t2, 0x0088($sp)           
/* 007C8 80BA3268 1000024A */  beq     $zero, $zero, .L80BA3B94   
/* 007CC 80BA326C 91430B15 */  lbu     $v1, 0x0B15($t2)           ## 00000B15
.L80BA3270:
/* 007D0 80BA3270 44810000 */  mtc1    $at, $f0                   ## $f0 = 360.00
.L80BA3274:
/* 007D4 80BA3274 960B0188 */  lhu     $t3, 0x0188($s0)           ## 8015E7E8
/* 007D8 80BA3278 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 007DC 80BA327C 46009202 */  mul.s   $f8, $f18, $f0             
/* 007E0 80BA3280 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 007E4 80BA3284 A60C0188 */  sh      $t4, 0x0188($s0)           ## 8015E7E8
/* 007E8 80BA3288 C62600E0 */  lwc1    $f6, 0x00E0($s1)           ## 000000E0
/* 007EC 80BA328C 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 007F0 80BA3290 46083280 */  add.s   $f10, $f6, $f8             
/* 007F4 80BA3294 C7A6007C */  lwc1    $f6, 0x007C($sp)           
/* 007F8 80BA3298 46003202 */  mul.s   $f8, $f6, $f0              
/* 007FC 80BA329C E7AA00CC */  swc1    $f10, 0x00CC($sp)          
/* 00800 80BA32A0 C62400E4 */  lwc1    $f4, 0x00E4($s1)           ## 000000E4
/* 00804 80BA32A4 C7A60078 */  lwc1    $f6, 0x0078($sp)           
/* 00808 80BA32A8 C62A00E8 */  lwc1    $f10, 0x00E8($s1)          ## 000000E8
/* 0080C 80BA32AC 46082700 */  add.s   $f28, $f4, $f8             
/* 00810 80BA32B0 46003102 */  mul.s   $f4, $f6, $f0              
/* 00814 80BA32B4 C6080150 */  lwc1    $f8, 0x0150($s0)           ## 8015E7B0
/* 00818 80BA32B8 C6060154 */  lwc1    $f6, 0x0154($s0)           ## 8015E7B4
/* 0081C 80BA32BC E608015C */  swc1    $f8, 0x015C($s0)           ## 8015E7BC
/* 00820 80BA32C0 E6060160 */  swc1    $f6, 0x0160($s0)           ## 8015E7C0
/* 00824 80BA32C4 46045780 */  add.s   $f30, $f10, $f4            
/* 00828 80BA32C8 C60A0158 */  lwc1    $f10, 0x0158($s0)          ## 8015E7B8
/* 0082C 80BA32CC 44812000 */  mtc1    $at, $f4                   ## $f4 = -4.00
/* 00830 80BA32D0 2A410020 */  slti    $at, $s2, 0x0020           
/* 00834 80BA32D4 E60A0164 */  swc1    $f10, 0x0164($s0)          ## 8015E7C4
/* 00838 80BA32D8 C6860060 */  lwc1    $f6, 0x0060($s4)           ## 00000060
/* 0083C 80BA32DC C688005C */  lwc1    $f8, 0x005C($s4)           ## 0000005C
/* 00840 80BA32E0 46064280 */  add.s   $f10, $f8, $f6             
/* 00844 80BA32E4 C6880064 */  lwc1    $f8, 0x0064($s4)           ## 00000064
/* 00848 80BA32E8 46085180 */  add.s   $f6, $f10, $f8             
/* 0084C 80BA32EC 46062032 */  c.eq.s  $f4, $f6                   
/* 00850 80BA32F0 00000000 */  nop
/* 00854 80BA32F4 45020007 */  bc1fl   .L80BA3314                 
/* 00858 80BA32F8 A600019C */  sh      $zero, 0x019C($s0)         ## 8015E7FC
/* 0085C 80BA32FC 960D019C */  lhu     $t5, 0x019C($s0)           ## 8015E7FC
/* 00860 80BA3300 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00864 80BA3304 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 00868 80BA3308 10000002 */  beq     $zero, $zero, .L80BA3314   
/* 0086C 80BA330C A60E019C */  sh      $t6, 0x019C($s0)           ## 8015E7FC
/* 00870 80BA3310 A600019C */  sh      $zero, 0x019C($s0)         ## 8015E7FC
.L80BA3314:
/* 00874 80BA3314 9202014C */  lbu     $v0, 0x014C($s0)           ## 8015E7AC
/* 00878 80BA3318 16A200E6 */  bne     $s5, $v0, .L80BA36B4       
/* 0087C 80BA331C 00000000 */  nop
/* 00880 80BA3320 10200057 */  beq     $at, $zero, .L80BA3480     
/* 00884 80BA3324 00000000 */  nop
/* 00888 80BA3328 14600055 */  bne     $v1, $zero, .L80BA3480     
/* 0088C 80BA332C 00000000 */  nop
/* 00890 80BA3330 960F019C */  lhu     $t7, 0x019C($s0)           ## 8015E7FC
/* 00894 80BA3334 29E10101 */  slti    $at, $t7, 0x0101           
/* 00898 80BA3338 14200051 */  bne     $at, $zero, .L80BA3480     
/* 0089C 80BA333C 00000000 */  nop
/* 008A0 80BA3340 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 008A4 80BA3344 A600019C */  sh      $zero, 0x019C($s0)         ## 8015E7FC
/* 008A8 80BA3348 4614003C */  c.lt.s  $f0, $f20                  
/* 008AC 80BA334C 00000000 */  nop
/* 008B0 80BA3350 4500000D */  bc1f    .L80BA3388                 
/* 008B4 80BA3354 00000000 */  nop
/* 008B8 80BA3358 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 008BC 80BA335C 00000000 */  nop
/* 008C0 80BA3360 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 008C4 80BA3364 44815000 */  mtc1    $at, $f10                  ## $f10 = 200.00
/* 008C8 80BA3368 00000000 */  nop
/* 008CC 80BA336C 460A0202 */  mul.s   $f8, $f0, $f10             
/* 008D0 80BA3370 4600410D */  trunc.w.s $f4, $f8                   
/* 008D4 80BA3374 44092000 */  mfc1    $t1, $f4                   
/* 008D8 80BA3378 00000000 */  nop
/* 008DC 80BA337C 252A00C8 */  addiu   $t2, $t1, 0x00C8           ## $t2 = 000000C8
/* 008E0 80BA3380 1000000C */  beq     $zero, $zero, .L80BA33B4   
/* 008E4 80BA3384 A60A0194 */  sh      $t2, 0x0194($s0)           ## 8015E7F4
.L80BA3388:
/* 008E8 80BA3388 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 008EC 80BA338C 00000000 */  nop
/* 008F0 80BA3390 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 008F4 80BA3394 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 008F8 80BA3398 240FFF38 */  addiu   $t7, $zero, 0xFF38         ## $t7 = FFFFFF38
/* 008FC 80BA339C 46060282 */  mul.s   $f10, $f0, $f6             
/* 00900 80BA33A0 4600520D */  trunc.w.s $f8, $f10                  
/* 00904 80BA33A4 440E4000 */  mfc1    $t6, $f8                   
/* 00908 80BA33A8 00000000 */  nop
/* 0090C 80BA33AC 01EEC023 */  subu    $t8, $t7, $t6              
/* 00910 80BA33B0 A6180194 */  sh      $t8, 0x0194($s0)           ## 8015E7F4
.L80BA33B4:
/* 00914 80BA33B4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00918 80BA33B8 00000000 */  nop
/* 0091C 80BA33BC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00920 80BA33C0 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00924 80BA33C4 00000000 */  nop
/* 00928 80BA33C8 46040182 */  mul.s   $f6, $f0, $f4              
/* 0092C 80BA33CC 4600328D */  trunc.w.s $f10, $f6                  
/* 00930 80BA33D0 440A5000 */  mfc1    $t2, $f10                  
/* 00934 80BA33D4 00000000 */  nop
/* 00938 80BA33D8 254B000F */  addiu   $t3, $t2, 0x000F           ## $t3 = 0000000F
/* 0093C 80BA33DC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00940 80BA33E0 A60B0196 */  sh      $t3, 0x0196($s0)           ## 8015E7F6
/* 00944 80BA33E4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00948 80BA33E8 44811000 */  mtc1    $at, $f2                   ## $f2 = 10.00
/* 0094C 80BA33EC 3C0180BA */  lui     $at, %hi(D_80BA5C2C)       ## $at = 80BA0000
/* 00950 80BA33F0 C4265C2C */  lwc1    $f6, %lo(D_80BA5C2C)($at)  
/* 00954 80BA33F4 46020202 */  mul.s   $f8, $f0, $f2              
/* 00958 80BA33F8 46024100 */  add.s   $f4, $f8, $f2              
/* 0095C 80BA33FC 46062282 */  mul.s   $f10, $f4, $f6             
/* 00960 80BA3400 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00964 80BA3404 E60A0198 */  swc1    $f10, 0x0198($s0)          ## 8015E7F8
/* 00968 80BA3408 4616003C */  c.lt.s  $f0, $f22                  
/* 0096C 80BA340C 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00970 80BA3410 45020004 */  bc1fl   .L80BA3424                 
/* 00974 80BA3414 4616003C */  c.lt.s  $f0, $f22                  
/* 00978 80BA3418 10000012 */  beq     $zero, $zero, .L80BA3464   
/* 0097C 80BA341C A6750000 */  sh      $s5, 0x0000($s3)           ## 80BA5944
/* 00980 80BA3420 4616003C */  c.lt.s  $f0, $f22                  
.L80BA3424:
/* 00984 80BA3424 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 00988 80BA3428 3C0180BA */  lui     $at, %hi(D_80BA5C30)       ## $at = 80BA0000
/* 0098C 80BA342C 45000003 */  bc1f    .L80BA343C                 
/* 00990 80BA3430 00000000 */  nop
/* 00994 80BA3434 1000000B */  beq     $zero, $zero, .L80BA3464   
/* 00998 80BA3438 A66C0000 */  sh      $t4, 0x0000($s3)           ## 80BA5944
.L80BA343C:
/* 0099C 80BA343C C4285C30 */  lwc1    $f8, %lo(D_80BA5C30)($at)  
/* 009A0 80BA3440 240D0007 */  addiu   $t5, $zero, 0x0007         ## $t5 = 00000007
/* 009A4 80BA3444 240F000F */  addiu   $t7, $zero, 0x000F         ## $t7 = 0000000F
/* 009A8 80BA3448 4608003C */  c.lt.s  $f0, $f8                   
/* 009AC 80BA344C 00000000 */  nop
/* 009B0 80BA3450 45020004 */  bc1fl   .L80BA3464                 
/* 009B4 80BA3454 A66F0000 */  sh      $t7, 0x0000($s3)           ## 80BA5944
/* 009B8 80BA3458 10000002 */  beq     $zero, $zero, .L80BA3464   
/* 009BC 80BA345C A66D0000 */  sh      $t5, 0x0000($s3)           ## 80BA5944
/* 009C0 80BA3460 A66F0000 */  sh      $t7, 0x0000($s3)           ## 80BA5944
.L80BA3464:
/* 009C4 80BA3464 866E0000 */  lh      $t6, 0x0000($s3)           ## 80BA5944
/* 009C8 80BA3468 024EC024 */  and     $t8, $s2, $t6              
/* 009CC 80BA346C 57000003 */  bnel    $t8, $zero, .L80BA347C     
/* 009D0 80BA3470 A219014C */  sb      $t9, 0x014C($s0)           ## 8015E7AC
/* 009D4 80BA3474 E61A0154 */  swc1    $f26, 0x0154($s0)          ## 8015E7B4
/* 009D8 80BA3478 A219014C */  sb      $t9, 0x014C($s0)           ## 8015E7AC
.L80BA347C:
/* 009DC 80BA347C E61A0184 */  swc1    $f26, 0x0184($s0)          ## 8015E7E4
.L80BA3480:
/* 009E0 80BA3480 3C0180BA */  lui     $at, %hi(D_80BA5C34)       ## $at = 80BA0000
/* 009E4 80BA3484 C4245C34 */  lwc1    $f4, %lo(D_80BA5C34)($at)  
/* 009E8 80BA3488 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 009EC 80BA348C 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 009F0 80BA3490 3C073A83 */  lui     $a3, 0x3A83                ## $a3 = 3A830000
/* 009F4 80BA3494 34E7126F */  ori     $a3, $a3, 0x126F           ## $a3 = 3A83126F
/* 009F8 80BA3498 00A03021 */  addu    $a2, $a1, $zero            
/* 009FC 80BA349C 26040190 */  addiu   $a0, $s0, 0x0190           ## $a0 = 8015E7F0
/* 00A00 80BA34A0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00A04 80BA34A4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00A08 80BA34A8 3C0180BA */  lui     $at, %hi(D_80BA5C38)       ## $at = 80BA0000
/* 00A0C 80BA34AC C4265C38 */  lwc1    $f6, %lo(D_80BA5C38)($at)  
/* 00A10 80BA34B0 8E050184 */  lw      $a1, 0x0184($s0)           ## 8015E7E4
/* 00A14 80BA34B4 4406A000 */  mfc1    $a2, $f20                  
/* 00A18 80BA34B8 4407B000 */  mfc1    $a3, $f22                  
/* 00A1C 80BA34BC 26040180 */  addiu   $a0, $s0, 0x0180           ## $a0 = 8015E7E0
/* 00A20 80BA34C0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00A24 80BA34C4 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00A28 80BA34C8 0C0400A4 */  jal     sinf
              
/* 00A2C 80BA34CC C60C0174 */  lwc1    $f12, 0x0174($s0)          ## 8015E7D4
/* 00A30 80BA34D0 C6080180 */  lwc1    $f8, 0x0180($s0)           ## 8015E7E0
/* 00A34 80BA34D4 C60A0150 */  lwc1    $f10, 0x0150($s0)          ## 8015E7B0
/* 00A38 80BA34D8 C60C0178 */  lwc1    $f12, 0x0178($s0)          ## 8015E7D8
/* 00A3C 80BA34DC 46080102 */  mul.s   $f4, $f0, $f8              
/* 00A40 80BA34E0 46045180 */  add.s   $f6, $f10, $f4             
/* 00A44 80BA34E4 0C0400A4 */  jal     sinf
              
/* 00A48 80BA34E8 E6060150 */  swc1    $f6, 0x0150($s0)           ## 8015E7B0
/* 00A4C 80BA34EC C60A0180 */  lwc1    $f10, 0x0180($s0)          ## 8015E7E0
/* 00A50 80BA34F0 C6080154 */  lwc1    $f8, 0x0154($s0)           ## 8015E7B4
/* 00A54 80BA34F4 C60C017C */  lwc1    $f12, 0x017C($s0)          ## 8015E7DC
/* 00A58 80BA34F8 460A0102 */  mul.s   $f4, $f0, $f10             
/* 00A5C 80BA34FC 46044180 */  add.s   $f6, $f8, $f4              
/* 00A60 80BA3500 0C0400A4 */  jal     sinf
              
/* 00A64 80BA3504 E6060154 */  swc1    $f6, 0x0154($s0)           ## 8015E7B4
/* 00A68 80BA3508 C6080180 */  lwc1    $f8, 0x0180($s0)           ## 8015E7E0
/* 00A6C 80BA350C C60A0158 */  lwc1    $f10, 0x0158($s0)          ## 8015E7B8
/* 00A70 80BA3510 00121043 */  sra     $v0, $s2,  1               
/* 00A74 80BA3514 46080102 */  mul.s   $f4, $f0, $f8              
/* 00A78 80BA3518 30420003 */  andi    $v0, $v0, 0x0003           ## $v0 = 00000000
/* 00A7C 80BA351C 3C0180BA */  lui     $at, %hi(D_80BA5C3C)       ## $at = 80BA0000
/* 00A80 80BA3520 46045180 */  add.s   $f6, $f10, $f4             
/* 00A84 80BA3524 10400009 */  beq     $v0, $zero, .L80BA354C     
/* 00A88 80BA3528 E6060158 */  swc1    $f6, 0x0158($s0)           ## 8015E7B8
/* 00A8C 80BA352C 10550018 */  beq     $v0, $s5, .L80BA3590       
/* 00A90 80BA3530 00000000 */  nop
/* 00A94 80BA3534 1056002D */  beq     $v0, $s6, .L80BA35EC       
/* 00A98 80BA3538 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00A9C 80BA353C 10410042 */  beq     $v0, $at, .L80BA3648       
/* 00AA0 80BA3540 00000000 */  nop
/* 00AA4 80BA3544 10000059 */  beq     $zero, $zero, .L80BA36AC   
/* 00AA8 80BA3548 00000000 */  nop
.L80BA354C:
/* 00AAC 80BA354C C6080174 */  lwc1    $f8, 0x0174($s0)           ## 8015E7D4
/* 00AB0 80BA3550 C42A5C3C */  lwc1    $f10, %lo(D_80BA5C3C)($at) 
/* 00AB4 80BA3554 460A4100 */  add.s   $f4, $f8, $f10             
/* 00AB8 80BA3558 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00ABC 80BA355C E6040174 */  swc1    $f4, 0x0174($s0)           ## 8015E7D4
/* 00AC0 80BA3560 3C0180BA */  lui     $at, %hi(D_80BA5C40)       ## $at = 80BA0000
/* 00AC4 80BA3564 C4285C40 */  lwc1    $f8, %lo(D_80BA5C40)($at)  
/* 00AC8 80BA3568 C6060178 */  lwc1    $f6, 0x0178($s0)           ## 8015E7D8
/* 00ACC 80BA356C 3C0180BA */  lui     $at, %hi(D_80BA5C44)       ## $at = 80BA0000
/* 00AD0 80BA3570 46004282 */  mul.s   $f10, $f8, $f0             
/* 00AD4 80BA3574 C608017C */  lwc1    $f8, 0x017C($s0)           ## 8015E7DC
/* 00AD8 80BA3578 460A3100 */  add.s   $f4, $f6, $f10             
/* 00ADC 80BA357C E6040178 */  swc1    $f4, 0x0178($s0)           ## 8015E7D8
/* 00AE0 80BA3580 C4265C44 */  lwc1    $f6, %lo(D_80BA5C44)($at)  
/* 00AE4 80BA3584 46064280 */  add.s   $f10, $f8, $f6             
/* 00AE8 80BA3588 10000048 */  beq     $zero, $zero, .L80BA36AC   
/* 00AEC 80BA358C E60A017C */  swc1    $f10, 0x017C($s0)          ## 8015E7DC
.L80BA3590:
/* 00AF0 80BA3590 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00AF4 80BA3594 00000000 */  nop
/* 00AF8 80BA3598 3C0180BA */  lui     $at, %hi(D_80BA5C48)       ## $at = 80BA0000
/* 00AFC 80BA359C C4285C48 */  lwc1    $f8, %lo(D_80BA5C48)($at)  
/* 00B00 80BA35A0 C6040174 */  lwc1    $f4, 0x0174($s0)           ## 8015E7D4
/* 00B04 80BA35A4 46004182 */  mul.s   $f6, $f8, $f0              
/* 00B08 80BA35A8 46062280 */  add.s   $f10, $f4, $f6             
/* 00B0C 80BA35AC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B10 80BA35B0 E60A0174 */  swc1    $f10, 0x0174($s0)          ## 8015E7D4
/* 00B14 80BA35B4 3C0180BA */  lui     $at, %hi(D_80BA5C4C)       ## $at = 80BA0000
/* 00B18 80BA35B8 C4245C4C */  lwc1    $f4, %lo(D_80BA5C4C)($at)  
/* 00B1C 80BA35BC C6080178 */  lwc1    $f8, 0x0178($s0)           ## 8015E7D8
/* 00B20 80BA35C0 46002182 */  mul.s   $f6, $f4, $f0              
/* 00B24 80BA35C4 46064280 */  add.s   $f10, $f8, $f6             
/* 00B28 80BA35C8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B2C 80BA35CC E60A0178 */  swc1    $f10, 0x0178($s0)          ## 8015E7D8
/* 00B30 80BA35D0 3C0180BA */  lui     $at, %hi(D_80BA5C50)       ## $at = 80BA0000
/* 00B34 80BA35D4 C4285C50 */  lwc1    $f8, %lo(D_80BA5C50)($at)  
/* 00B38 80BA35D8 C604017C */  lwc1    $f4, 0x017C($s0)           ## 8015E7DC
/* 00B3C 80BA35DC 46004182 */  mul.s   $f6, $f8, $f0              
/* 00B40 80BA35E0 46062280 */  add.s   $f10, $f4, $f6             
/* 00B44 80BA35E4 10000031 */  beq     $zero, $zero, .L80BA36AC   
/* 00B48 80BA35E8 E60A017C */  swc1    $f10, 0x017C($s0)          ## 8015E7DC
.L80BA35EC:
/* 00B4C 80BA35EC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B50 80BA35F0 00000000 */  nop
/* 00B54 80BA35F4 3C0180BA */  lui     $at, %hi(D_80BA5C54)       ## $at = 80BA0000
/* 00B58 80BA35F8 C4245C54 */  lwc1    $f4, %lo(D_80BA5C54)($at)  
/* 00B5C 80BA35FC C6080174 */  lwc1    $f8, 0x0174($s0)           ## 8015E7D4
/* 00B60 80BA3600 46002182 */  mul.s   $f6, $f4, $f0              
/* 00B64 80BA3604 46064280 */  add.s   $f10, $f8, $f6             
/* 00B68 80BA3608 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B6C 80BA360C E60A0174 */  swc1    $f10, 0x0174($s0)          ## 8015E7D4
/* 00B70 80BA3610 3C0180BA */  lui     $at, %hi(D_80BA5C58)       ## $at = 80BA0000
/* 00B74 80BA3614 C4285C58 */  lwc1    $f8, %lo(D_80BA5C58)($at)  
/* 00B78 80BA3618 C6040178 */  lwc1    $f4, 0x0178($s0)           ## 8015E7D8
/* 00B7C 80BA361C 46004182 */  mul.s   $f6, $f8, $f0              
/* 00B80 80BA3620 46062280 */  add.s   $f10, $f4, $f6             
/* 00B84 80BA3624 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B88 80BA3628 E60A0178 */  swc1    $f10, 0x0178($s0)          ## 8015E7D8
/* 00B8C 80BA362C 3C0180BA */  lui     $at, %hi(D_80BA5C5C)       ## $at = 80BA0000
/* 00B90 80BA3630 C4245C5C */  lwc1    $f4, %lo(D_80BA5C5C)($at)  
/* 00B94 80BA3634 C608017C */  lwc1    $f8, 0x017C($s0)           ## 8015E7DC
/* 00B98 80BA3638 46002182 */  mul.s   $f6, $f4, $f0              
/* 00B9C 80BA363C 46064280 */  add.s   $f10, $f8, $f6             
/* 00BA0 80BA3640 1000001A */  beq     $zero, $zero, .L80BA36AC   
/* 00BA4 80BA3644 E60A017C */  swc1    $f10, 0x017C($s0)          ## 8015E7DC
.L80BA3648:
/* 00BA8 80BA3648 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00BAC 80BA364C 00000000 */  nop
/* 00BB0 80BA3650 3C0180BA */  lui     $at, %hi(D_80BA5C60)       ## $at = 80BA0000
/* 00BB4 80BA3654 D4245C60 */  ldc1    $f4, %lo(D_80BA5C60)($at)  
/* 00BB8 80BA3658 46000221 */  cvt.d.s $f8, $f0                   
/* 00BBC 80BA365C C60A0174 */  lwc1    $f10, 0x0174($s0)          ## 8015E7D4
/* 00BC0 80BA3660 46282182 */  mul.d   $f6, $f4, $f8              
/* 00BC4 80BA3664 46005121 */  cvt.d.s $f4, $f10                  
/* 00BC8 80BA3668 46262200 */  add.d   $f8, $f4, $f6              
/* 00BCC 80BA366C 462042A0 */  cvt.s.d $f10, $f8                  
/* 00BD0 80BA3670 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00BD4 80BA3674 E60A0174 */  swc1    $f10, 0x0174($s0)          ## 8015E7D4
/* 00BD8 80BA3678 3C0180BA */  lui     $at, %hi(D_80BA5C68)       ## $at = 80BA0000
/* 00BDC 80BA367C C4265C68 */  lwc1    $f6, %lo(D_80BA5C68)($at)  
/* 00BE0 80BA3680 C6040178 */  lwc1    $f4, 0x0178($s0)           ## 8015E7D8
/* 00BE4 80BA3684 46003202 */  mul.s   $f8, $f6, $f0              
/* 00BE8 80BA3688 46082280 */  add.s   $f10, $f4, $f8             
/* 00BEC 80BA368C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00BF0 80BA3690 E60A0178 */  swc1    $f10, 0x0178($s0)          ## 8015E7D8
/* 00BF4 80BA3694 3C0180BA */  lui     $at, %hi(D_80BA5C6C)       ## $at = 80BA0000
/* 00BF8 80BA3698 C4245C6C */  lwc1    $f4, %lo(D_80BA5C6C)($at)  
/* 00BFC 80BA369C C606017C */  lwc1    $f6, 0x017C($s0)           ## 8015E7DC
/* 00C00 80BA36A0 46002202 */  mul.s   $f8, $f4, $f0              
/* 00C04 80BA36A4 46083280 */  add.s   $f10, $f6, $f8             
/* 00C08 80BA36A8 E60A017C */  swc1    $f10, 0x017C($s0)          ## 8015E7DC
.L80BA36AC:
/* 00C0C 80BA36AC 100000C4 */  beq     $zero, $zero, .L80BA39C0   
/* 00C10 80BA36B0 9202014C */  lbu     $v0, 0x014C($s0)           ## 8015E7AC
.L80BA36B4:
/* 00C14 80BA36B4 16C200C2 */  bne     $s6, $v0, .L80BA39C0       
/* 00C18 80BA36B8 00000000 */  nop
/* 00C1C 80BA36BC 14600004 */  bne     $v1, $zero, .L80BA36D0     
/* 00C20 80BA36C0 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00C24 80BA36C4 9608019C */  lhu     $t0, 0x019C($s0)           ## 8015E7FC
/* 00C28 80BA36C8 29010501 */  slti    $at, $t0, 0x0501           
/* 00C2C 80BA36CC 1420000B */  bne     $at, $zero, .L80BA36FC     
.L80BA36D0:
/* 00C30 80BA36D0 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00C34 80BA36D4 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 00C38 80BA36D8 A600019C */  sh      $zero, 0x019C($s0)         ## 8015E7FC
/* 00C3C 80BA36DC A209014C */  sb      $t1, 0x014C($s0)           ## 8015E7AC
/* 00C40 80BA36E0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C44 80BA36E4 E6040180 */  swc1    $f4, 0x0180($s0)           ## 8015E7E0
/* 00C48 80BA36E8 3C0180BA */  lui     $at, %hi(D_80BA5C70)       ## $at = 80BA0000
/* 00C4C 80BA36EC C4265C70 */  lwc1    $f6, %lo(D_80BA5C70)($at)  
/* 00C50 80BA36F0 46060202 */  mul.s   $f8, $f0, $f6              
/* 00C54 80BA36F4 46144280 */  add.s   $f10, $f8, $f20            
/* 00C58 80BA36F8 E60A0184 */  swc1    $f10, 0x0184($s0)          ## 8015E7E4
.L80BA36FC:
/* 00C5C 80BA36FC 866A0000 */  lh      $t2, 0x0000($s3)           ## 80BA5944
/* 00C60 80BA3700 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 00C64 80BA3704 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 00C68 80BA3708 024A5824 */  and     $t3, $s2, $t2              
/* 00C6C 80BA370C 15600089 */  bne     $t3, $zero, .L80BA3934     
/* 00C70 80BA3710 26040190 */  addiu   $a0, $s0, 0x0190           ## $a0 = 8015E7F0
/* 00C74 80BA3714 3C0180BA */  lui     $at, %hi(D_80BA5C74)       ## $at = 80BA0000
/* 00C78 80BA3718 C4245C74 */  lwc1    $f4, %lo(D_80BA5C74)($at)  
/* 00C7C 80BA371C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 00C80 80BA3720 3C073A83 */  lui     $a3, 0x3A83                ## $a3 = 3A830000
/* 00C84 80BA3724 34E7126F */  ori     $a3, $a3, 0x126F           ## $a3 = 3A83126F
/* 00C88 80BA3728 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 00C8C 80BA372C 26040190 */  addiu   $a0, $s0, 0x0190           ## $a0 = 8015E7F0
/* 00C90 80BA3730 3C053E80 */  lui     $a1, 0x3E80                ## $a1 = 3E800000
/* 00C94 80BA3734 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00C98 80BA3738 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00C9C 80BA373C 8E850024 */  lw      $a1, 0x0024($s4)           ## 00000024
/* 00CA0 80BA3740 4406A000 */  mfc1    $a2, $f20                  
/* 00CA4 80BA3744 E7B60010 */  swc1    $f22, 0x0010($sp)          
/* 00CA8 80BA3748 26040168 */  addiu   $a0, $s0, 0x0168           ## $a0 = 8015E7C8
/* 00CAC 80BA374C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00CB0 80BA3750 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00CB4 80BA3754 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00CB8 80BA3758 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 00CBC 80BA375C C6860028 */  lwc1    $f6, 0x0028($s4)           ## 00000028
/* 00CC0 80BA3760 4406A000 */  mfc1    $a2, $f20                  
/* 00CC4 80BA3764 E7B60010 */  swc1    $f22, 0x0010($sp)          
/* 00CC8 80BA3768 46083280 */  add.s   $f10, $f6, $f8             
/* 00CCC 80BA376C 2604016C */  addiu   $a0, $s0, 0x016C           ## $a0 = 8015E7CC
/* 00CD0 80BA3770 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00CD4 80BA3774 44055000 */  mfc1    $a1, $f10                  
/* 00CD8 80BA3778 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00CDC 80BA377C 00000000 */  nop
/* 00CE0 80BA3780 8E85002C */  lw      $a1, 0x002C($s4)           ## 0000002C
/* 00CE4 80BA3784 4406A000 */  mfc1    $a2, $f20                  
/* 00CE8 80BA3788 E7B60010 */  swc1    $f22, 0x0010($sp)          
/* 00CEC 80BA378C 26040170 */  addiu   $a0, $s0, 0x0170           ## $a0 = 8015E7D0
/* 00CF0 80BA3790 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00CF4 80BA3794 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00CF8 80BA3798 9604018A */  lhu     $a0, 0x018A($s0)           ## 8015E7EA
/* 00CFC 80BA379C 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 00D00 80BA37A0 00812021 */  addu    $a0, $a0, $at              
/* 00D04 80BA37A4 00042400 */  sll     $a0, $a0, 16               
/* 00D08 80BA37A8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00D0C 80BA37AC 00042403 */  sra     $a0, $a0, 16               
/* 00D10 80BA37B0 960C0196 */  lhu     $t4, 0x0196($s0)           ## 8015E7F6
/* 00D14 80BA37B4 26040150 */  addiu   $a0, $s0, 0x0150           ## $a0 = 8015E7B0
/* 00D18 80BA37B8 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 00D1C 80BA37BC 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 00D20 80BA37C0 05810004 */  bgez    $t4, .L80BA37D4            
/* 00D24 80BA37C4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00D28 80BA37C8 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 00D2C 80BA37CC 00000000 */  nop
/* 00D30 80BA37D0 46083180 */  add.s   $f6, $f6, $f8              
.L80BA37D4:
/* 00D34 80BA37D4 46003282 */  mul.s   $f10, $f6, $f0             
/* 00D38 80BA37D8 4406A000 */  mfc1    $a2, $f20                  
/* 00D3C 80BA37DC 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 00D40 80BA37E0 E7B60010 */  swc1    $f22, 0x0010($sp)          
/* 00D44 80BA37E4 44055000 */  mfc1    $a1, $f10                  
/* 00D48 80BA37E8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00D4C 80BA37EC 00000000 */  nop
/* 00D50 80BA37F0 9604018A */  lhu     $a0, 0x018A($s0)           ## 8015E7EA
/* 00D54 80BA37F4 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 00D58 80BA37F8 00812021 */  addu    $a0, $a0, $at              
/* 00D5C 80BA37FC 00042400 */  sll     $a0, $a0, 16               
/* 00D60 80BA3800 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00D64 80BA3804 00042403 */  sra     $a0, $a0, 16               
/* 00D68 80BA3808 960D0196 */  lhu     $t5, 0x0196($s0)           ## 8015E7F6
/* 00D6C 80BA380C 26040158 */  addiu   $a0, $s0, 0x0158           ## $a0 = 8015E7B8
/* 00D70 80BA3810 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 00D74 80BA3814 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 00D78 80BA3818 05A10004 */  bgez    $t5, .L80BA382C            
/* 00D7C 80BA381C 46802220 */  cvt.s.w $f8, $f4                   
/* 00D80 80BA3820 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 00D84 80BA3824 00000000 */  nop
/* 00D88 80BA3828 46064200 */  add.s   $f8, $f8, $f6              
.L80BA382C:
/* 00D8C 80BA382C 46004282 */  mul.s   $f10, $f8, $f0             
/* 00D90 80BA3830 4406A000 */  mfc1    $a2, $f20                  
/* 00D94 80BA3834 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 00D98 80BA3838 E7B60010 */  swc1    $f22, 0x0010($sp)          
/* 00D9C 80BA383C 44055000 */  mfc1    $a1, $f10                  
/* 00DA0 80BA3840 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00DA4 80BA3844 00000000 */  nop
/* 00DA8 80BA3848 960F018A */  lhu     $t7, 0x018A($s0)           ## 8015E7EA
/* 00DAC 80BA384C 960E0194 */  lhu     $t6, 0x0194($s0)           ## 8015E7F4
/* 00DB0 80BA3850 C60C0178 */  lwc1    $f12, 0x0178($s0)          ## 8015E7D8
/* 00DB4 80BA3854 01EEC021 */  addu    $t8, $t7, $t6              
/* 00DB8 80BA3858 0C0400A4 */  jal     sinf
              
/* 00DBC 80BA385C A618018A */  sh      $t8, 0x018A($s0)           ## 8015E7EA
/* 00DC0 80BA3860 C6040154 */  lwc1    $f4, 0x0154($s0)           ## 8015E7B4
/* 00DC4 80BA3864 46002180 */  add.s   $f6, $f4, $f0              
/* 00DC8 80BA3868 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00DCC 80BA386C E6060154 */  swc1    $f6, 0x0154($s0)           ## 8015E7B4
/* 00DD0 80BA3870 4600B282 */  mul.s   $f10, $f22, $f0            
/* 00DD4 80BA3874 C6080174 */  lwc1    $f8, 0x0174($s0)           ## 8015E7D4
/* 00DD8 80BA3878 C6060178 */  lwc1    $f6, 0x0178($s0)           ## 8015E7D8
/* 00DDC 80BA387C 460A4100 */  add.s   $f4, $f8, $f10             
/* 00DE0 80BA3880 C6080198 */  lwc1    $f8, 0x0198($s0)           ## 8015E7F8
/* 00DE4 80BA3884 46083280 */  add.s   $f10, $f6, $f8             
/* 00DE8 80BA3888 E6040174 */  swc1    $f4, 0x0174($s0)           ## 8015E7D4
/* 00DEC 80BA388C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00DF0 80BA3890 E60A0178 */  swc1    $f10, 0x0178($s0)          ## 8015E7D8
/* 00DF4 80BA3894 3C0180BA */  lui     $at, %hi(D_80BA5C78)       ## $at = 80BA0000
/* 00DF8 80BA3898 C4265C78 */  lwc1    $f6, %lo(D_80BA5C78)($at)  
/* 00DFC 80BA389C C604017C */  lwc1    $f4, 0x017C($s0)           ## 8015E7DC
/* 00E00 80BA38A0 9604018A */  lhu     $a0, 0x018A($s0)           ## 8015E7EA
/* 00E04 80BA38A4 46003202 */  mul.s   $f8, $f6, $f0              
/* 00E08 80BA38A8 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 00E0C 80BA38AC 00812021 */  addu    $a0, $a0, $at              
/* 00E10 80BA38B0 00042400 */  sll     $a0, $a0, 16               
/* 00E14 80BA38B4 00042403 */  sra     $a0, $a0, 16               
/* 00E18 80BA38B8 46082280 */  add.s   $f10, $f4, $f8             
/* 00E1C 80BA38BC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00E20 80BA38C0 E60A017C */  swc1    $f10, 0x017C($s0)          ## 8015E7DC
/* 00E24 80BA38C4 96190196 */  lhu     $t9, 0x0196($s0)           ## 8015E7F6
/* 00E28 80BA38C8 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 00E2C 80BA38CC 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 00E30 80BA38D0 07210004 */  bgez    $t9, .L80BA38E4            
/* 00E34 80BA38D4 46803120 */  cvt.s.w $f4, $f6                   
/* 00E38 80BA38D8 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 00E3C 80BA38DC 00000000 */  nop
/* 00E40 80BA38E0 46082100 */  add.s   $f4, $f4, $f8              
.L80BA38E4:
/* 00E44 80BA38E4 46002282 */  mul.s   $f10, $f4, $f0             
/* 00E48 80BA38E8 9604018A */  lhu     $a0, 0x018A($s0)           ## 8015E7EA
/* 00E4C 80BA38EC 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 00E50 80BA38F0 00812021 */  addu    $a0, $a0, $at              
/* 00E54 80BA38F4 00042400 */  sll     $a0, $a0, 16               
/* 00E58 80BA38F8 00042403 */  sra     $a0, $a0, 16               
/* 00E5C 80BA38FC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00E60 80BA3900 E60A0150 */  swc1    $f10, 0x0150($s0)          ## 8015E7B0
/* 00E64 80BA3904 96080196 */  lhu     $t0, 0x0196($s0)           ## 8015E7F6
/* 00E68 80BA3908 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 00E6C 80BA390C 44883000 */  mtc1    $t0, $f6                   ## $f6 = 0.00
/* 00E70 80BA3910 05010004 */  bgez    $t0, .L80BA3924            
/* 00E74 80BA3914 46803220 */  cvt.s.w $f8, $f6                   
/* 00E78 80BA3918 44812000 */  mtc1    $at, $f4                   ## $f4 = 4294967296.00
/* 00E7C 80BA391C 00000000 */  nop
/* 00E80 80BA3920 46044200 */  add.s   $f8, $f8, $f4              
.L80BA3924:
/* 00E84 80BA3924 46004282 */  mul.s   $f10, $f8, $f0             
/* 00E88 80BA3928 9202014C */  lbu     $v0, 0x014C($s0)           ## 8015E7AC
/* 00E8C 80BA392C 10000024 */  beq     $zero, $zero, .L80BA39C0   
/* 00E90 80BA3930 E60A0158 */  swc1    $f10, 0x0158($s0)          ## 8015E7B8
.L80BA3934:
/* 00E94 80BA3934 3C0180BA */  lui     $at, %hi(D_80BA5C7C)       ## $at = 80BA0000
/* 00E98 80BA3938 C4265C7C */  lwc1    $f6, %lo(D_80BA5C7C)($at)  
/* 00E9C 80BA393C 3C073A83 */  lui     $a3, 0x3A83                ## $a3 = 3A830000
/* 00EA0 80BA3940 34E7126F */  ori     $a3, $a3, 0x126F           ## $a3 = 3A83126F
/* 00EA4 80BA3944 00A03021 */  addu    $a2, $a1, $zero            
/* 00EA8 80BA3948 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00EAC 80BA394C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00EB0 80BA3950 3C0180BA */  lui     $at, %hi(D_80BA5C80)       ## $at = 80BA0000
/* 00EB4 80BA3954 C4245C80 */  lwc1    $f4, %lo(D_80BA5C80)($at)  
/* 00EB8 80BA3958 4406A000 */  mfc1    $a2, $f20                  
/* 00EBC 80BA395C 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 00EC0 80BA3960 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 00EC4 80BA3964 26040180 */  addiu   $a0, $s0, 0x0180           ## $a0 = 8015E7E0
/* 00EC8 80BA3968 3C053FC0 */  lui     $a1, 0x3FC0                ## $a1 = 3FC00000
/* 00ECC 80BA396C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00ED0 80BA3970 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00ED4 80BA3974 C6080114 */  lwc1    $f8, 0x0114($s0)           ## 8015E774
/* 00ED8 80BA3978 C60A0168 */  lwc1    $f10, 0x0168($s0)          ## 8015E7C8
/* 00EDC 80BA397C C6040108 */  lwc1    $f4, 0x0108($s0)           ## 8015E768
/* 00EE0 80BA3980 9202014C */  lbu     $v0, 0x014C($s0)           ## 8015E7AC
/* 00EE4 80BA3984 460A4181 */  sub.s   $f6, $f8, $f10             
/* 00EE8 80BA3988 C60A0118 */  lwc1    $f10, 0x0118($s0)          ## 8015E778
/* 00EEC 80BA398C 46043200 */  add.s   $f8, $f6, $f4              
/* 00EF0 80BA3990 C606016C */  lwc1    $f6, 0x016C($s0)           ## 8015E7CC
/* 00EF4 80BA3994 46065101 */  sub.s   $f4, $f10, $f6             
/* 00EF8 80BA3998 E6080150 */  swc1    $f8, 0x0150($s0)           ## 8015E7B0
/* 00EFC 80BA399C C608010C */  lwc1    $f8, 0x010C($s0)           ## 8015E76C
/* 00F00 80BA39A0 C606011C */  lwc1    $f6, 0x011C($s0)           ## 8015E77C
/* 00F04 80BA39A4 46082280 */  add.s   $f10, $f4, $f8             
/* 00F08 80BA39A8 C6040170 */  lwc1    $f4, 0x0170($s0)           ## 8015E7D0
/* 00F0C 80BA39AC 46043201 */  sub.s   $f8, $f6, $f4              
/* 00F10 80BA39B0 E60A0154 */  swc1    $f10, 0x0154($s0)          ## 8015E7B4
/* 00F14 80BA39B4 C60A0110 */  lwc1    $f10, 0x0110($s0)          ## 8015E770
/* 00F18 80BA39B8 460A4180 */  add.s   $f6, $f8, $f10             
/* 00F1C 80BA39BC E6060158 */  swc1    $f6, 0x0158($s0)           ## 8015E7B8
.L80BA39C0:
/* 00F20 80BA39C0 52C2006F */  beql    $s6, $v0, .L80BA3B80       
/* 00F24 80BA39C4 8FA90088 */  lw      $t1, 0x0088($sp)           
/* 00F28 80BA39C8 C6040150 */  lwc1    $f4, 0x0150($s0)           ## 8015E7B0
/* 00F2C 80BA39CC C6080168 */  lwc1    $f8, 0x0168($s0)           ## 8015E7C8
/* 00F30 80BA39D0 C7A600CC */  lwc1    $f6, 0x00CC($sp)           
/* 00F34 80BA39D4 4600C307 */  neg.s   $f12, $f24                 
/* 00F38 80BA39D8 46082280 */  add.s   $f10, $f4, $f8             
/* 00F3C 80BA39DC 46065081 */  sub.s   $f2, $f10, $f6             
/* 00F40 80BA39E0 4602C03C */  c.lt.s  $f24, $f2                  
/* 00F44 80BA39E4 00000000 */  nop
/* 00F48 80BA39E8 4503001E */  bc1tl   .L80BA3A64                 
/* 00F4C 80BA39EC 4602C03C */  c.lt.s  $f24, $f2                  
/* 00F50 80BA39F0 460C103C */  c.lt.s  $f2, $f12                  
/* 00F54 80BA39F4 00000000 */  nop
/* 00F58 80BA39F8 4503001A */  bc1tl   .L80BA3A64                 
/* 00F5C 80BA39FC 4602C03C */  c.lt.s  $f24, $f2                  
/* 00F60 80BA3A00 C6040154 */  lwc1    $f4, 0x0154($s0)           ## 8015E7B4
/* 00F64 80BA3A04 C608016C */  lwc1    $f8, 0x016C($s0)           ## 8015E7CC
/* 00F68 80BA3A08 46082280 */  add.s   $f10, $f4, $f8             
/* 00F6C 80BA3A0C 461C5001 */  sub.s   $f0, $f10, $f28            
/* 00F70 80BA3A10 4600C03C */  c.lt.s  $f24, $f0                  
/* 00F74 80BA3A14 00000000 */  nop
/* 00F78 80BA3A18 45030012 */  bc1tl   .L80BA3A64                 
/* 00F7C 80BA3A1C 4602C03C */  c.lt.s  $f24, $f2                  
/* 00F80 80BA3A20 460C003C */  c.lt.s  $f0, $f12                  
/* 00F84 80BA3A24 00000000 */  nop
/* 00F88 80BA3A28 4503000E */  bc1tl   .L80BA3A64                 
/* 00F8C 80BA3A2C 4602C03C */  c.lt.s  $f24, $f2                  
/* 00F90 80BA3A30 C6060158 */  lwc1    $f6, 0x0158($s0)           ## 8015E7B8
/* 00F94 80BA3A34 C6040170 */  lwc1    $f4, 0x0170($s0)           ## 8015E7D0
/* 00F98 80BA3A38 46043200 */  add.s   $f8, $f6, $f4              
/* 00F9C 80BA3A3C 461E4001 */  sub.s   $f0, $f8, $f30             
/* 00FA0 80BA3A40 4600C03C */  c.lt.s  $f24, $f0                  
/* 00FA4 80BA3A44 00000000 */  nop
/* 00FA8 80BA3A48 45030006 */  bc1tl   .L80BA3A64                 
/* 00FAC 80BA3A4C 4602C03C */  c.lt.s  $f24, $f2                  
/* 00FB0 80BA3A50 460C003C */  c.lt.s  $f0, $f12                  
/* 00FB4 80BA3A54 00000000 */  nop
/* 00FB8 80BA3A58 45020049 */  bc1fl   .L80BA3B80                 
/* 00FBC 80BA3A5C 8FA90088 */  lw      $t1, 0x0088($sp)           
/* 00FC0 80BA3A60 4602C03C */  c.lt.s  $f24, $f2                  
.L80BA3A64:
/* 00FC4 80BA3A64 C7AA00CC */  lwc1    $f10, 0x00CC($sp)          
/* 00FC8 80BA3A68 4502000A */  bc1fl   .L80BA3A94                 
/* 00FCC 80BA3A6C 460C103C */  c.lt.s  $f2, $f12                  
/* 00FD0 80BA3A70 46185181 */  sub.s   $f6, $f10, $f24            
/* 00FD4 80BA3A74 E61A0150 */  swc1    $f26, 0x0150($s0)          ## 8015E7B0
/* 00FD8 80BA3A78 C6040150 */  lwc1    $f4, 0x0150($s0)           ## 8015E7B0
/* 00FDC 80BA3A7C E6060168 */  swc1    $f6, 0x0168($s0)           ## 8015E7C8
/* 00FE0 80BA3A80 C6080168 */  lwc1    $f8, 0x0168($s0)           ## 8015E7C8
/* 00FE4 80BA3A84 C7A600CC */  lwc1    $f6, 0x00CC($sp)           
/* 00FE8 80BA3A88 46082280 */  add.s   $f10, $f4, $f8             
/* 00FEC 80BA3A8C 46065081 */  sub.s   $f2, $f10, $f6             
/* 00FF0 80BA3A90 460C103C */  c.lt.s  $f2, $f12                  
.L80BA3A94:
/* 00FF4 80BA3A94 C7A400CC */  lwc1    $f4, 0x00CC($sp)           
/* 00FF8 80BA3A98 45020005 */  bc1fl   .L80BA3AB0                 
/* 00FFC 80BA3A9C C60A0154 */  lwc1    $f10, 0x0154($s0)          ## 8015E7B4
/* 01000 80BA3AA0 46182200 */  add.s   $f8, $f4, $f24             
/* 01004 80BA3AA4 E61A0150 */  swc1    $f26, 0x0150($s0)          ## 8015E7B0
/* 01008 80BA3AA8 E6080168 */  swc1    $f8, 0x0168($s0)           ## 8015E7C8
/* 0100C 80BA3AAC C60A0154 */  lwc1    $f10, 0x0154($s0)          ## 8015E7B4
.L80BA3AB0:
/* 01010 80BA3AB0 C606016C */  lwc1    $f6, 0x016C($s0)           ## 8015E7CC
/* 01014 80BA3AB4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01018 80BA3AB8 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 0101C 80BA3ABC 46065100 */  add.s   $f4, $f10, $f6             
/* 01020 80BA3AC0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01024 80BA3AC4 461C2001 */  sub.s   $f0, $f4, $f28             
/* 01028 80BA3AC8 4600403C */  c.lt.s  $f8, $f0                   
/* 0102C 80BA3ACC 00000000 */  nop
/* 01030 80BA3AD0 4502000A */  bc1fl   .L80BA3AFC                 
/* 01034 80BA3AD4 3C01C248 */  lui     $at, 0xC248                ## $at = C2480000
/* 01038 80BA3AD8 44815000 */  mtc1    $at, $f10                  ## $f10 = -50.00
/* 0103C 80BA3ADC E61A0154 */  swc1    $f26, 0x0154($s0)          ## 8015E7B4
/* 01040 80BA3AE0 C6040154 */  lwc1    $f4, 0x0154($s0)           ## 8015E7B4
/* 01044 80BA3AE4 460AE181 */  sub.s   $f6, $f28, $f10            
/* 01048 80BA3AE8 E606016C */  swc1    $f6, 0x016C($s0)           ## 8015E7CC
/* 0104C 80BA3AEC C608016C */  lwc1    $f8, 0x016C($s0)           ## 8015E7CC
/* 01050 80BA3AF0 46082280 */  add.s   $f10, $f4, $f8             
/* 01054 80BA3AF4 461C5001 */  sub.s   $f0, $f10, $f28            
/* 01058 80BA3AF8 3C01C248 */  lui     $at, 0xC248                ## $at = C2480000
.L80BA3AFC:
/* 0105C 80BA3AFC 44813000 */  mtc1    $at, $f6                   ## $f6 = -50.00
/* 01060 80BA3B00 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01064 80BA3B04 4606003C */  c.lt.s  $f0, $f6                   
/* 01068 80BA3B08 00000000 */  nop
/* 0106C 80BA3B0C 45020006 */  bc1fl   .L80BA3B28                 
/* 01070 80BA3B10 C60A0158 */  lwc1    $f10, 0x0158($s0)          ## 8015E7B8
/* 01074 80BA3B14 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 01078 80BA3B18 E61A0154 */  swc1    $f26, 0x0154($s0)          ## 8015E7B4
/* 0107C 80BA3B1C 4604E200 */  add.s   $f8, $f28, $f4             
/* 01080 80BA3B20 E608016C */  swc1    $f8, 0x016C($s0)           ## 8015E7CC
/* 01084 80BA3B24 C60A0158 */  lwc1    $f10, 0x0158($s0)          ## 8015E7B8
.L80BA3B28:
/* 01088 80BA3B28 C6060170 */  lwc1    $f6, 0x0170($s0)           ## 8015E7D0
/* 0108C 80BA3B2C 46065100 */  add.s   $f4, $f10, $f6             
/* 01090 80BA3B30 461E2001 */  sub.s   $f0, $f4, $f30             
/* 01094 80BA3B34 4600C03C */  c.lt.s  $f24, $f0                  
/* 01098 80BA3B38 00000000 */  nop
/* 0109C 80BA3B3C 45020009 */  bc1fl   .L80BA3B64                 
/* 010A0 80BA3B40 460C003C */  c.lt.s  $f0, $f12                  
/* 010A4 80BA3B44 4618F201 */  sub.s   $f8, $f30, $f24            
/* 010A8 80BA3B48 E61A0158 */  swc1    $f26, 0x0158($s0)          ## 8015E7B8
/* 010AC 80BA3B4C C60A0158 */  lwc1    $f10, 0x0158($s0)          ## 8015E7B8
/* 010B0 80BA3B50 E6080170 */  swc1    $f8, 0x0170($s0)           ## 8015E7D0
/* 010B4 80BA3B54 C6060170 */  lwc1    $f6, 0x0170($s0)           ## 8015E7D0
/* 010B8 80BA3B58 46065100 */  add.s   $f4, $f10, $f6             
/* 010BC 80BA3B5C 461E2001 */  sub.s   $f0, $f4, $f30             
/* 010C0 80BA3B60 460C003C */  c.lt.s  $f0, $f12                  
.L80BA3B64:
/* 010C4 80BA3B64 00000000 */  nop
/* 010C8 80BA3B68 45020005 */  bc1fl   .L80BA3B80                 
/* 010CC 80BA3B6C 8FA90088 */  lw      $t1, 0x0088($sp)           
/* 010D0 80BA3B70 4618F200 */  add.s   $f8, $f30, $f24            
/* 010D4 80BA3B74 E61A0158 */  swc1    $f26, 0x0158($s0)          ## 8015E7B8
/* 010D8 80BA3B78 E6080170 */  swc1    $f8, 0x0170($s0)           ## 8015E7D0
/* 010DC 80BA3B7C 8FA90088 */  lw      $t1, 0x0088($sp)           
.L80BA3B80:
/* 010E0 80BA3B80 10000004 */  beq     $zero, $zero, .L80BA3B94   
/* 010E4 80BA3B84 91230B15 */  lbu     $v1, 0x0B15($t1)           ## 00000B15
/* 010E8 80BA3B88 A200014C */  sb      $zero, 0x014C($s0)         ## 8015E7AC
.L80BA3B8C:
/* 010EC 80BA3B8C 8FAA0088 */  lw      $t2, 0x0088($sp)           
/* 010F0 80BA3B90 91430B15 */  lbu     $v1, 0x0B15($t2)           ## 00000B15
.L80BA3B94:
/* 010F4 80BA3B94 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000002
.L80BA3B98:
/* 010F8 80BA3B98 00129400 */  sll     $s2, $s2, 16               
/* 010FC 80BA3B9C 00129403 */  sra     $s2, $s2, 16               
/* 01100 80BA3BA0 0243082A */  slt     $at, $s2, $v1              
/* 01104 80BA3BA4 5420FD1E */  bnel    $at, $zero, .L80BA3020     
/* 01108 80BA3BA8 C63000E0 */  lwc1    $f16, 0x00E0($s1)          ## 000000E0
.L80BA3BAC:
/* 0110C 80BA3BAC 8FBF006C */  lw      $ra, 0x006C($sp)           
/* 01110 80BA3BB0 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 01114 80BA3BB4 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 01118 80BA3BB8 D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 0111C 80BA3BBC D7BA0038 */  ldc1    $f26, 0x0038($sp)          
/* 01120 80BA3BC0 D7BC0040 */  ldc1    $f28, 0x0040($sp)          
/* 01124 80BA3BC4 D7BE0048 */  ldc1    $f30, 0x0048($sp)          
/* 01128 80BA3BC8 8FB00050 */  lw      $s0, 0x0050($sp)           
/* 0112C 80BA3BCC 8FB10054 */  lw      $s1, 0x0054($sp)           
/* 01130 80BA3BD0 8FB20058 */  lw      $s2, 0x0058($sp)           
/* 01134 80BA3BD4 8FB3005C */  lw      $s3, 0x005C($sp)           
/* 01138 80BA3BD8 8FB40060 */  lw      $s4, 0x0060($sp)           
/* 0113C 80BA3BDC 8FB50064 */  lw      $s5, 0x0064($sp)           
/* 01140 80BA3BE0 8FB60068 */  lw      $s6, 0x0068($sp)           
/* 01144 80BA3BE4 03E00008 */  jr      $ra                        
/* 01148 80BA3BE8 27BD00F8 */  addiu   $sp, $sp, 0x00F8           ## $sp = 00000000


