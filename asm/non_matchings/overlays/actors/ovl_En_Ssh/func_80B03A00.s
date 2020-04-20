glabel func_80B03A00
/* 01790 80B03A00 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01794 80B03A04 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01798 80B03A08 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0179C 80B03A0C 0C00BC65 */  jal     func_8002F194              
/* 017A0 80B03A10 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 017A4 80B03A14 10400020 */  beq     $v0, $zero, .L80B03A98     
/* 017A8 80B03A18 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 017AC 80B03A1C 84EF001C */  lh      $t7, 0x001C($a3)           ## 0000001C
/* 017B0 80B03A20 3C0E80B0 */  lui     $t6, %hi(func_80B039BC)    ## $t6 = 80B00000
/* 017B4 80B03A24 25CE39BC */  addiu   $t6, $t6, %lo(func_80B039BC) ## $t6 = 80B039BC
/* 017B8 80B03A28 15E00006 */  bne     $t7, $zero, .L80B03A44     
/* 017BC 80B03A2C ACEE02F8 */  sw      $t6, 0x02F8($a3)           ## 000002F8
/* 017C0 80B03A30 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 017C4 80B03A34 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 017C8 80B03A38 94780EE6 */  lhu     $t8, 0x0EE6($v1)           ## 8015F546
/* 017CC 80B03A3C 37190040 */  ori     $t9, $t8, 0x0040           ## $t9 = 00000040
/* 017D0 80B03A40 A4790EE6 */  sh      $t9, 0x0EE6($v1)           ## 8015F546
.L80B03A44:
/* 017D4 80B03A44 94E2010E */  lhu     $v0, 0x010E($a3)           ## 0000010E
/* 017D8 80B03A48 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 017DC 80B03A4C 24010026 */  addiu   $at, $zero, 0x0026         ## $at = 00000026
/* 017E0 80B03A50 10410004 */  beq     $v0, $at, .L80B03A64       
/* 017E4 80B03A54 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 017E8 80B03A58 24010027 */  addiu   $at, $zero, 0x0027         ## $at = 00000027
/* 017EC 80B03A5C 54410006 */  bnel    $v0, $at, .L80B03A78       
/* 017F0 80B03A60 24010024 */  addiu   $at, $zero, 0x0024         ## $at = 00000024
.L80B03A64:
/* 017F4 80B03A64 94680F2A */  lhu     $t0, 0x0F2A($v1)           ## 8015F58A
/* 017F8 80B03A68 35090040 */  ori     $t1, $t0, 0x0040           ## $t1 = 00000040
/* 017FC 80B03A6C A4690F2A */  sh      $t1, 0x0F2A($v1)           ## 8015F58A
/* 01800 80B03A70 94E2010E */  lhu     $v0, 0x010E($a3)           ## 0000010E
/* 01804 80B03A74 24010024 */  addiu   $at, $zero, 0x0024         ## $at = 00000024
.L80B03A78:
/* 01808 80B03A78 10410003 */  beq     $v0, $at, .L80B03A88       
/* 0180C 80B03A7C 24010025 */  addiu   $at, $zero, 0x0025         ## $at = 00000025
/* 01810 80B03A80 5441007F */  bnel    $v0, $at, .L80B03C80       
/* 01814 80B03A84 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B03A88:
/* 01818 80B03A88 946A0F2A */  lhu     $t2, 0x0F2A($v1)           ## 8015F58A
/* 0181C 80B03A8C 354B0080 */  ori     $t3, $t2, 0x0080           ## $t3 = 00000080
/* 01820 80B03A90 1000007A */  beq     $zero, $zero, .L80B03C7C   
/* 01824 80B03A94 A46B0F2A */  sh      $t3, 0x0F2A($v1)           ## 8015F58A
.L80B03A98:
/* 01828 80B03A98 84E30528 */  lh      $v1, 0x0528($a3)           ## 00000528
/* 0182C 80B03A9C 5060000E */  beql    $v1, $zero, .L80B03AD8     
/* 01830 80B03AA0 84E30534 */  lh      $v1, 0x0534($a3)           ## 00000534
/* 01834 80B03AA4 14600003 */  bne     $v1, $zero, .L80B03AB4     
/* 01838 80B03AA8 246CFFFF */  addiu   $t4, $v1, 0xFFFF           ## $t4 = 8015E65F
/* 0183C 80B03AAC 10000003 */  beq     $zero, $zero, .L80B03ABC   
/* 01840 80B03AB0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B03AB4:
/* 01844 80B03AB4 A4EC0528 */  sh      $t4, 0x0528($a3)           ## 00000528
/* 01848 80B03AB8 84E20528 */  lh      $v0, 0x0528($a3)           ## 00000528
.L80B03ABC:
/* 0184C 80B03ABC 14400005 */  bne     $v0, $zero, .L80B03AD4     
/* 01850 80B03AC0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01854 80B03AC4 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01858 80B03AC8 0C2C09C0 */  jal     func_80B02700              
/* 0185C 80B03ACC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01860 80B03AD0 8FA70018 */  lw      $a3, 0x0018($sp)           
.L80B03AD4:
/* 01864 80B03AD4 84E30534 */  lh      $v1, 0x0534($a3)           ## 00000534
.L80B03AD8:
/* 01868 80B03AD8 5060000E */  beql    $v1, $zero, .L80B03B14     
/* 0186C 80B03ADC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01870 80B03AE0 14600003 */  bne     $v1, $zero, .L80B03AF0     
/* 01874 80B03AE4 246DFFFF */  addiu   $t5, $v1, 0xFFFF           ## $t5 = FFFFFFFF
/* 01878 80B03AE8 10000003 */  beq     $zero, $zero, .L80B03AF8   
/* 0187C 80B03AEC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B03AF0:
/* 01880 80B03AF0 A4ED0534 */  sh      $t5, 0x0534($a3)           ## 00000534
/* 01884 80B03AF4 84E20534 */  lh      $v0, 0x0534($a3)           ## 00000534
.L80B03AF8:
/* 01888 80B03AF8 14400005 */  bne     $v0, $zero, .L80B03B10     
/* 0188C 80B03AFC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01890 80B03B00 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01894 80B03B04 0C2C09C0 */  jal     func_80B02700              
/* 01898 80B03B08 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0189C 80B03B0C 8FA70018 */  lw      $a3, 0x0018($sp)           
.L80B03B10:
/* 018A0 80B03B10 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L80B03B14:
/* 018A4 80B03B14 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 018A8 80B03B18 0C2C0B6F */  jal     func_80B02DBC              
/* 018AC 80B03B1C AFA70018 */  sw      $a3, 0x0018($sp)           
/* 018B0 80B03B20 1440000A */  bne     $v0, $zero, .L80B03B4C     
/* 018B4 80B03B24 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 018B8 80B03B28 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 018BC 80B03B2C 0C2C0A15 */  jal     func_80B02854              
/* 018C0 80B03B30 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 018C4 80B03B34 3C0580B0 */  lui     $a1, %hi(func_80B03E74)    ## $a1 = 80B00000
/* 018C8 80B03B38 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 018CC 80B03B3C 0C2C089C */  jal     func_80B02270              
/* 018D0 80B03B40 24A53E74 */  addiu   $a1, $a1, %lo(func_80B03E74) ## $a1 = 80B03E74
/* 018D4 80B03B44 1000004E */  beq     $zero, $zero, .L80B03C80   
/* 018D8 80B03B48 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B03B4C:
/* 018DC 80B03B4C 84E30530 */  lh      $v1, 0x0530($a3)           ## 00000530
/* 018E0 80B03B50 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 018E4 80B03B54 2405386A */  addiu   $a1, $zero, 0x386A         ## $a1 = 0000386A
/* 018E8 80B03B58 14600003 */  bne     $v1, $zero, .L80B03B68     
/* 018EC 80B03B5C 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 018F0 80B03B60 10000003 */  beq     $zero, $zero, .L80B03B70   
/* 018F4 80B03B64 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B03B68:
/* 018F8 80B03B68 A4EE0530 */  sh      $t6, 0x0530($a3)           ## 00000530
/* 018FC 80B03B6C 84E20530 */  lh      $v0, 0x0530($a3)           ## 00000530
.L80B03B70:
/* 01900 80B03B70 54400007 */  bnel    $v0, $zero, .L80B03B90     
/* 01904 80B03B74 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01908 80B03B78 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0190C 80B03B7C AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01910 80B03B80 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 01914 80B03B84 240F0040 */  addiu   $t7, $zero, 0x0040         ## $t7 = 00000040
/* 01918 80B03B88 A4EF0530 */  sh      $t7, 0x0530($a3)           ## 00000530
/* 0191C 80B03B8C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L80B03B90:
/* 01920 80B03B90 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01924 80B03B94 0C2C0B54 */  jal     func_80B02D50              
/* 01928 80B03B98 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0192C 80B03B9C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 01930 80B03BA0 84F80528 */  lh      $t8, 0x0528($a3)           ## 00000528
/* 01934 80B03BA4 57000036 */  bnel    $t8, $zero, .L80B03C80     
/* 01938 80B03BA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0193C 80B03BAC 84F90534 */  lh      $t9, 0x0534($a3)           ## 00000534
/* 01940 80B03BB0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01944 80B03BB4 2405000D */  addiu   $a1, $zero, 0x000D         ## $a1 = 0000000D
/* 01948 80B03BB8 57200031 */  bnel    $t9, $zero, .L80B03C80     
/* 0194C 80B03BBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01950 80B03BC0 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 01954 80B03BC4 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01958 80B03BC8 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 0195C 80B03BCC 3048FFFF */  andi    $t0, $v0, 0xFFFF           ## $t0 = 00000000
/* 01960 80B03BD0 15000026 */  bne     $t0, $zero, .L80B03C6C     
/* 01964 80B03BD4 A4E2010E */  sh      $v0, 0x010E($a3)           ## 0000010E
/* 01968 80B03BD8 84E9001C */  lh      $t1, 0x001C($a3)           ## 0000001C
/* 0196C 80B03BDC 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 01970 80B03BE0 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 01974 80B03BE4 55200020 */  bnel    $t1, $zero, .L80B03C68     
/* 01978 80B03BE8 24090022 */  addiu   $t1, $zero, 0x0022         ## $t1 = 00000022
/* 0197C 80B03BEC 846200D0 */  lh      $v0, 0x00D0($v1)           ## 8015E730
/* 01980 80B03BF0 240A0029 */  addiu   $t2, $zero, 0x0029         ## $t2 = 00000029
/* 01984 80B03BF4 28410032 */  slti    $at, $v0, 0x0032           
/* 01988 80B03BF8 54200004 */  bnel    $at, $zero, .L80B03C0C     
/* 0198C 80B03BFC 2841000A */  slti    $at, $v0, 0x000A           
/* 01990 80B03C00 1000001A */  beq     $zero, $zero, .L80B03C6C   
/* 01994 80B03C04 A4EA010E */  sh      $t2, 0x010E($a3)           ## 0000010E
/* 01998 80B03C08 2841000A */  slti    $at, $v0, 0x000A           
.L80B03C0C:
/* 0199C 80B03C0C 5420000C */  bnel    $at, $zero, .L80B03C40     
/* 019A0 80B03C10 946F0F2A */  lhu     $t7, 0x0F2A($v1)           ## 8015F58A
/* 019A4 80B03C14 946B0F2A */  lhu     $t3, 0x0F2A($v1)           ## 8015F58A
/* 019A8 80B03C18 240D0024 */  addiu   $t5, $zero, 0x0024         ## $t5 = 00000024
/* 019AC 80B03C1C 240E0025 */  addiu   $t6, $zero, 0x0025         ## $t6 = 00000025
/* 019B0 80B03C20 316C0080 */  andi    $t4, $t3, 0x0080           ## $t4 = 00000000
/* 019B4 80B03C24 11800003 */  beq     $t4, $zero, .L80B03C34     
/* 019B8 80B03C28 00000000 */  nop
/* 019BC 80B03C2C 1000000F */  beq     $zero, $zero, .L80B03C6C   
/* 019C0 80B03C30 A4ED010E */  sh      $t5, 0x010E($a3)           ## 0000010E
.L80B03C34:
/* 019C4 80B03C34 1000000D */  beq     $zero, $zero, .L80B03C6C   
/* 019C8 80B03C38 A4EE010E */  sh      $t6, 0x010E($a3)           ## 0000010E
/* 019CC 80B03C3C 946F0F2A */  lhu     $t7, 0x0F2A($v1)           ## 8015F58A
.L80B03C40:
/* 019D0 80B03C40 24190027 */  addiu   $t9, $zero, 0x0027         ## $t9 = 00000027
/* 019D4 80B03C44 24080026 */  addiu   $t0, $zero, 0x0026         ## $t0 = 00000026
/* 019D8 80B03C48 31F80040 */  andi    $t8, $t7, 0x0040           ## $t8 = 00000000
/* 019DC 80B03C4C 13000003 */  beq     $t8, $zero, .L80B03C5C     
/* 019E0 80B03C50 00000000 */  nop
/* 019E4 80B03C54 10000005 */  beq     $zero, $zero, .L80B03C6C   
/* 019E8 80B03C58 A4F9010E */  sh      $t9, 0x010E($a3)           ## 0000010E
.L80B03C5C:
/* 019EC 80B03C5C 10000003 */  beq     $zero, $zero, .L80B03C6C   
/* 019F0 80B03C60 A4E8010E */  sh      $t0, 0x010E($a3)           ## 0000010E
/* 019F4 80B03C64 24090022 */  addiu   $t1, $zero, 0x0022         ## $t1 = 00000022
.L80B03C68:
/* 019F8 80B03C68 A4E9010E */  sh      $t1, 0x010E($a3)           ## 0000010E
.L80B03C6C:
/* 019FC 80B03C6C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01A00 80B03C70 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01A04 80B03C74 0C00BCB3 */  jal     func_8002F2CC              
/* 01A08 80B03C78 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
.L80B03C7C:
/* 01A0C 80B03C7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B03C80:
/* 01A10 80B03C80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01A14 80B03C84 03E00008 */  jr      $ra                        
/* 01A18 80B03C88 00000000 */  nop
