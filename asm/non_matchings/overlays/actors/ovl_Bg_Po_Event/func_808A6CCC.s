glabel func_808A6CCC
/* 00ABC 808A6CCC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00AC0 808A6CD0 3C03808B */  lui     $v1, %hi(D_808A80A0)       ## $v1 = 808B0000
/* 00AC4 808A6CD4 246380A0 */  addiu   $v1, $v1, %lo(D_808A80A0)  ## $v1 = 808A80A0
/* 00AC8 808A6CD8 90620000 */  lbu     $v0, 0x0000($v1)           ## 808A80A0
/* 00ACC 808A6CDC AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00AD0 808A6CE0 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00AD4 808A6CE4 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00AD8 808A6CE8 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00ADC 808A6CEC 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00AE0 808A6CF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AE4 808A6CF4 1441002C */  bne     $v0, $at, .L808A6DA8       
/* 00AE8 808A6CF8 AFAF003C */  sw      $t7, 0x003C($sp)           
/* 00AEC 808A6CFC 90990168 */  lbu     $t9, 0x0168($a0)           ## 00000168
/* 00AF0 808A6D00 3C18808A */  lui     $t8, %hi(func_808A7238)    ## $t8 = 808A0000
/* 00AF4 808A6D04 27187238 */  addiu   $t8, $t8, %lo(func_808A7238) ## $t8 = 808A7238
/* 00AF8 808A6D08 17200097 */  bne     $t9, $zero, .L808A6F68     
/* 00AFC 808A6D0C AC980164 */  sw      $t8, 0x0164($a0)           ## 00000164
/* 00B00 808A6D10 90880169 */  lbu     $t0, 0x0169($a0)           ## 00000169
/* 00B04 808A6D14 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00B08 808A6D18 55000094 */  bnel    $t0, $zero, .L808A6F6C     
/* 00B0C 808A6D1C 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00B10 808A6D20 44810000 */  mtc1    $at, $f0                   ## $f0 = 30.00
/* 00B14 808A6D24 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00B18 808A6D28 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00B1C 808A6D2C 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00B20 808A6D30 46004281 */  sub.s   $f10, $f8, $f0             
/* 00B24 808A6D34 24060091 */  addiu   $a2, $zero, 0x0091         ## $a2 = 00000091
/* 00B28 808A6D38 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 00B2C 808A6D3C 46002180 */  add.s   $f6, $f4, $f0              
/* 00B30 808A6D40 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00B34 808A6D44 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00B38 808A6D48 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00B3C 808A6D4C 44073000 */  mfc1    $a3, $f6                   
/* 00B40 808A6D50 46008480 */  add.s   $f18, $f16, $f0            
/* 00B44 808A6D54 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 00B48 808A6D58 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 00B4C 808A6D5C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00B50 808A6D60 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 00B54 808A6D64 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 00B58 808A6D68 256C0300 */  addiu   $t4, $t3, 0x0300           ## $t4 = 00000300
/* 00B5C 808A6D6C 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00B60 808A6D70 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 00B64 808A6D74 10400006 */  beq     $v0, $zero, .L808A6D90     
/* 00B68 808A6D78 00403825 */  or      $a3, $v0, $zero            ## $a3 = 00000000
/* 00B6C 808A6D7C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00B70 808A6D80 24050C62 */  addiu   $a1, $zero, 0x0C62         ## $a1 = 00000C62
/* 00B74 808A6D84 2406001E */  addiu   $a2, $zero, 0x001E         ## $a2 = 0000001E
/* 00B78 808A6D88 0C02003E */  jal     func_800800F8              
/* 00B7C 808A6D8C AFA00010 */  sw      $zero, 0x0010($sp)         
.L808A6D90:
/* 00B80 808A6D90 0C01E221 */  jal     func_80078884              
/* 00B84 808A6D94 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 00B88 808A6D98 240D000A */  addiu   $t5, $zero, 0x000A         ## $t5 = 0000000A
/* 00B8C 808A6D9C 3C018016 */  lui     $at, %hi(gSaveContext+0x13ce)
/* 00B90 808A6DA0 10000071 */  beq     $zero, $zero, .L808A6F68   
/* 00B94 808A6DA4 A42DFA2E */  sh      $t5, %lo(gSaveContext+0x13ce)($at)
.L808A6DA8:
/* 00B98 808A6DA8 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x13d0)
/* 00B9C 808A6DAC 85CEFA30 */  lh      $t6, %lo(gSaveContext+0x13d0)($t6)
/* 00BA0 808A6DB0 3C0F808A */  lui     $t7, %hi(D_808A7D58)       ## $t7 = 808A0000
/* 00BA4 808A6DB4 55C00010 */  bnel    $t6, $zero, .L808A6DF8     
/* 00BA8 808A6DB8 24010040 */  addiu   $at, $zero, 0x0040         ## $at = 00000040
/* 00BAC 808A6DBC 91EF7D58 */  lbu     $t7, %lo(D_808A7D58)($t7)  
/* 00BB0 808A6DC0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00BB4 808A6DC4 8FB8003C */  lw      $t8, 0x003C($sp)           
/* 00BB8 808A6DC8 55E1000B */  bnel    $t7, $at, .L808A6DF8       
/* 00BBC 808A6DCC 24010040 */  addiu   $at, $zero, 0x0040         ## $at = 00000040
/* 00BC0 808A6DD0 8F190680 */  lw      $t9, 0x0680($t8)           ## 00000680
/* 00BC4 808A6DD4 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00BC8 808A6DD8 24090010 */  addiu   $t1, $zero, 0x0010         ## $t1 = 00000010
/* 00BCC 808A6DDC 03214024 */  and     $t0, $t9, $at              
/* 00BD0 808A6DE0 AF080680 */  sw      $t0, 0x0680($t8)           ## 00000680
/* 00BD4 808A6DE4 A0690000 */  sb      $t1, 0x0000($v1)           ## 00000000
/* 00BD8 808A6DE8 3C01808A */  lui     $at, %hi(D_808A7D58)       ## $at = 808A0000
/* 00BDC 808A6DEC A0207D58 */  sb      $zero, %lo(D_808A7D58)($at) 
/* 00BE0 808A6DF0 90620000 */  lbu     $v0, 0x0000($v1)           ## 00000000
/* 00BE4 808A6DF4 24010040 */  addiu   $at, $zero, 0x0040         ## $at = 00000040
.L808A6DF8:
/* 00BE8 808A6DF8 10410008 */  beq     $v0, $at, .L808A6E1C       
/* 00BEC 808A6DFC 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 00BF0 808A6E00 5441001A */  bnel    $v0, $at, .L808A6E6C       
/* 00BF4 808A6E04 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00BF8 808A6E08 0C023A62 */  jal     func_8008E988              
/* 00BFC 808A6E0C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00C00 808A6E10 3C03808B */  lui     $v1, %hi(D_808A80A0)       ## $v1 = 808B0000
/* 00C04 808A6E14 14400014 */  bne     $v0, $zero, .L808A6E68     
/* 00C08 808A6E18 246380A0 */  addiu   $v1, $v1, %lo(D_808A80A0)  ## $v1 = 808A80A0
.L808A6E1C:
/* 00C0C 808A6E1C 860A00B8 */  lh      $t2, 0x00B8($s0)           ## 000000B8
/* 00C10 808A6E20 3C0B808A */  lui     $t3, %hi(func_808A7138)    ## $t3 = 808A0000
/* 00C14 808A6E24 256B7138 */  addiu   $t3, $t3, %lo(func_808A7138) ## $t3 = 808A7138
/* 00C18 808A6E28 AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
/* 00C1C 808A6E2C A60A0034 */  sh      $t2, 0x0034($s0)           ## 00000034
/* 00C20 808A6E30 906C0000 */  lbu     $t4, 0x0000($v1)           ## 808A80A0
/* 00C24 808A6E34 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 00C28 808A6E38 240D0040 */  addiu   $t5, $zero, 0x0040         ## $t5 = 00000040
/* 00C2C 808A6E3C 1581004A */  bne     $t4, $at, .L808A6F68       
/* 00C30 808A6E40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C34 808A6E44 A06D0000 */  sb      $t5, 0x0000($v1)           ## 808A80A0
/* 00C38 808A6E48 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00C3C 808A6E4C 240528A4 */  addiu   $a1, $zero, 0x28A4         ## $a1 = 000028A4
/* 00C40 808A6E50 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00C44 808A6E54 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00C48 808A6E58 0C00B7D5 */  jal     func_8002DF54              
/* 00C4C 808A6E5C 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00C50 808A6E60 10000042 */  beq     $zero, $zero, .L808A6F6C   
/* 00C54 808A6E64 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L808A6E68:
/* 00C58 808A6E68 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L808A6E6C:
/* 00C5C 808A6E6C C6040150 */  lwc1    $f4, 0x0150($s0)           ## 00000150
/* 00C60 808A6E70 46040032 */  c.eq.s  $f0, $f4                   
/* 00C64 808A6E74 00000000 */  nop
/* 00C68 808A6E78 4503003B */  bc1tl   .L808A6F68                 
/* 00C6C 808A6E7C A200016A */  sb      $zero, 0x016A($s0)         ## 0000016A
/* 00C70 808A6E80 820E016A */  lb      $t6, 0x016A($s0)           ## 0000016A
/* 00C74 808A6E84 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00C78 808A6E88 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00C7C 808A6E8C 15C0002B */  bne     $t6, $zero, .L808A6F3C     
/* 00C80 808A6E90 8FB9003C */  lw      $t9, 0x003C($sp)           
/* 00C84 808A6E94 240FFFEC */  addiu   $t7, $zero, 0xFFEC         ## $t7 = FFFFFFEC
/* 00C88 808A6E98 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00C8C 808A6E9C 2406001E */  addiu   $a2, $zero, 0x001E         ## $a2 = 0000001E
/* 00C90 808A6EA0 0C010D76 */  jal     func_800435D8              
/* 00C94 808A6EA4 24070032 */  addiu   $a3, $zero, 0x0032         ## $a3 = 00000032
/* 00C98 808A6EA8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00C9C 808A6EAC 1040001D */  beq     $v0, $zero, .L808A6F24     
/* 00CA0 808A6EB0 8FAD003C */  lw      $t5, 0x003C($sp)           
/* 00CA4 808A6EB4 3C19808A */  lui     $t9, %hi(D_808A7D58)       ## $t9 = 808A0000
/* 00CA8 808A6EB8 93397D58 */  lbu     $t9, %lo(D_808A7D58)($t9)  
/* 00CAC 808A6EBC 3C01808A */  lui     $at, %hi(D_808A7D58)       ## $at = 808A0000
/* 00CB0 808A6EC0 3C0C808A */  lui     $t4, %hi(func_808A6F7C)    ## $t4 = 808A0000
/* 00CB4 808A6EC4 2728FFFF */  addiu   $t0, $t9, 0xFFFF           ## $t0 = 8089FFFF
/* 00CB8 808A6EC8 A0287D58 */  sb      $t0, %lo(D_808A7D58)($at)  
/* 00CBC 808A6ECC C6060150 */  lwc1    $f6, 0x0150($s0)           ## 00000150
/* 00CC0 808A6ED0 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00CC4 808A6ED4 258C6F7C */  addiu   $t4, $t4, %lo(func_808A6F7C) ## $t4 = 808A6F7C
/* 00CC8 808A6ED8 4606003E */  c.le.s  $f0, $f6                   
/* 00CCC 808A6EDC 00000000 */  nop
/* 00CD0 808A6EE0 45020009 */  bc1fl   .L808A6F08                 
/* 00CD4 808A6EE4 44818000 */  mtc1    $at, $f16                  ## $f16 = -1.00
/* 00CD8 808A6EE8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00CDC 808A6EEC 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 00CE0 808A6EF0 00000000 */  nop
/* 00CE4 808A6EF4 4600428D */  trunc.w.s $f10, $f8                  
/* 00CE8 808A6EF8 44095000 */  mfc1    $t1, $f10                  
/* 00CEC 808A6EFC 10000007 */  beq     $zero, $zero, .L808A6F1C   
/* 00CF0 808A6F00 A209016A */  sb      $t1, 0x016A($s0)           ## 0000016A
/* 00CF4 808A6F04 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
.L808A6F08:
/* 00CF8 808A6F08 00000000 */  nop
/* 00CFC 808A6F0C 4600848D */  trunc.w.s $f18, $f16                 
/* 00D00 808A6F10 440B9000 */  mfc1    $t3, $f18                  
/* 00D04 808A6F14 00000000 */  nop
/* 00D08 808A6F18 A20B016A */  sb      $t3, 0x016A($s0)           ## 0000016A
.L808A6F1C:
/* 00D0C 808A6F1C 10000012 */  beq     $zero, $zero, .L808A6F68   
/* 00D10 808A6F20 AE0C0164 */  sw      $t4, 0x0164($s0)           ## 00000164
.L808A6F24:
/* 00D14 808A6F24 8DAE0680 */  lw      $t6, 0x0680($t5)           ## 00000680
/* 00D18 808A6F28 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00D1C 808A6F2C 01C17824 */  and     $t7, $t6, $at              
/* 00D20 808A6F30 ADAF0680 */  sw      $t7, 0x0680($t5)           ## 00000680
/* 00D24 808A6F34 1000000C */  beq     $zero, $zero, .L808A6F68   
/* 00D28 808A6F38 E6000150 */  swc1    $f0, 0x0150($s0)           ## 00000150
.L808A6F3C:
/* 00D2C 808A6F3C 8F280680 */  lw      $t0, 0x0680($t9)           ## 808A0680
/* 00D30 808A6F40 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00D34 808A6F44 0101C024 */  and     $t8, $t0, $at              
/* 00D38 808A6F48 AF380680 */  sw      $t8, 0x0680($t9)           ## 808A0680
/* 00D3C 808A6F4C 8202016A */  lb      $v0, 0x016A($s0)           ## 0000016A
/* 00D40 808A6F50 E6000150 */  swc1    $f0, 0x0150($s0)           ## 00000150
/* 00D44 808A6F54 10400004 */  beq     $v0, $zero, .L808A6F68     
/* 00D48 808A6F58 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 00D4C 808A6F5C 10000002 */  beq     $zero, $zero, .L808A6F68   
/* 00D50 808A6F60 A209016A */  sb      $t1, 0x016A($s0)           ## 0000016A
/* 00D54 808A6F64 A200016A */  sb      $zero, 0x016A($s0)         ## 0000016A
.L808A6F68:
/* 00D58 808A6F68 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L808A6F6C:
/* 00D5C 808A6F6C 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00D60 808A6F70 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00D64 808A6F74 03E00008 */  jr      $ra                        
/* 00D68 808A6F78 00000000 */  nop
