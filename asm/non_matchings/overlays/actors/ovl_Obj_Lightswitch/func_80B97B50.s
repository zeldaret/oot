.rdata
glabel D_80B98080
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B98098
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B980B0
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B980C8
    .asciz "../z_obj_lightswitch.c"
    .balign 4

glabel D_80B980E0
    .asciz "../z_obj_lightswitch.c"
    .balign 4

.text
glabel func_80B97B50
/* 00FB0 80B97B50 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00FB4 80B97B54 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00FB8 80B97B58 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00FBC 80B97B5C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00FC0 80B97B60 AFA5007C */  sw      $a1, 0x007C($sp)           
/* 00FC4 80B97B64 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00FC8 80B97B68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FCC 80B97B6C 3C0680BA */  lui     $a2, %hi(D_80B98080)       ## $a2 = 80BA0000
/* 00FD0 80B97B70 24C68080 */  addiu   $a2, $a2, %lo(D_80B98080)  ## $a2 = 80B98080
/* 00FD4 80B97B74 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFD4
/* 00FD8 80B97B78 2407037A */  addiu   $a3, $zero, 0x037A         ## $a3 = 0000037A
/* 00FDC 80B97B7C 0C031AB1 */  jal     Graph_OpenDisps              
/* 00FE0 80B97B80 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00FE4 80B97B84 8FAF007C */  lw      $t7, 0x007C($sp)           
/* 00FE8 80B97B88 0C024F61 */  jal     func_80093D84              
/* 00FEC 80B97B8C 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 00FF0 80B97B90 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00FF4 80B97B94 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 00FF8 80B97B98 3C0580BA */  lui     $a1, %hi(D_80B98098)       ## $a1 = 80BA0000
/* 00FFC 80B97B9C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01000 80B97BA0 AE3802D0 */  sw      $t8, 0x02D0($s1)           ## 000002D0
/* 01004 80B97BA4 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01008 80B97BA8 860D01B6 */  lh      $t5, 0x01B6($s0)           ## 000001B6
/* 0100C 80B97BAC 860801BA */  lh      $t0, 0x01BA($s0)           ## 000001BA
/* 01010 80B97BB0 860901B8 */  lh      $t1, 0x01B8($s0)           ## 000001B8
/* 01014 80B97BB4 000DC183 */  sra     $t8, $t5,  6               
/* 01018 80B97BB8 00085183 */  sra     $t2, $t0,  6               
/* 0101C 80B97BBC 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000000
/* 01020 80B97BC0 0018CE00 */  sll     $t9, $t8, 24               
/* 01024 80B97BC4 861801BC */  lh      $t8, 0x01BC($s0)           ## 000001BC
/* 01028 80B97BC8 000B6200 */  sll     $t4, $t3,  8               
/* 0102C 80B97BCC 00095983 */  sra     $t3, $t1,  6               
/* 01030 80B97BD0 316D00FF */  andi    $t5, $t3, 0x00FF           ## $t5 = 00000000
/* 01034 80B97BD4 01994025 */  or      $t0, $t4, $t9              ## $t0 = FB000000
/* 01038 80B97BD8 000D7400 */  sll     $t6, $t5, 16               
/* 0103C 80B97BDC 0018C983 */  sra     $t9, $t8,  6               
/* 01040 80B97BE0 332900FF */  andi    $t1, $t9, 0x00FF           ## $t1 = 00000000
/* 01044 80B97BE4 010E7825 */  or      $t7, $t0, $t6              ## $t7 = FB000000
/* 01048 80B97BE8 01E95025 */  or      $t2, $t7, $t1              ## $t2 = FB000000
/* 0104C 80B97BEC AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 01050 80B97BF0 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 01054 80B97BF4 3C088011 */  lui     $t0, 0x8011                ## $t0 = 80110000
/* 01058 80B97BF8 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 0105C 80B97BFC 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 01060 80B97C00 AE2B02D0 */  sw      $t3, 0x02D0($s1)           ## 000002D0
/* 01064 80B97C04 35AD0024 */  ori     $t5, $t5, 0x0024           ## $t5 = DB060024
/* 01068 80B97C08 25086280 */  addiu   $t0, $t0, 0x6280           ## $t0 = 80116280
/* 0106C 80B97C0C AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 01070 80B97C10 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01074 80B97C14 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 01078 80B97C18 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 0107C 80B97C1C 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 01080 80B97C20 E7A40068 */  swc1    $f4, 0x0068($sp)           
/* 01084 80B97C24 C6080054 */  lwc1    $f8, 0x0054($s0)           ## 00000054
/* 01088 80B97C28 C60600BC */  lwc1    $f6, 0x00BC($s0)           ## 000000BC
/* 0108C 80B97C2C C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 01090 80B97C30 24A58098 */  addiu   $a1, $a1, %lo(D_80B98098)  ## $a1 = 80B98098
/* 01094 80B97C34 46083282 */  mul.s   $f10, $f6, $f8             
/* 01098 80B97C38 24060390 */  addiu   $a2, $zero, 0x0390         ## $a2 = 00000390
/* 0109C 80B97C3C 460A8480 */  add.s   $f18, $f16, $f10           
/* 010A0 80B97C40 E7B2006C */  swc1    $f18, 0x006C($sp)          
/* 010A4 80B97C44 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 010A8 80B97C48 E7A40070 */  swc1    $f4, 0x0070($sp)           
/* 010AC 80B97C4C 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 010B0 80B97C50 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 010B4 80B97C54 AE2E02D0 */  sw      $t6, 0x02D0($s1)           ## 000002D0
/* 010B8 80B97C58 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 010BC 80B97C5C 8FAC007C */  lw      $t4, 0x007C($sp)           
/* 010C0 80B97C60 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 010C4 80B97C64 0C0346A2 */  jal     Matrix_NewMtx              
/* 010C8 80B97C68 AFA20040 */  sw      $v0, 0x0040($sp)           
/* 010CC 80B97C6C 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 010D0 80B97C70 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 010D4 80B97C74 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 010D8 80B97C78 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 010DC 80B97C7C 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 010E0 80B97C80 3C0480B9 */  lui     $a0, %hi(D_80B97F5C)       ## $a0 = 80B90000
/* 010E4 80B97C84 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 010E8 80B97C88 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 010EC 80B97C8C AE3902D0 */  sw      $t9, 0x02D0($s1)           ## 000002D0
/* 010F0 80B97C90 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 010F4 80B97C94 860901B4 */  lh      $t1, 0x01B4($s0)           ## 000001B4
/* 010F8 80B97C98 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 010FC 80B97C9C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01100 80B97CA0 00095080 */  sll     $t2, $t1,  2               
/* 01104 80B97CA4 008A2021 */  addu    $a0, $a0, $t2              
/* 01108 80B97CA8 8C847F5C */  lw      $a0, %lo(D_80B97F5C)($a0)  
/* 0110C 80B97CAC 3C0A0600 */  lui     $t2, 0x0600                ## $t2 = 06000000
/* 01110 80B97CB0 254A0260 */  addiu   $t2, $t2, 0x0260           ## $t2 = 06000260
/* 01114 80B97CB4 00046900 */  sll     $t5, $a0,  4               
/* 01118 80B97CB8 000D4702 */  srl     $t0, $t5, 28               
/* 0111C 80B97CBC 00087080 */  sll     $t6, $t0,  2               
/* 01120 80B97CC0 030EC021 */  addu    $t8, $t8, $t6              
/* 01124 80B97CC4 8F186FA8 */  lw      $t8, 0x6FA8($t8)           ## 80166FA8
/* 01128 80B97CC8 00815824 */  and     $t3, $a0, $at              
/* 0112C 80B97CCC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01130 80B97CD0 01786021 */  addu    $t4, $t3, $t8              
/* 01134 80B97CD4 0181C821 */  addu    $t9, $t4, $at              
/* 01138 80B97CD8 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 0113C 80B97CDC 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 01140 80B97CE0 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 01144 80B97CE4 27A70060 */  addiu   $a3, $sp, 0x0060           ## $a3 = FFFFFFE8
/* 01148 80B97CE8 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0114C 80B97CEC AE2F02D0 */  sw      $t7, 0x02D0($s1)           ## 000002D0
/* 01150 80B97CF0 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 01154 80B97CF4 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 01158 80B97CF8 860D00B4 */  lh      $t5, 0x00B4($s0)           ## 000000B4
/* 0115C 80B97CFC 8FA60070 */  lw      $a2, 0x0070($sp)           
/* 01160 80B97D00 C7AE006C */  lwc1    $f14, 0x006C($sp)          
/* 01164 80B97D04 A7AD0060 */  sh      $t5, 0x0060($sp)           
/* 01168 80B97D08 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 0116C 80B97D0C C7AC0068 */  lwc1    $f12, 0x0068($sp)          
/* 01170 80B97D10 A7A80062 */  sh      $t0, 0x0062($sp)           
/* 01174 80B97D14 860B01BE */  lh      $t3, 0x01BE($s0)           ## 000001BE
/* 01178 80B97D18 860E00B8 */  lh      $t6, 0x00B8($s0)           ## 000000B8
/* 0117C 80B97D1C 01CBC021 */  addu    $t8, $t6, $t3              
/* 01180 80B97D20 0C0345A5 */  jal     func_800D1694              
/* 01184 80B97D24 A7B80064 */  sh      $t8, 0x0064($sp)           
/* 01188 80B97D28 C60C0050 */  lwc1    $f12, 0x0050($s0)          ## 00000050
/* 0118C 80B97D2C C60E0054 */  lwc1    $f14, 0x0054($s0)          ## 00000054
/* 01190 80B97D30 8E060058 */  lw      $a2, 0x0058($s0)           ## 00000058
/* 01194 80B97D34 0C0342A3 */  jal     Matrix_Scale              
/* 01198 80B97D38 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0119C 80B97D3C 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 011A0 80B97D40 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 011A4 80B97D44 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 011A8 80B97D48 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 011AC 80B97D4C AE2C02D0 */  sw      $t4, 0x02D0($s1)           ## 000002D0
/* 011B0 80B97D50 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 011B4 80B97D54 8FAF007C */  lw      $t7, 0x007C($sp)           
/* 011B8 80B97D58 3C0580BA */  lui     $a1, %hi(D_80B980B0)       ## $a1 = 80BA0000
/* 011BC 80B97D5C 24A580B0 */  addiu   $a1, $a1, %lo(D_80B980B0)  ## $a1 = 80B980B0
/* 011C0 80B97D60 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 011C4 80B97D64 240603A2 */  addiu   $a2, $zero, 0x03A2         ## $a2 = 000003A2
/* 011C8 80B97D68 0C0346A2 */  jal     Matrix_NewMtx              
/* 011CC 80B97D6C AFA20034 */  sw      $v0, 0x0034($sp)           
/* 011D0 80B97D70 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 011D4 80B97D74 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 011D8 80B97D78 25AD0398 */  addiu   $t5, $t5, 0x0398           ## $t5 = 06000398
/* 011DC 80B97D7C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 011E0 80B97D80 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 011E4 80B97D84 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 011E8 80B97D88 27A70060 */  addiu   $a3, $sp, 0x0060           ## $a3 = FFFFFFE8
/* 011EC 80B97D8C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 011F0 80B97D90 AE2902D0 */  sw      $t1, 0x02D0($s1)           ## 000002D0
/* 011F4 80B97D94 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 011F8 80B97D98 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 011FC 80B97D9C 860E01BE */  lh      $t6, 0x01BE($s0)           ## 000001BE
/* 01200 80B97DA0 860800B8 */  lh      $t0, 0x00B8($s0)           ## 000000B8
/* 01204 80B97DA4 8FA60070 */  lw      $a2, 0x0070($sp)           
/* 01208 80B97DA8 C7AE006C */  lwc1    $f14, 0x006C($sp)          
/* 0120C 80B97DAC 010E5823 */  subu    $t3, $t0, $t6              
/* 01210 80B97DB0 A7AB0064 */  sh      $t3, 0x0064($sp)           
/* 01214 80B97DB4 0C0345A5 */  jal     func_800D1694              
/* 01218 80B97DB8 C7AC0068 */  lwc1    $f12, 0x0068($sp)          
/* 0121C 80B97DBC C60C0050 */  lwc1    $f12, 0x0050($s0)          ## 00000050
/* 01220 80B97DC0 C60E0054 */  lwc1    $f14, 0x0054($s0)          ## 00000054
/* 01224 80B97DC4 8E060058 */  lw      $a2, 0x0058($s0)           ## 00000058
/* 01228 80B97DC8 0C0342A3 */  jal     Matrix_Scale              
/* 0122C 80B97DCC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01230 80B97DD0 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 01234 80B97DD4 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 01238 80B97DD8 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 0123C 80B97DDC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01240 80B97DE0 AE3802D0 */  sw      $t8, 0x02D0($s1)           ## 000002D0
/* 01244 80B97DE4 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 01248 80B97DE8 8FB9007C */  lw      $t9, 0x007C($sp)           
/* 0124C 80B97DEC 3C0580BA */  lui     $a1, %hi(D_80B980C8)       ## $a1 = 80BA0000
/* 01250 80B97DF0 24A580C8 */  addiu   $a1, $a1, %lo(D_80B980C8)  ## $a1 = 80B980C8
/* 01254 80B97DF4 240603B0 */  addiu   $a2, $zero, 0x03B0         ## $a2 = 000003B0
/* 01258 80B97DF8 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 0125C 80B97DFC 0C0346A2 */  jal     Matrix_NewMtx              
/* 01260 80B97E00 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 01264 80B97E04 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 01268 80B97E08 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 0126C 80B97E0C 3C0A0600 */  lui     $t2, 0x0600                ## $t2 = 06000000
/* 01270 80B97E10 254A0408 */  addiu   $t2, $t2, 0x0408           ## $t2 = 06000408
/* 01274 80B97E14 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01278 80B97E18 AE2F02D0 */  sw      $t7, 0x02D0($s1)           ## 000002D0
/* 0127C 80B97E1C 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 01280 80B97E20 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 01284 80B97E24 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 01288 80B97E28 8FAD007C */  lw      $t5, 0x007C($sp)           
/* 0128C 80B97E2C 3C0680BA */  lui     $a2, %hi(D_80B980E0)       ## $a2 = 80BA0000
/* 01290 80B97E30 24C680E0 */  addiu   $a2, $a2, %lo(D_80B980E0)  ## $a2 = 80B980E0
/* 01294 80B97E34 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFD4
/* 01298 80B97E38 240703B5 */  addiu   $a3, $zero, 0x03B5         ## $a3 = 000003B5
/* 0129C 80B97E3C 0C031AD5 */  jal     Graph_CloseDisps              
/* 012A0 80B97E40 8DA50000 */  lw      $a1, 0x0000($t5)           ## 00000000
/* 012A4 80B97E44 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 012A8 80B97E48 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 012AC 80B97E4C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 012B0 80B97E50 03E00008 */  jr      $ra                        
/* 012B4 80B97E54 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
