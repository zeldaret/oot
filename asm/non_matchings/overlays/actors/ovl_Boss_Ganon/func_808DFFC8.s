glabel func_808DFFC8
/* 09758 808DFFC8 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 0975C 808DFFCC AFBF003C */  sw      $ra, 0x003C($sp)           
/* 09760 808DFFD0 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 09764 808DFFD4 AFA40078 */  sw      $a0, 0x0078($sp)           
/* 09768 808DFFD8 AFA5007C */  sw      $a1, 0x007C($sp)           
/* 0976C 808DFFDC C48601E4 */  lwc1    $f6, 0x01E4($a0)           ## 000001E4
/* 09770 808DFFE0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 09774 808DFFE4 3C06808F */  lui     $a2, %hi(D_808F7BE0)       ## $a2 = 808F0000
/* 09778 808DFFE8 24C67BE0 */  addiu   $a2, $a2, %lo(D_808F7BE0)  ## $a2 = 808F7BE0
/* 0977C 808DFFEC 4606203C */  c.lt.s  $f4, $f6                   
/* 09780 808DFFF0 27A40060 */  addiu   $a0, $sp, 0x0060           ## $a0 = FFFFFFE8
/* 09784 808DFFF4 45020093 */  bc1fl   .L808E0244                 
/* 09788 808DFFF8 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 0978C 808DFFFC 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 09790 808E0000 24071E70 */  addiu   $a3, $zero, 0x1E70         ## $a3 = 00001E70
/* 09794 808E0004 0C031AB1 */  jal     Graph_OpenDisps              
/* 09798 808E0008 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0979C 808E000C 0C034213 */  jal     Matrix_Push              
/* 097A0 808E0010 00000000 */  nop
/* 097A4 808E0014 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 097A8 808E0018 3C19E700 */  lui     $t9, 0xE700                ## $t9 = E7000000
/* 097AC 808E001C 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 097B0 808E0020 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 097B4 808E0024 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 097B8 808E0028 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 097BC 808E002C AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 097C0 808E0030 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 097C4 808E0034 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 097C8 808E0038 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 097CC 808E003C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 097D0 808E0040 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 097D4 808E0044 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 097D8 808E0048 8FAC0078 */  lw      $t4, 0x0078($sp)           
/* 097DC 808E004C 8FAB007C */  lw      $t3, 0x007C($sp)           
/* 097E0 808E0050 24090020 */  addiu   $t1, $zero, 0x0020         ## $t1 = 00000020
/* 097E4 808E0054 858301A2 */  lh      $v1, 0x01A2($t4)           ## 000001A2
/* 097E8 808E0058 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 097EC 808E005C 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 097F0 808E0060 00030823 */  subu    $at, $zero, $v1            
/* 097F4 808E0064 000130C0 */  sll     $a2, $at,  3               
/* 097F8 808E0068 0001C080 */  sll     $t8, $at,  2               
/* 097FC 808E006C 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 09800 808E0070 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 09804 808E0074 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 09808 808E0078 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 0980C 808E007C AFB8001C */  sw      $t8, 0x001C($sp)           
/* 09810 808E0080 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 09814 808E0084 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 09818 808E0088 AFA90028 */  sw      $t1, 0x0028($sp)           
/* 0981C 808E008C AFB90024 */  sw      $t9, 0x0024($sp)           
/* 09820 808E0090 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 09824 808E0094 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 09828 808E0098 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 0982C 808E009C AFA20058 */  sw      $v0, 0x0058($sp)           
/* 09830 808E00A0 8FA80058 */  lw      $t0, 0x0058($sp)           
/* 09834 808E00A4 3C0BFA00 */  lui     $t3, 0xFA00                ## $t3 = FA000000
/* 09838 808E00A8 3C016400 */  lui     $at, 0x6400                ## $at = 64000000
/* 0983C 808E00AC AD020004 */  sw      $v0, 0x0004($t0)           ## 00000004
/* 09840 808E00B0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09844 808E00B4 8FA40078 */  lw      $a0, 0x0078($sp)           
/* 09848 808E00B8 3421C800 */  ori     $at, $at, 0xC800           ## $at = 6400C800
/* 0984C 808E00BC 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 09850 808E00C0 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 09854 808E00C4 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 09858 808E00C8 C48801E4 */  lwc1    $f8, 0x01E4($a0)           ## 000001E4
/* 0985C 808E00CC 3C0B8200 */  lui     $t3, 0x8200                ## $t3 = 82000000
/* 09860 808E00D0 356B0080 */  ori     $t3, $t3, 0x0080           ## $t3 = 82000080
/* 09864 808E00D4 4600428D */  trunc.w.s $f10, $f8                  
/* 09868 808E00D8 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 0986C 808E00DC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 09870 808E00E0 3C06C316 */  lui     $a2, 0xC316                ## $a2 = C3160000
/* 09874 808E00E4 440F5000 */  mfc1    $t7, $f10                  
/* 09878 808E00E8 00000000 */  nop
/* 0987C 808E00EC 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 09880 808E00F0 0301C825 */  or      $t9, $t8, $at              ## $t9 = 6400C800
/* 09884 808E00F4 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 09888 808E00F8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0988C 808E00FC 24010015 */  addiu   $at, $zero, 0x0015         ## $at = 00000015
/* 09890 808E0100 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 09894 808E0104 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 09898 808E0108 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 0989C 808E010C AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 098A0 808E0110 848C0678 */  lh      $t4, 0x0678($a0)           ## 00000678
/* 098A4 808E0114 1181000B */  beq     $t4, $at, .L808E0144       
/* 098A8 808E0118 3C0142D2 */  lui     $at, 0x42D2                ## $at = 42D20000
/* 098AC 808E011C 44817000 */  mtc1    $at, $f14                  ## $f14 = 105.00
/* 098B0 808E0120 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 098B4 808E0124 0C034261 */  jal     Matrix_Translate              
/* 098B8 808E0128 3C06C3C8 */  lui     $a2, 0xC3C8                ## $a2 = C3C80000
/* 098BC 808E012C 3C018090 */  lui     $at, %hi(D_808F8160)       ## $at = 80900000
/* 098C0 808E0130 C42C8160 */  lwc1    $f12, %lo(D_808F8160)($at) 
/* 098C4 808E0134 0C0342DC */  jal     Matrix_RotateX              
/* 098C8 808E0138 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 098CC 808E013C 10000010 */  beq     $zero, $zero, .L808E0180   
/* 098D0 808E0140 8FAD0078 */  lw      $t5, 0x0078($sp)           
.L808E0144:
/* 098D4 808E0144 3C01C248 */  lui     $at, 0xC248                ## $at = C2480000
/* 098D8 808E0148 44816000 */  mtc1    $at, $f12                  ## $f12 = -50.00
/* 098DC 808E014C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 098E0 808E0150 44817000 */  mtc1    $at, $f14                  ## $f14 = 50.00
/* 098E4 808E0154 0C034261 */  jal     Matrix_Translate              
/* 098E8 808E0158 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 098EC 808E015C 3C018090 */  lui     $at, %hi(D_808F8164)       ## $at = 80900000
/* 098F0 808E0160 C42C8164 */  lwc1    $f12, %lo(D_808F8164)($at) 
/* 098F4 808E0164 0C034348 */  jal     Matrix_RotateY              
/* 098F8 808E0168 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 098FC 808E016C 3C018090 */  lui     $at, %hi(D_808F8168)       ## $at = 80900000
/* 09900 808E0170 C42C8168 */  lwc1    $f12, %lo(D_808F8168)($at) 
/* 09904 808E0174 0C0342DC */  jal     Matrix_RotateX              
/* 09908 808E0178 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0990C 808E017C 8FAD0078 */  lw      $t5, 0x0078($sp)           
.L808E0180:
/* 09910 808E0180 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 09914 808E0184 C5AC01E8 */  lwc1    $f12, 0x01E8($t5)          ## 000001E8
/* 09918 808E0188 44066000 */  mfc1    $a2, $f12                  
/* 0991C 808E018C 0C0342A3 */  jal     Matrix_Scale              
/* 09920 808E0190 46006386 */  mov.s   $f14, $f12                 
/* 09924 808E0194 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09928 808E0198 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 0992C 808E019C 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 09930 808E01A0 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 09934 808E01A4 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 09938 808E01A8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0993C 808E01AC 8FB8007C */  lw      $t8, 0x007C($sp)           
/* 09940 808E01B0 3C05808F */  lui     $a1, %hi(D_808F7BF4)       ## $a1 = 808F0000
/* 09944 808E01B4 24A57BF4 */  addiu   $a1, $a1, %lo(D_808F7BF4)  ## $a1 = 808F7BF4
/* 09948 808E01B8 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 0994C 808E01BC 24061EA1 */  addiu   $a2, $zero, 0x1EA1         ## $a2 = 00001EA1
/* 09950 808E01C0 0C0346A2 */  jal     Matrix_NewMtx              
/* 09954 808E01C4 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 09958 808E01C8 8FA3004C */  lw      $v1, 0x004C($sp)           
/* 0995C 808E01CC 3C04808F */  lui     $a0, %hi(D_808F7940)       ## $a0 = 808F0000
/* 09960 808E01D0 24847940 */  addiu   $a0, $a0, %lo(D_808F7940)  ## $a0 = 808F7940
/* 09964 808E01D4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 09968 808E01D8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0996C 808E01DC 00045100 */  sll     $t2, $a0,  4               
/* 09970 808E01E0 000A5F02 */  srl     $t3, $t2, 28               
/* 09974 808E01E4 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 09978 808E01E8 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 0997C 808E01EC 000B6080 */  sll     $t4, $t3,  2               
/* 09980 808E01F0 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 09984 808E01F4 3C0D8016 */  lui     $t5, 0x8016                ## $t5 = 80160000
/* 09988 808E01F8 01AC6821 */  addu    $t5, $t5, $t4              
/* 0998C 808E01FC 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 09990 808E0200 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 09994 808E0204 8DAD6FA8 */  lw      $t5, 0x6FA8($t5)           ## 80166FA8
/* 09998 808E0208 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0999C 808E020C 00817024 */  and     $t6, $a0, $at              
/* 099A0 808E0210 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 099A4 808E0214 01AE7821 */  addu    $t7, $t5, $t6              
/* 099A8 808E0218 01E1C021 */  addu    $t8, $t7, $at              
/* 099AC 808E021C 0C034221 */  jal     Matrix_Pull              
/* 099B0 808E0220 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 099B4 808E0224 8FB9007C */  lw      $t9, 0x007C($sp)           
/* 099B8 808E0228 3C06808F */  lui     $a2, %hi(D_808F7C08)       ## $a2 = 808F0000
/* 099BC 808E022C 24C67C08 */  addiu   $a2, $a2, %lo(D_808F7C08)  ## $a2 = 808F7C08
/* 099C0 808E0230 27A40060 */  addiu   $a0, $sp, 0x0060           ## $a0 = FFFFFFE8
/* 099C4 808E0234 24071EA4 */  addiu   $a3, $zero, 0x1EA4         ## $a3 = 00001EA4
/* 099C8 808E0238 0C031AD5 */  jal     Graph_CloseDisps              
/* 099CC 808E023C 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
/* 099D0 808E0240 8FBF003C */  lw      $ra, 0x003C($sp)           
.L808E0244:
/* 099D4 808E0244 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 099D8 808E0248 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 099DC 808E024C 03E00008 */  jr      $ra                        
/* 099E0 808E0250 00000000 */  nop
