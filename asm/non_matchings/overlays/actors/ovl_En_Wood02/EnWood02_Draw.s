glabel EnWood02_Draw
/* 00CA4 80B3BC14 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00CA8 80B3BC18 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00CAC 80B3BC1C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00CB0 80B3BC20 AFA40060 */  sw      $a0, 0x0060($sp)           
/* 00CB4 80B3BC24 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 00CB8 80B3BC28 8CB00000 */  lw      $s0, 0x0000($a1)           ## 00000000
/* 00CBC 80B3BC2C 3C0680B4 */  lui     $a2, %hi(D_80B3BFA0)       ## $a2 = 80B40000
/* 00CC0 80B3BC30 24C6BFA0 */  addiu   $a2, $a2, %lo(D_80B3BFA0)  ## $a2 = 80B3BFA0
/* 00CC4 80B3BC34 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFDC
/* 00CC8 80B3BC38 24070307 */  addiu   $a3, $zero, 0x0307         ## $a3 = 00000307
/* 00CCC 80B3BC3C 0C031AB1 */  jal     Graph_OpenDisps              
/* 00CD0 80B3BC40 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00CD4 80B3BC44 8FAF0060 */  lw      $t7, 0x0060($sp)           
/* 00CD8 80B3BC48 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00CDC 80B3BC4C 24060032 */  addiu   $a2, $zero, 0x0032         ## $a2 = 00000032
/* 00CE0 80B3BC50 85E2001C */  lh      $v0, 0x001C($t7)           ## 0000001C
/* 00CE4 80B3BC54 240700AA */  addiu   $a3, $zero, 0x00AA         ## $a3 = 000000AA
/* 00CE8 80B3BC58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CEC 80B3BC5C 10410007 */  beq     $v0, $at, .L80B3BC7C       
/* 00CF0 80B3BC60 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 00CF4 80B3BC64 10410005 */  beq     $v0, $at, .L80B3BC7C       
/* 00CF8 80B3BC68 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00CFC 80B3BC6C 10410003 */  beq     $v0, $at, .L80B3BC7C       
/* 00D00 80B3BC70 24010017 */  addiu   $at, $zero, 0x0017         ## $at = 00000017
/* 00D04 80B3BC74 54410004 */  bnel    $v0, $at, .L80B3BC88       
/* 00D08 80B3BC78 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
.L80B3BC7C:
/* 00D0C 80B3BC7C 1000000E */  beq     $zero, $zero, .L80B3BCB8   
/* 00D10 80B3BC80 24080046 */  addiu   $t0, $zero, 0x0046         ## $t0 = 00000046
/* 00D14 80B3BC84 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
.L80B3BC88:
/* 00D18 80B3BC88 10410006 */  beq     $v0, $at, .L80B3BCA4       
/* 00D1C 80B3BC8C 240600B4 */  addiu   $a2, $zero, 0x00B4         ## $a2 = 000000B4
/* 00D20 80B3BC90 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00D24 80B3BC94 10410003 */  beq     $v0, $at, .L80B3BCA4       
/* 00D28 80B3BC98 24010018 */  addiu   $at, $zero, 0x0018         ## $at = 00000018
/* 00D2C 80B3BC9C 14410004 */  bne     $v0, $at, .L80B3BCB0       
/* 00D30 80B3BCA0 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
.L80B3BCA4:
/* 00D34 80B3BCA4 2407009B */  addiu   $a3, $zero, 0x009B         ## $a3 = 0000009B
/* 00D38 80B3BCA8 10000003 */  beq     $zero, $zero, .L80B3BCB8   
/* 00D3C 80B3BCAC 00004025 */  or      $t0, $zero, $zero          ## $t0 = 00000000
.L80B3BCB0:
/* 00D40 80B3BCB0 240700FF */  addiu   $a3, $zero, 0x00FF         ## $a3 = 000000FF
/* 00D44 80B3BCB4 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
.L80B3BCB8:
/* 00D48 80B3BCB8 A3A60053 */  sb      $a2, 0x0053($sp)           
/* 00D4C 80B3BCBC A3A70052 */  sb      $a3, 0x0052($sp)           
/* 00D50 80B3BCC0 0C024F61 */  jal     func_80093D84              
/* 00D54 80B3BCC4 A3A80051 */  sb      $t0, 0x0051($sp)           
/* 00D58 80B3BCC8 8FA30060 */  lw      $v1, 0x0060($sp)           
/* 00D5C 80B3BCCC 24010017 */  addiu   $at, $zero, 0x0017         ## $at = 00000017
/* 00D60 80B3BCD0 93A60053 */  lbu     $a2, 0x0053($sp)           
/* 00D64 80B3BCD4 8462001C */  lh      $v0, 0x001C($v1)           ## 0000001C
/* 00D68 80B3BCD8 93A70052 */  lbu     $a3, 0x0052($sp)           
/* 00D6C 80B3BCDC 93A80051 */  lbu     $t0, 0x0051($sp)           
/* 00D70 80B3BCE0 10410004 */  beq     $v0, $at, .L80B3BCF4       
/* 00D74 80B3BCE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D78 80B3BCE8 24010018 */  addiu   $at, $zero, 0x0018         ## $at = 00000018
/* 00D7C 80B3BCEC 5441001B */  bnel    $v0, $at, .L80B3BD5C       
/* 00D80 80B3BCF0 90620154 */  lbu     $v0, 0x0154($v1)           ## 00000154
.L80B3BCF4:
/* 00D84 80B3BCF4 A3A60053 */  sb      $a2, 0x0053($sp)           
/* 00D88 80B3BCF8 A3A70052 */  sb      $a3, 0x0052($sp)           
/* 00D8C 80B3BCFC 0C024F46 */  jal     func_80093D18              
/* 00D90 80B3BD00 A3A80051 */  sb      $t0, 0x0051($sp)           
/* 00D94 80B3BD04 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 00D98 80B3BD08 93A90053 */  lbu     $t1, 0x0053($sp)           
/* 00D9C 80B3BD0C 93AB0052 */  lbu     $t3, 0x0052($sp)           
/* 00DA0 80B3BD10 93AE0051 */  lbu     $t6, 0x0051($sp)           
/* 00DA4 80B3BD14 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 00DA8 80B3BD18 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 00DAC 80B3BD1C 00095600 */  sll     $t2, $t1, 24               
/* 00DB0 80B3BD20 000B6400 */  sll     $t4, $t3, 16               
/* 00DB4 80B3BD24 014C6825 */  or      $t5, $t2, $t4              ## $t5 = 00000000
/* 00DB8 80B3BD28 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 00DBC 80B3BD2C 000E7A00 */  sll     $t7, $t6,  8               
/* 00DC0 80B3BD30 01AFC025 */  or      $t8, $t5, $t7              ## $t8 = 00000000
/* 00DC4 80B3BD34 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 00DC8 80B3BD38 3719007F */  ori     $t9, $t8, 0x007F           ## $t9 = 0000007F
/* 00DCC 80B3BD3C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00DD0 80B3BD40 AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 00DD4 80B3BD44 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00DD8 80B3BD48 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00DDC 80B3BD4C 24A50700 */  addiu   $a1, $a1, 0x0700           ## $a1 = 06000700
/* 00DE0 80B3BD50 10000058 */  beq     $zero, $zero, .L80B3BEB4   
/* 00DE4 80B3BD54 00000000 */  nop
/* 00DE8 80B3BD58 90620154 */  lbu     $v0, 0x0154($v1)           ## 00000154
.L80B3BD5C:
/* 00DEC 80B3BD5C 3C0980B4 */  lui     $t1, %hi(D_80B3BF70)       ## $t1 = 80B40000
/* 00DF0 80B3BD60 3C0580B4 */  lui     $a1, %hi(D_80B3BF54)       ## $a1 = 80B40000
/* 00DF4 80B3BD64 3042000F */  andi    $v0, $v0, 0x000F           ## $v0 = 00000000
/* 00DF8 80B3BD68 00021080 */  sll     $v0, $v0,  2               
/* 00DFC 80B3BD6C 01224821 */  addu    $t1, $t1, $v0              
/* 00E00 80B3BD70 8D29BF70 */  lw      $t1, %lo(D_80B3BF70)($t1)  
/* 00E04 80B3BD74 00A22821 */  addu    $a1, $a1, $v0              
/* 00E08 80B3BD78 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00E0C 80B3BD7C 11200030 */  beq     $t1, $zero, .L80B3BE40     
/* 00E10 80B3BD80 00000000 */  nop
/* 00E14 80B3BD84 8CA5BF54 */  lw      $a1, %lo(D_80B3BF54)($a1)  
/* 00E18 80B3BD88 A3A60053 */  sb      $a2, 0x0053($sp)           
/* 00E1C 80B3BD8C A3A70052 */  sb      $a3, 0x0052($sp)           
/* 00E20 80B3BD90 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00E24 80B3BD94 A3A80051 */  sb      $t0, 0x0051($sp)           
/* 00E28 80B3BD98 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00E2C 80B3BD9C 93AC0053 */  lbu     $t4, 0x0053($sp)           
/* 00E30 80B3BDA0 93AD0052 */  lbu     $t5, 0x0052($sp)           
/* 00E34 80B3BDA4 93B90051 */  lbu     $t9, 0x0051($sp)           
/* 00E38 80B3BDA8 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00E3C 80B3BDAC AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00E40 80B3BDB0 000C7600 */  sll     $t6, $t4, 24               
/* 00E44 80B3BDB4 000D7C00 */  sll     $t7, $t5, 16               
/* 00E48 80B3BDB8 01CFC025 */  or      $t8, $t6, $t7              ## $t8 = 00000000
/* 00E4C 80B3BDBC 00194A00 */  sll     $t1, $t9,  8               
/* 00E50 80B3BDC0 03095825 */  or      $t3, $t8, $t1              ## $t3 = 00000000
/* 00E54 80B3BDC4 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 00E58 80B3BDC8 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00E5C 80B3BDCC AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 00E60 80B3BDD0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00E64 80B3BDD4 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 00E68 80B3BDD8 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 00E6C 80B3BDDC 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00E70 80B3BDE0 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00E74 80B3BDE4 3C0580B4 */  lui     $a1, %hi(D_80B3BFB4)       ## $a1 = 80B40000
/* 00E78 80B3BDE8 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00E7C 80B3BDEC 24A5BFB4 */  addiu   $a1, $a1, %lo(D_80B3BFB4)  ## $a1 = 80B3BFB4
/* 00E80 80B3BDF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E84 80B3BDF4 24060328 */  addiu   $a2, $zero, 0x0328         ## $a2 = 00000328
/* 00E88 80B3BDF8 0C0346A2 */  jal     Matrix_NewMtx              
/* 00E8C 80B3BDFC AFA20030 */  sw      $v0, 0x0030($sp)           
/* 00E90 80B3BE00 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 00E94 80B3BE04 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 00E98 80B3BE08 3C0B80B4 */  lui     $t3, %hi(D_80B3BF70)       ## $t3 = 80B40000
/* 00E9C 80B3BE0C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00EA0 80B3BE10 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00EA4 80B3BE14 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00EA8 80B3BE18 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 00EAC 80B3BE1C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 00EB0 80B3BE20 8FAF0060 */  lw      $t7, 0x0060($sp)           
/* 00EB4 80B3BE24 91F90154 */  lbu     $t9, 0x0154($t7)           ## 00000154
/* 00EB8 80B3BE28 3338000F */  andi    $t8, $t9, 0x000F           ## $t8 = 00000000
/* 00EBC 80B3BE2C 00184880 */  sll     $t1, $t8,  2               
/* 00EC0 80B3BE30 01695821 */  addu    $t3, $t3, $t1              
/* 00EC4 80B3BE34 8D6BBF70 */  lw      $t3, %lo(D_80B3BF70)($t3)  
/* 00EC8 80B3BE38 1000001E */  beq     $zero, $zero, .L80B3BEB4   
/* 00ECC 80B3BE3C AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
.L80B3BE40:
/* 00ED0 80B3BE40 0C024F61 */  jal     func_80093D84              
/* 00ED4 80B3BE44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ED8 80B3BE48 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00EDC 80B3BE4C 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 00EE0 80B3BE50 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 00EE4 80B3BE54 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00EE8 80B3BE58 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00EEC 80B3BE5C 3C0580B4 */  lui     $a1, %hi(D_80B3BFC8)       ## $a1 = 80B40000
/* 00EF0 80B3BE60 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00EF4 80B3BE64 24A5BFC8 */  addiu   $a1, $a1, %lo(D_80B3BFC8)  ## $a1 = 80B3BFC8
/* 00EF8 80B3BE68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EFC 80B3BE6C 2406032E */  addiu   $a2, $zero, 0x032E         ## $a2 = 0000032E
/* 00F00 80B3BE70 0C0346A2 */  jal     Matrix_NewMtx              
/* 00F04 80B3BE74 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 00F08 80B3BE78 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00F0C 80B3BE7C 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 00F10 80B3BE80 3C0B80B4 */  lui     $t3, %hi(D_80B3BF54)       ## $t3 = 80B40000
/* 00F14 80B3BE84 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00F18 80B3BE88 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00F1C 80B3BE8C 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00F20 80B3BE90 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 00F24 80B3BE94 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 00F28 80B3BE98 8FAF0060 */  lw      $t7, 0x0060($sp)           
/* 00F2C 80B3BE9C 91F90154 */  lbu     $t9, 0x0154($t7)           ## 00000154
/* 00F30 80B3BEA0 3338000F */  andi    $t8, $t9, 0x000F           ## $t8 = 00000000
/* 00F34 80B3BEA4 00184880 */  sll     $t1, $t8,  2               
/* 00F38 80B3BEA8 01695821 */  addu    $t3, $t3, $t1              
/* 00F3C 80B3BEAC 8D6BBF54 */  lw      $t3, %lo(D_80B3BF54)($t3)  
/* 00F40 80B3BEB0 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
.L80B3BEB4:
/* 00F44 80B3BEB4 3C0680B4 */  lui     $a2, %hi(D_80B3BFDC)       ## $a2 = 80B40000
/* 00F48 80B3BEB8 24C6BFDC */  addiu   $a2, $a2, %lo(D_80B3BFDC)  ## $a2 = 80B3BFDC
/* 00F4C 80B3BEBC 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFDC
/* 00F50 80B3BEC0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00F54 80B3BEC4 0C031AD5 */  jal     Graph_CloseDisps              
/* 00F58 80B3BEC8 24070348 */  addiu   $a3, $zero, 0x0348         ## $a3 = 00000348
/* 00F5C 80B3BECC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00F60 80B3BED0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00F64 80B3BED4 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 00F68 80B3BED8 03E00008 */  jr      $ra                        
/* 00F6C 80B3BEDC 00000000 */  nop

