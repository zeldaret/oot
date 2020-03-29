glabel func_808CF898
/* 04AD8 808CF898 27BDFF28 */  addiu   $sp, $sp, 0xFF28           ## $sp = FFFFFF28
/* 04ADC 808CF89C AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 04AE0 808CF8A0 AFBE0040 */  sw      $s8, 0x0040($sp)           
/* 04AE4 808CF8A4 AFB7003C */  sw      $s7, 0x003C($sp)           
/* 04AE8 808CF8A8 AFB60038 */  sw      $s6, 0x0038($sp)           
/* 04AEC 808CF8AC AFB50034 */  sw      $s5, 0x0034($sp)           
/* 04AF0 808CF8B0 AFB40030 */  sw      $s4, 0x0030($sp)           
/* 04AF4 808CF8B4 AFB3002C */  sw      $s3, 0x002C($sp)           
/* 04AF8 808CF8B8 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 04AFC 808CF8BC AFB10024 */  sw      $s1, 0x0024($sp)           
/* 04B00 808CF8C0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 04B04 808CF8C4 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 04B08 808CF8C8 8CB00000 */  lw      $s0, 0x0000($a1)           ## 00000000
/* 04B0C 808CF8CC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 04B10 808CF8D0 00A0F025 */  or      $s8, $a1, $zero            ## $s8 = 00000000
/* 04B14 808CF8D4 AFA400C8 */  sw      $a0, 0x00C8($sp)           
/* 04B18 808CF8D8 3C06808D */  lui     $a2, %hi(D_808D1CEC)       ## $a2 = 808D0000
/* 04B1C 808CF8DC 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 04B20 808CF8E0 24C61CEC */  addiu   $a2, $a2, %lo(D_808D1CEC)  ## $a2 = 808D1CEC
/* 04B24 808CF8E4 27A400B4 */  addiu   $a0, $sp, 0x00B4           ## $a0 = FFFFFFDC
/* 04B28 808CF8E8 24070FB7 */  addiu   $a3, $zero, 0x0FB7         ## $a3 = 00000FB7
/* 04B2C 808CF8EC 0C031AB1 */  jal     func_800C6AC4              
/* 04B30 808CF8F0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 04B34 808CF8F4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04B38 808CF8F8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 1.00
/* 04B3C 808CF8FC 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 04B40 808CF900 24170001 */  addiu   $s7, $zero, 0x0001         ## $s7 = 00000001
/* 04B44 808CF904 3C16DE00 */  lui     $s6, 0xDE00                ## $s6 = DE000000
.L808CF908:
/* 04B48 808CF908 922E0024 */  lbu     $t6, 0x0024($s1)           ## 00000024
/* 04B4C 808CF90C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 04B50 808CF910 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 04B54 808CF914 16EE0041 */  bne     $s7, $t6, .L808CFA1C       
/* 04B58 808CF918 03C19821 */  addu    $s3, $s8, $at              
/* 04B5C 808CF91C 3C0F0601 */  lui     $t7, 0x0601                ## $t7 = 06010000
/* 04B60 808CF920 25EFA900 */  addiu   $t7, $t7, 0xA900           ## $t7 = 0600A900
/* 04B64 808CF924 16A0000C */  bne     $s5, $zero, .L808CF958     
/* 04B68 808CF928 AFAF0050 */  sw      $t7, 0x0050($sp)           
/* 04B6C 808CF92C 3C120601 */  lui     $s2, 0x0601                ## $s2 = 06010000
/* 04B70 808CF930 2652A880 */  addiu   $s2, $s2, 0xA880           ## $s2 = 0600A880
/* 04B74 808CF934 0C024F61 */  jal     func_80093D84              
/* 04B78 808CF938 8FC40000 */  lw      $a0, 0x0000($s8)           ## 00000000
/* 04B7C 808CF93C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 04B80 808CF940 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 04B84 808CF944 32B500FF */  andi    $s5, $s5, 0x00FF           ## $s5 = 00000001
/* 04B88 808CF948 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 04B8C 808CF94C AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 04B90 808CF950 AC520004 */  sw      $s2, 0x0004($v0)           ## 00000004
/* 04B94 808CF954 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L808CF958:
/* 04B98 808CF958 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 04B9C 808CF95C 3C08FA00 */  lui     $t0, 0xFA00                ## $t0 = FA000000
/* 04BA0 808CF960 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 04BA4 808CF964 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 04BA8 808CF968 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 04BAC 808CF96C AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 04BB0 808CF970 922A0026 */  lbu     $t2, 0x0026($s1)           ## 00000026
/* 04BB4 808CF974 922D0027 */  lbu     $t5, 0x0027($s1)           ## 00000027
/* 04BB8 808CF978 92390028 */  lbu     $t9, 0x0028($s1)           ## 00000028
/* 04BBC 808CF97C 000A5E00 */  sll     $t3, $t2, 24               
/* 04BC0 808CF980 862A002A */  lh      $t2, 0x002A($s1)           ## 0000002A
/* 04BC4 808CF984 000D7400 */  sll     $t6, $t5, 16               
/* 04BC8 808CF988 016E7825 */  or      $t7, $t3, $t6              ## $t7 = 00000000
/* 04BCC 808CF98C 00194200 */  sll     $t0, $t9,  8               
/* 04BD0 808CF990 01E84825 */  or      $t1, $t7, $t0              ## $t1 = FA000000
/* 04BD4 808CF994 314C00FF */  andi    $t4, $t2, 0x00FF           ## $t4 = 00000000
/* 04BD8 808CF998 012C6825 */  or      $t5, $t1, $t4              ## $t5 = FA000000
/* 04BDC 808CF99C AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 04BE0 808CF9A0 8E260008 */  lw      $a2, 0x0008($s1)           ## 00000008
/* 04BE4 808CF9A4 C62E0004 */  lwc1    $f14, 0x0004($s1)          ## 00000004
/* 04BE8 808CF9A8 0C034261 */  jal     Matrix_Translate              
/* 04BEC 808CF9AC C62C0000 */  lwc1    $f12, 0x0000($s1)          ## 00000000
/* 04BF0 808CF9B0 0C0347F5 */  jal     func_800D1FD4              
/* 04BF4 808CF9B4 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 04BF8 808CF9B8 C62C0030 */  lwc1    $f12, 0x0030($s1)          ## 00000030
/* 04BFC 808CF9BC 4406A000 */  mfc1    $a2, $f20                  
/* 04C00 808CF9C0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 04C04 808CF9C4 0C0342A3 */  jal     Matrix_Scale              
/* 04C08 808CF9C8 46006386 */  mov.s   $f14, $f12                 
/* 04C0C 808CF9CC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 04C10 808CF9D0 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 04C14 808CF9D4 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 04C18 808CF9D8 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 04C1C 808CF9DC AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 04C20 808CF9E0 3C05808D */  lui     $a1, %hi(D_808D1CFC)       ## $a1 = 808D0000
/* 04C24 808CF9E4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 04C28 808CF9E8 24A51CFC */  addiu   $a1, $a1, %lo(D_808D1CFC)  ## $a1 = 808D1CFC
/* 04C2C 808CF9EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04C30 808CF9F0 24060FCE */  addiu   $a2, $zero, 0x0FCE         ## $a2 = 00000FCE
/* 04C34 808CF9F4 0C0346A2 */  jal     Matrix_NewMtx              
/* 04C38 808CF9F8 AFA200A8 */  sw      $v0, 0x00A8($sp)           
/* 04C3C 808CF9FC 8FA300A8 */  lw      $v1, 0x00A8($sp)           
/* 04C40 808CFA00 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 04C44 808CFA04 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 04C48 808CFA08 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 04C4C 808CFA0C AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 04C50 808CFA10 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
/* 04C54 808CFA14 8FB90050 */  lw      $t9, 0x0050($sp)           
/* 04C58 808CFA18 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
.L808CFA1C:
/* 04C5C 808CFA1C 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 04C60 808CFA20 0014A400 */  sll     $s4, $s4, 16               
/* 04C64 808CFA24 0014A403 */  sra     $s4, $s4, 16               
/* 04C68 808CFA28 2A8100B4 */  slti    $at, $s4, 0x00B4           
/* 04C6C 808CFA2C 1420FFB6 */  bne     $at, $zero, .L808CF908     
/* 04C70 808CFA30 2631003C */  addiu   $s1, $s1, 0x003C           ## $s1 = 0000003C
/* 04C74 808CFA34 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 04C78 808CFA38 8FB100C8 */  lw      $s1, 0x00C8($sp)           
/* 04C7C 808CFA3C 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 04C80 808CFA40 24170002 */  addiu   $s7, $zero, 0x0002         ## $s7 = 00000002
.L808CFA44:
/* 04C84 808CFA44 922F0024 */  lbu     $t7, 0x0024($s1)           ## 00000060
/* 04C88 808CFA48 3C130601 */  lui     $s3, 0x0601                ## $s3 = 06010000
/* 04C8C 808CFA4C 56EF0032 */  bnel    $s7, $t7, .L808CFB18       
/* 04C90 808CFA50 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 04C94 808CFA54 16A0000C */  bne     $s5, $zero, .L808CFA88     
/* 04C98 808CFA58 2673D420 */  addiu   $s3, $s3, 0xD420           ## $s3 = 0600D420
/* 04C9C 808CFA5C 3C120601 */  lui     $s2, 0x0601                ## $s2 = 06010000
/* 04CA0 808CFA60 2652D3A0 */  addiu   $s2, $s2, 0xD3A0           ## $s2 = 0600D3A0
/* 04CA4 808CFA64 0C024F46 */  jal     func_80093D18              
/* 04CA8 808CFA68 8FC40000 */  lw      $a0, 0x0000($s8)           ## 00000000
/* 04CAC 808CFA6C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04CB0 808CFA70 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 04CB4 808CFA74 32B500FF */  andi    $s5, $s5, 0x00FF           ## $s5 = 00000001
/* 04CB8 808CFA78 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 04CBC 808CFA7C AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 04CC0 808CFA80 AC520004 */  sw      $s2, 0x0004($v0)           ## 00000004
/* 04CC4 808CFA84 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L808CFA88:
/* 04CC8 808CFA88 C62C0000 */  lwc1    $f12, 0x0000($s1)          ## 0000003C
/* 04CCC 808CFA8C C62E0004 */  lwc1    $f14, 0x0004($s1)          ## 00000040
/* 04CD0 808CFA90 8E260008 */  lw      $a2, 0x0008($s1)           ## 00000044
/* 04CD4 808CFA94 0C034261 */  jal     Matrix_Translate              
/* 04CD8 808CFA98 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 04CDC 808CFA9C C62C0038 */  lwc1    $f12, 0x0038($s1)          ## 00000074
/* 04CE0 808CFAA0 0C034348 */  jal     Matrix_RotateY              
/* 04CE4 808CFAA4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04CE8 808CFAA8 C62C0034 */  lwc1    $f12, 0x0034($s1)          ## 00000070
/* 04CEC 808CFAAC 0C0342DC */  jal     Matrix_RotateX              
/* 04CF0 808CFAB0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04CF4 808CFAB4 C62C0030 */  lwc1    $f12, 0x0030($s1)          ## 0000006C
/* 04CF8 808CFAB8 4406A000 */  mfc1    $a2, $f20                  
/* 04CFC 808CFABC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 04D00 808CFAC0 0C0342A3 */  jal     Matrix_Scale              
/* 04D04 808CFAC4 46006386 */  mov.s   $f14, $f12                 
/* 04D08 808CFAC8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04D0C 808CFACC 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 04D10 808CFAD0 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 04D14 808CFAD4 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 04D18 808CFAD8 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 04D1C 808CFADC 3C05808D */  lui     $a1, %hi(D_808D1D0C)       ## $a1 = 808D0000
/* 04D20 808CFAE0 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 04D24 808CFAE4 24A51D0C */  addiu   $a1, $a1, %lo(D_808D1D0C)  ## $a1 = 808D1D0C
/* 04D28 808CFAE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04D2C 808CFAEC 24060FE4 */  addiu   $a2, $zero, 0x0FE4         ## $a2 = 00000FE4
/* 04D30 808CFAF0 0C0346A2 */  jal     Matrix_NewMtx              
/* 04D34 808CFAF4 AFA2009C */  sw      $v0, 0x009C($sp)           
/* 04D38 808CFAF8 8FA3009C */  lw      $v1, 0x009C($sp)           
/* 04D3C 808CFAFC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 04D40 808CFB00 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 04D44 808CFB04 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 04D48 808CFB08 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 04D4C 808CFB0C AC530004 */  sw      $s3, 0x0004($v0)           ## 00000004
/* 04D50 808CFB10 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
/* 04D54 808CFB14 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000002
.L808CFB18:
/* 04D58 808CFB18 0014A400 */  sll     $s4, $s4, 16               
/* 04D5C 808CFB1C 0014A403 */  sra     $s4, $s4, 16               
/* 04D60 808CFB20 2A8100B4 */  slti    $at, $s4, 0x00B4           
/* 04D64 808CFB24 1420FFC7 */  bne     $at, $zero, .L808CFA44     
/* 04D68 808CFB28 2631003C */  addiu   $s1, $s1, 0x003C           ## $s1 = 00000078
/* 04D6C 808CFB2C 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 04D70 808CFB30 8FB100C8 */  lw      $s1, 0x00C8($sp)           
/* 04D74 808CFB34 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
.L808CFB38:
/* 04D78 808CFB38 922D0024 */  lbu     $t5, 0x0024($s1)           ## 0000009C
/* 04D7C 808CFB3C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 04D80 808CFB40 3C170601 */  lui     $s7, 0x0601                ## $s7 = 06010000
/* 04D84 808CFB44 15A10057 */  bne     $t5, $at, .L808CFCA4       
/* 04D88 808CFB48 26F7B3C8 */  addiu   $s7, $s7, 0xB3C8           ## $s7 = 0600B3C8
/* 04D8C 808CFB4C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 04D90 808CFB50 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 04D94 808CFB54 16A0001C */  bne     $s5, $zero, .L808CFBC8     
/* 04D98 808CFB58 03C19821 */  addu    $s3, $s8, $at              
/* 04D9C 808CFB5C 3C120601 */  lui     $s2, 0x0601                ## $s2 = 06010000
/* 04DA0 808CFB60 2652B3A8 */  addiu   $s2, $s2, 0xB3A8           ## $s2 = 0600B3A8
/* 04DA4 808CFB64 8E0402D0 */  lw      $a0, 0x02D0($s0)           ## 000002D0
/* 04DA8 808CFB68 0C024DDD */  jal     Gfx_CallSetupDL              
/* 04DAC 808CFB6C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 04DB0 808CFB70 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
/* 04DB4 808CFB74 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 04DB8 808CFB78 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 04DBC 808CFB7C AC520004 */  sw      $s2, 0x0004($v0)           ## 00000004
/* 04DC0 808CFB80 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
/* 04DC4 808CFB84 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 04DC8 808CFB88 3C195A1E */  lui     $t9, 0x5A1E                ## $t9 = 5A1E0000
/* 04DCC 808CFB8C 373900FF */  ori     $t9, $t9, 0x00FF           ## $t9 = 5A1E00FF
/* 04DD0 808CFB90 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 04DD4 808CFB94 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 04DD8 808CFB98 3C18FA00 */  lui     $t8, 0xFA00                ## $t8 = FA000000
/* 04DDC 808CFB9C AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 04DE0 808CFBA0 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 04DE4 808CFBA4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 04DE8 808CFBA8 3C08FB00 */  lui     $t0, 0xFB00                ## $t0 = FB000000
/* 04DEC 808CFBAC 3C0A5A1E */  lui     $t2, 0x5A1E                ## $t2 = 5A1E0000
/* 04DF0 808CFBB0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 04DF4 808CFBB4 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 04DF8 808CFBB8 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 04DFC 808CFBBC 32B500FF */  andi    $s5, $s5, 0x00FF           ## $s5 = 00000001
/* 04E00 808CFBC0 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 04E04 808CFBC4 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
.L808CFBC8:
/* 04E08 808CFBC8 C62C0000 */  lwc1    $f12, 0x0000($s1)          ## 00000078
/* 04E0C 808CFBCC C62E0004 */  lwc1    $f14, 0x0004($s1)          ## 0000007C
/* 04E10 808CFBD0 8E260008 */  lw      $a2, 0x0008($s1)           ## 00000080
/* 04E14 808CFBD4 0C034261 */  jal     Matrix_Translate              
/* 04E18 808CFBD8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 04E1C 808CFBDC C62C0030 */  lwc1    $f12, 0x0030($s1)          ## 000000A8
/* 04E20 808CFBE0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 04E24 808CFBE4 44066000 */  mfc1    $a2, $f12                  
/* 04E28 808CFBE8 0C0342A3 */  jal     Matrix_Scale              
/* 04E2C 808CFBEC 46006386 */  mov.s   $f14, $f12                 
/* 04E30 808CFBF0 0C0347F5 */  jal     func_800D1FD4              
/* 04E34 808CFBF4 02602025 */  or      $a0, $s3, $zero            ## $a0 = 0600D420
/* 04E38 808CFBF8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 04E3C 808CFBFC 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 04E40 808CFC00 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 04E44 808CFC04 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 04E48 808CFC08 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 04E4C 808CFC0C 3C05808D */  lui     $a1, %hi(D_808D1D1C)       ## $a1 = 808D0000
/* 04E50 808CFC10 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 04E54 808CFC14 24A51D1C */  addiu   $a1, $a1, %lo(D_808D1D1C)  ## $a1 = 808D1D1C
/* 04E58 808CFC18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04E5C 808CFC1C 24061008 */  addiu   $a2, $zero, 0x1008         ## $a2 = 00001008
/* 04E60 808CFC20 0C0346A2 */  jal     Matrix_NewMtx              
/* 04E64 808CFC24 AFA20088 */  sw      $v0, 0x0088($sp)           
/* 04E68 808CFC28 8FA30088 */  lw      $v1, 0x0088($sp)           
/* 04E6C 808CFC2C 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 04E70 808CFC30 356B0020 */  ori     $t3, $t3, 0x0020           ## $t3 = DB060020
/* 04E74 808CFC34 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 04E78 808CFC38 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 04E7C 808CFC3C 3C04808D */  lui     $a0, %hi(D_808D1A9C)       ## $a0 = 808D0000
/* 04E80 808CFC40 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 04E84 808CFC44 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 04E88 808CFC48 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 04E8C 808CFC4C AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 04E90 808CFC50 862E002C */  lh      $t6, 0x002C($s1)           ## 000000A4
/* 04E94 808CFC54 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 04E98 808CFC58 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 04E9C 808CFC5C 000EC080 */  sll     $t8, $t6,  2               
/* 04EA0 808CFC60 00982021 */  addu    $a0, $a0, $t8              
/* 04EA4 808CFC64 8C841A9C */  lw      $a0, %lo(D_808D1A9C)($a0)  
/* 04EA8 808CFC68 00047900 */  sll     $t7, $a0,  4               
/* 04EAC 808CFC6C 000F4702 */  srl     $t0, $t7, 28               
/* 04EB0 808CFC70 00085080 */  sll     $t2, $t0,  2               
/* 04EB4 808CFC74 012A4821 */  addu    $t1, $t1, $t2              
/* 04EB8 808CFC78 8D296FA8 */  lw      $t1, 0x6FA8($t1)           ## 80166FA8
/* 04EBC 808CFC7C 0081C824 */  and     $t9, $a0, $at              
/* 04EC0 808CFC80 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 04EC4 808CFC84 03296021 */  addu    $t4, $t9, $t1              
/* 04EC8 808CFC88 01816821 */  addu    $t5, $t4, $at              
/* 04ECC 808CFC8C AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 04ED0 808CFC90 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 04ED4 808CFC94 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 04ED8 808CFC98 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 04EDC 808CFC9C AC570004 */  sw      $s7, 0x0004($v0)           ## 00000004
/* 04EE0 808CFCA0 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L808CFCA4:
/* 04EE4 808CFCA4 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 04EE8 808CFCA8 0014A400 */  sll     $s4, $s4, 16               
/* 04EEC 808CFCAC 0014A403 */  sra     $s4, $s4, 16               
/* 04EF0 808CFCB0 2A8100B4 */  slti    $at, $s4, 0x00B4           
/* 04EF4 808CFCB4 1420FFA0 */  bne     $at, $zero, .L808CFB38     
/* 04EF8 808CFCB8 2631003C */  addiu   $s1, $s1, 0x003C           ## $s1 = 000000B4
/* 04EFC 808CFCBC 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 04F00 808CFCC0 8FB100C8 */  lw      $s1, 0x00C8($sp)           
/* 04F04 808CFCC4 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
.L808CFCC8:
/* 04F08 808CFCC8 922E0024 */  lbu     $t6, 0x0024($s1)           ## 000000D8
/* 04F0C 808CFCCC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 04F10 808CFCD0 3C170601 */  lui     $s7, 0x0601                ## $s7 = 06010000
/* 04F14 808CFCD4 15C1005A */  bne     $t6, $at, .L808CFE40       
/* 04F18 808CFCD8 26F7B3C8 */  addiu   $s7, $s7, 0xB3C8           ## $s7 = 0600B3C8
/* 04F1C 808CFCDC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 04F20 808CFCE0 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 04F24 808CFCE4 16A00015 */  bne     $s5, $zero, .L808CFD3C     
/* 04F28 808CFCE8 03C19821 */  addu    $s3, $s8, $at              
/* 04F2C 808CFCEC 3C120601 */  lui     $s2, 0x0601                ## $s2 = 06010000
/* 04F30 808CFCF0 2652B3A8 */  addiu   $s2, $s2, 0xB3A8           ## $s2 = 0600B3A8
/* 04F34 808CFCF4 8E0402D0 */  lw      $a0, 0x02D0($s0)           ## 000002D0
/* 04F38 808CFCF8 0C024DDD */  jal     Gfx_CallSetupDL              
/* 04F3C 808CFCFC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 04F40 808CFD00 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
/* 04F44 808CFD04 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 04F48 808CFD08 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 04F4C 808CFD0C AC520004 */  sw      $s2, 0x0004($v0)           ## 00000004
/* 04F50 808CFD10 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
/* 04F54 808CFD14 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 04F58 808CFD18 3C0AFF0A */  lui     $t2, 0xFF0A                ## $t2 = FF0A0000
/* 04F5C 808CFD1C 354A00FF */  ori     $t2, $t2, 0x00FF           ## $t2 = FF0A00FF
/* 04F60 808CFD20 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 04F64 808CFD24 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 04F68 808CFD28 3C08FB00 */  lui     $t0, 0xFB00                ## $t0 = FB000000
/* 04F6C 808CFD2C 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 04F70 808CFD30 32B500FF */  andi    $s5, $s5, 0x00FF           ## $s5 = 00000001
/* 04F74 808CFD34 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 04F78 808CFD38 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
.L808CFD3C:
/* 04F7C 808CFD3C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 04F80 808CFD40 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 04F84 808CFD44 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 04F88 808CFD48 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 04F8C 808CFD4C AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 04F90 808CFD50 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 04F94 808CFD54 862C002A */  lh      $t4, 0x002A($s1)           ## 000000DE
/* 04F98 808CFD58 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 04F9C 808CFD5C 318D00FF */  andi    $t5, $t4, 0x00FF           ## $t5 = 00000000
/* 04FA0 808CFD60 01A15825 */  or      $t3, $t5, $at              ## $t3 = FFFF0000
/* 04FA4 808CFD64 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 04FA8 808CFD68 8E260008 */  lw      $a2, 0x0008($s1)           ## 000000BC
/* 04FAC 808CFD6C C62E0004 */  lwc1    $f14, 0x0004($s1)          ## 000000B8
/* 04FB0 808CFD70 0C034261 */  jal     Matrix_Translate              
/* 04FB4 808CFD74 C62C0000 */  lwc1    $f12, 0x0000($s1)          ## 000000B4
/* 04FB8 808CFD78 C62C0030 */  lwc1    $f12, 0x0030($s1)          ## 000000E4
/* 04FBC 808CFD7C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 04FC0 808CFD80 44066000 */  mfc1    $a2, $f12                  
/* 04FC4 808CFD84 0C0342A3 */  jal     Matrix_Scale              
/* 04FC8 808CFD88 46006386 */  mov.s   $f14, $f12                 
/* 04FCC 808CFD8C 0C0347F5 */  jal     func_800D1FD4              
/* 04FD0 808CFD90 02602025 */  or      $a0, $s3, $zero            ## $a0 = 0600D420
/* 04FD4 808CFD94 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 04FD8 808CFD98 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 04FDC 808CFD9C 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 04FE0 808CFDA0 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 04FE4 808CFDA4 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 04FE8 808CFDA8 3C05808D */  lui     $a1, %hi(D_808D1D2C)       ## $a1 = 808D0000
/* 04FEC 808CFDAC AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 04FF0 808CFDB0 24A51D2C */  addiu   $a1, $a1, %lo(D_808D1D2C)  ## $a1 = 808D1D2C
/* 04FF4 808CFDB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04FF8 808CFDB8 2406103A */  addiu   $a2, $zero, 0x103A         ## $a2 = 0000103A
/* 04FFC 808CFDBC 0C0346A2 */  jal     Matrix_NewMtx              
/* 05000 808CFDC0 AFA20070 */  sw      $v0, 0x0070($sp)           
/* 05004 808CFDC4 8FA30070 */  lw      $v1, 0x0070($sp)           
/* 05008 808CFDC8 3C08DB06 */  lui     $t0, 0xDB06                ## $t0 = DB060000
/* 0500C 808CFDCC 35080020 */  ori     $t0, $t0, 0x0020           ## $t0 = DB060020
/* 05010 808CFDD0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 05014 808CFDD4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 05018 808CFDD8 3C04808D */  lui     $a0, %hi(D_808D1A9C)       ## $a0 = 808D0000
/* 0501C 808CFDDC 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 05020 808CFDE0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 05024 808CFDE4 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 05028 808CFDE8 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 0502C 808CFDEC 862A002C */  lh      $t2, 0x002C($s1)           ## 000000E0
/* 05030 808CFDF0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 05034 808CFDF4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 05038 808CFDF8 000AC880 */  sll     $t9, $t2,  2               
/* 0503C 808CFDFC 00992021 */  addu    $a0, $a0, $t9              
/* 05040 808CFE00 8C841A9C */  lw      $a0, %lo(D_808D1A9C)($a0)  
/* 05044 808CFE04 00046100 */  sll     $t4, $a0,  4               
/* 05048 808CFE08 000C6F02 */  srl     $t5, $t4, 28               
/* 0504C 808CFE0C 000D5880 */  sll     $t3, $t5,  2               
/* 05050 808CFE10 01CB7021 */  addu    $t6, $t6, $t3              
/* 05054 808CFE14 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 05058 808CFE18 00814824 */  and     $t1, $a0, $at              
/* 0505C 808CFE1C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 05060 808CFE20 012EC021 */  addu    $t8, $t1, $t6              
/* 05064 808CFE24 03017821 */  addu    $t7, $t8, $at              
/* 05068 808CFE28 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 0506C 808CFE2C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 05070 808CFE30 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 05074 808CFE34 AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 05078 808CFE38 AC570004 */  sw      $s7, 0x0004($v0)           ## 00000004
/* 0507C 808CFE3C AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L808CFE40:
/* 05080 808CFE40 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 05084 808CFE44 0014A400 */  sll     $s4, $s4, 16               
/* 05088 808CFE48 0014A403 */  sra     $s4, $s4, 16               
/* 0508C 808CFE4C 2A8100B4 */  slti    $at, $s4, 0x00B4           
/* 05090 808CFE50 1420FF9D */  bne     $at, $zero, .L808CFCC8     
/* 05094 808CFE54 2631003C */  addiu   $s1, $s1, 0x003C           ## $s1 = 000000F0
/* 05098 808CFE58 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 0509C 808CFE5C 8FB100C8 */  lw      $s1, 0x00C8($sp)           
/* 050A0 808CFE60 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 050A4 808CFE64 24170005 */  addiu   $s7, $zero, 0x0005         ## $s7 = 00000005
.L808CFE68:
/* 050A8 808CFE68 922A0024 */  lbu     $t2, 0x0024($s1)           ## 00000114
/* 050AC 808CFE6C 3C130601 */  lui     $s3, 0x0601                ## $s3 = 06010000
/* 050B0 808CFE70 56EA0032 */  bnel    $s7, $t2, .L808CFF3C       
/* 050B4 808CFE74 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 050B8 808CFE78 16A0000C */  bne     $s5, $zero, .L808CFEAC     
/* 050BC 808CFE7C 2673D6E8 */  addiu   $s3, $s3, 0xD6E8           ## $s3 = 0600D6E8
/* 050C0 808CFE80 3C120601 */  lui     $s2, 0x0601                ## $s2 = 06010000
/* 050C4 808CFE84 2652D668 */  addiu   $s2, $s2, 0xD668           ## $s2 = 0600D668
/* 050C8 808CFE88 0C024F61 */  jal     func_80093D84              
/* 050CC 808CFE8C 8FC40000 */  lw      $a0, 0x0000($s8)           ## 00000000
/* 050D0 808CFE90 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 050D4 808CFE94 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 050D8 808CFE98 32B500FF */  andi    $s5, $s5, 0x00FF           ## $s5 = 00000001
/* 050DC 808CFE9C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 050E0 808CFEA0 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 050E4 808CFEA4 AC520004 */  sw      $s2, 0x0004($v0)           ## 00000004
/* 050E8 808CFEA8 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L808CFEAC:
/* 050EC 808CFEAC C62C0000 */  lwc1    $f12, 0x0000($s1)          ## 000000F0
/* 050F0 808CFEB0 C62E0004 */  lwc1    $f14, 0x0004($s1)          ## 000000F4
/* 050F4 808CFEB4 8E260008 */  lw      $a2, 0x0008($s1)           ## 000000F8
/* 050F8 808CFEB8 0C034261 */  jal     Matrix_Translate              
/* 050FC 808CFEBC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 05100 808CFEC0 C62C0038 */  lwc1    $f12, 0x0038($s1)          ## 00000128
/* 05104 808CFEC4 0C034348 */  jal     Matrix_RotateY              
/* 05108 808CFEC8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0510C 808CFECC C62C0034 */  lwc1    $f12, 0x0034($s1)          ## 00000124
/* 05110 808CFED0 0C0342DC */  jal     Matrix_RotateX              
/* 05114 808CFED4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 05118 808CFED8 C62C0030 */  lwc1    $f12, 0x0030($s1)          ## 00000120
/* 0511C 808CFEDC 4406A000 */  mfc1    $a2, $f20                  
/* 05120 808CFEE0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 05124 808CFEE4 0C0342A3 */  jal     Matrix_Scale              
/* 05128 808CFEE8 46006386 */  mov.s   $f14, $f12                 
/* 0512C 808CFEEC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 05130 808CFEF0 3C0DDA38 */  lui     $t5, 0xDA38                ## $t5 = DA380000
/* 05134 808CFEF4 35AD0003 */  ori     $t5, $t5, 0x0003           ## $t5 = DA380003
/* 05138 808CFEF8 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 0513C 808CFEFC AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 05140 808CFF00 3C05808D */  lui     $a1, %hi(D_808D1D3C)       ## $a1 = 808D0000
/* 05144 808CFF04 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 05148 808CFF08 24A51D3C */  addiu   $a1, $a1, %lo(D_808D1D3C)  ## $a1 = 808D1D3C
/* 0514C 808CFF0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05150 808CFF10 24061060 */  addiu   $a2, $zero, 0x1060         ## $a2 = 00001060
/* 05154 808CFF14 0C0346A2 */  jal     Matrix_NewMtx              
/* 05158 808CFF18 AFA20060 */  sw      $v0, 0x0060($sp)           
/* 0515C 808CFF1C 8FA30060 */  lw      $v1, 0x0060($sp)           
/* 05160 808CFF20 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 05164 808CFF24 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 05168 808CFF28 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 0516C 808CFF2C AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 05170 808CFF30 AC530004 */  sw      $s3, 0x0004($v0)           ## 00000004
/* 05174 808CFF34 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
/* 05178 808CFF38 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000002
.L808CFF3C:
/* 0517C 808CFF3C 0014A400 */  sll     $s4, $s4, 16               
/* 05180 808CFF40 0014A403 */  sra     $s4, $s4, 16               
/* 05184 808CFF44 2A8100B4 */  slti    $at, $s4, 0x00B4           
/* 05188 808CFF48 1420FFC7 */  bne     $at, $zero, .L808CFE68     
/* 0518C 808CFF4C 2631003C */  addiu   $s1, $s1, 0x003C           ## $s1 = 0000012C
/* 05190 808CFF50 3C06808D */  lui     $a2, %hi(D_808D1D4C)       ## $a2 = 808D0000
/* 05194 808CFF54 24C61D4C */  addiu   $a2, $a2, %lo(D_808D1D4C)  ## $a2 = 808D1D4C
/* 05198 808CFF58 27A400B4 */  addiu   $a0, $sp, 0x00B4           ## $a0 = FFFFFFDC
/* 0519C 808CFF5C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 051A0 808CFF60 0C031AD5 */  jal     func_800C6B54              
/* 051A4 808CFF64 24071066 */  addiu   $a3, $zero, 0x1066         ## $a3 = 00001066
/* 051A8 808CFF68 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 051AC 808CFF6C D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 051B0 808CFF70 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 051B4 808CFF74 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 051B8 808CFF78 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 051BC 808CFF7C 8FB3002C */  lw      $s3, 0x002C($sp)           
/* 051C0 808CFF80 8FB40030 */  lw      $s4, 0x0030($sp)           
/* 051C4 808CFF84 8FB50034 */  lw      $s5, 0x0034($sp)           
/* 051C8 808CFF88 8FB60038 */  lw      $s6, 0x0038($sp)           
/* 051CC 808CFF8C 8FB7003C */  lw      $s7, 0x003C($sp)           
/* 051D0 808CFF90 8FBE0040 */  lw      $s8, 0x0040($sp)           
/* 051D4 808CFF94 03E00008 */  jr      $ra                        
/* 051D8 808CFF98 27BD00D8 */  addiu   $sp, $sp, 0x00D8           ## $sp = 00000000


