.rdata
glabel D_8086F088
    .asciz "(field keep 汎用爆弾壁)(arg_data 0x%04x)(angY %d)\n"
    .balign 4

.text
glabel BgBombwall_Init
/* 000CC 8086E89C 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 000D0 8086E8A0 AFB30044 */  sw      $s3, 0x0044($sp)           
/* 000D4 8086E8A4 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 000D8 8086E8A8 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 000DC 8086E8AC AFBE0058 */  sw      $s8, 0x0058($sp)           
/* 000E0 8086E8B0 AFB70054 */  sw      $s7, 0x0054($sp)           
/* 000E4 8086E8B4 AFB60050 */  sw      $s6, 0x0050($sp)           
/* 000E8 8086E8B8 AFB5004C */  sw      $s5, 0x004C($sp)           
/* 000EC 8086E8BC AFB40048 */  sw      $s4, 0x0048($sp)           
/* 000F0 8086E8C0 AFB20040 */  sw      $s2, 0x0040($sp)           
/* 000F4 8086E8C4 AFB1003C */  sw      $s1, 0x003C($sp)           
/* 000F8 8086E8C8 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 000FC 8086E8CC F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 00100 8086E8D0 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 00104 8086E8D4 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 00108 8086E8D8 AFA500BC */  sw      $a1, 0x00BC($sp)           
/* 0010C 8086E8DC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00110 8086E8E0 848400B6 */  lh      $a0, 0x00B6($a0)           ## 000000B6
/* 00114 8086E8E4 46000586 */  mov.s   $f22, $f0                  
/* 00118 8086E8E8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0011C 8086E8EC 866400B6 */  lh      $a0, 0x00B6($s3)           ## 000000B6
/* 00120 8086E8F0 3C058087 */  lui     $a1, %hi(D_8086F004)       ## $a1 = 80870000
/* 00124 8086E8F4 46000606 */  mov.s   $f24, $f0                  
/* 00128 8086E8F8 24A5F004 */  addiu   $a1, $a1, %lo(D_8086F004)  ## $a1 = 8086F004
/* 0012C 8086E8FC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00130 8086E900 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00134 8086E904 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 00138 8086E908 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 0013C 8086E90C 0C00B58B */  jal     Actor_SetScale
              
/* 00140 8086E910 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00144 8086E914 8665001C */  lh      $a1, 0x001C($s3)           ## 0000001C
/* 00148 8086E918 8FA400BC */  lw      $a0, 0x00BC($sp)           
/* 0014C 8086E91C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00150 8086E920 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00154 8086E924 10400006 */  beq     $v0, $zero, .L8086E940     
/* 00158 8086E928 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 0015C 8086E92C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00160 8086E930 0C21BBA5 */  jal     func_8086EE94              
/* 00164 8086E934 8FA500BC */  lw      $a1, 0x00BC($sp)           
/* 00168 8086E938 1000004D */  beq     $zero, $zero, .L8086EA70   
/* 0016C 8086E93C 00000000 */  nop
.L8086E940:
/* 00170 8086E940 0C21B9F4 */  jal     func_8086E7D0              
/* 00174 8086E944 8FA500BC */  lw      $a1, 0x00BC($sp)           
/* 00178 8086E948 926E02A2 */  lbu     $t6, 0x02A2($s3)           ## 000002A2
/* 0017C 8086E94C 26770164 */  addiu   $s7, $s3, 0x0164           ## $s7 = 00000164
/* 00180 8086E950 02E02825 */  or      $a1, $s7, $zero            ## $a1 = 00000164
/* 00184 8086E954 35CF0002 */  ori     $t7, $t6, 0x0002           ## $t7 = 00000002
/* 00188 8086E958 A26F02A2 */  sb      $t7, 0x02A2($s3)           ## 000002A2
/* 0018C 8086E95C 0C0171F8 */  jal     Collider_InitTris              
/* 00190 8086E960 8FA400BC */  lw      $a0, 0x00BC($sp)           
/* 00194 8086E964 3C148087 */  lui     $s4, %hi(D_8086EFD4)       ## $s4 = 80870000
/* 00198 8086E968 2694EFD4 */  addiu   $s4, $s4, %lo(D_8086EFD4)  ## $s4 = 8086EFD4
/* 0019C 8086E96C 26780184 */  addiu   $t8, $s3, 0x0184           ## $t8 = 00000184
/* 001A0 8086E970 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 001A4 8086E974 02803825 */  or      $a3, $s4, $zero            ## $a3 = 8086EFD4
/* 001A8 8086E978 8FA400BC */  lw      $a0, 0x00BC($sp)           
/* 001AC 8086E97C 02E02825 */  or      $a1, $s7, $zero            ## $a1 = 00000164
/* 001B0 8086E980 0C0172EB */  jal     Collider_SetTris              
/* 001B4 8086E984 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 001B8 8086E988 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 001BC 8086E98C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 2.00
/* 001C0 8086E990 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 001C4 8086E994 27BE008C */  addiu   $s8, $sp, 0x008C           ## $s8 = FFFFFFD4
/* 001C8 8086E998 27B600B0 */  addiu   $s6, $sp, 0x00B0           ## $s6 = FFFFFFF8
/* 001CC 8086E99C 27B50080 */  addiu   $s5, $sp, 0x0080           ## $s5 = FFFFFFC8
/* 001D0 8086E9A0 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L8086E9A4:
/* 001D4 8086E9A4 27B0008C */  addiu   $s0, $sp, 0x008C           ## $s0 = FFFFFFD4
.L8086E9A8:
/* 001D8 8086E9A8 8E99000C */  lw      $t9, 0x000C($s4)           ## 8086EFE0
/* 001DC 8086E9AC 00124100 */  sll     $t0, $s2,  4               
/* 001E0 8086E9B0 01124023 */  subu    $t0, $t0, $s2              
/* 001E4 8086E9B4 00084080 */  sll     $t0, $t0,  2               
/* 001E8 8086E9B8 03284821 */  addu    $t1, $t9, $t0              
/* 001EC 8086E9BC 01311021 */  addu    $v0, $t1, $s1              
/* 001F0 8086E9C0 C4440018 */  lwc1    $f4, 0x0018($v0)           ## 00000018
/* 001F4 8086E9C4 4406B000 */  mfc1    $a2, $f22                  
/* 001F8 8086E9C8 4407C000 */  mfc1    $a3, $f24                  
/* 001FC 8086E9CC E7A40080 */  swc1    $f4, 0x0080($sp)           
/* 00200 8086E9D0 C446001C */  lwc1    $f6, 0x001C($v0)           ## 0000001C
/* 00204 8086E9D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD4
/* 00208 8086E9D8 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFC8
/* 0020C 8086E9DC E7A60084 */  swc1    $f6, 0x0084($sp)           
/* 00210 8086E9E0 C4480020 */  lwc1    $f8, 0x0020($v0)           ## 00000020
/* 00214 8086E9E4 46144280 */  add.s   $f10, $f8, $f20            
/* 00218 8086E9E8 0C21BA14 */  jal     func_8086E850              
/* 0021C 8086E9EC E7AA0088 */  swc1    $f10, 0x0088($sp)          
/* 00220 8086E9F0 C6100000 */  lwc1    $f16, 0x0000($s0)          ## FFFFFFD4
/* 00224 8086E9F4 C6720024 */  lwc1    $f18, 0x0024($s3)          ## 00000024
/* 00228 8086E9F8 C6060004 */  lwc1    $f6, 0x0004($s0)           ## FFFFFFD8
/* 0022C 8086E9FC 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = FFFFFFE0
/* 00230 8086EA00 46128100 */  add.s   $f4, $f16, $f18            
/* 00234 8086EA04 C610FFFC */  lwc1    $f16, -0x0004($s0)         ## FFFFFFDC
/* 00238 8086EA08 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 0000000C
/* 0023C 8086EA0C E604FFF4 */  swc1    $f4, -0x000C($s0)          ## FFFFFFD4
/* 00240 8086EA10 C6680028 */  lwc1    $f8, 0x0028($s3)           ## 00000028
/* 00244 8086EA14 46083280 */  add.s   $f10, $f6, $f8             
/* 00248 8086EA18 E60AFFF8 */  swc1    $f10, -0x0008($s0)         ## FFFFFFD8
/* 0024C 8086EA1C C672002C */  lwc1    $f18, 0x002C($s3)          ## 0000002C
/* 00250 8086EA20 46128100 */  add.s   $f4, $f16, $f18            
/* 00254 8086EA24 1616FFE0 */  bne     $s0, $s6, .L8086E9A8       
/* 00258 8086EA28 E604FFFC */  swc1    $f4, -0x0004($s0)          ## FFFFFFDC
/* 0025C 8086EA2C 27AA00A4 */  addiu   $t2, $sp, 0x00A4           ## $t2 = FFFFFFEC
/* 00260 8086EA30 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00264 8086EA34 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 00000164
/* 00268 8086EA38 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 0026C 8086EA3C 03C03025 */  or      $a2, $s8, $zero            ## $a2 = FFFFFFD4
/* 00270 8086EA40 0C0189E8 */  jal     func_800627A0              
/* 00274 8086EA44 27A70098 */  addiu   $a3, $sp, 0x0098           ## $a3 = FFFFFFE0
/* 00278 8086EA48 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 0027C 8086EA4C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00280 8086EA50 5641FFD4 */  bnel    $s2, $at, .L8086E9A4       
/* 00284 8086EA54 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00288 8086EA58 926B02A2 */  lbu     $t3, 0x02A2($s3)           ## 000002A2
/* 0028C 8086EA5C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00290 8086EA60 356C0001 */  ori     $t4, $t3, 0x0001           ## $t4 = 00000001
/* 00294 8086EA64 A26C02A2 */  sb      $t4, 0x02A2($s3)           ## 000002A2
/* 00298 8086EA68 0C21BB54 */  jal     func_8086ED50              
/* 0029C 8086EA6C 8FA500BC */  lw      $a1, 0x00BC($sp)           
.L8086EA70:
/* 002A0 8086EA70 3C048087 */  lui     $a0, %hi(D_8086F088)       ## $a0 = 80870000
/* 002A4 8086EA74 2484F088 */  addiu   $a0, $a0, %lo(D_8086F088)  ## $a0 = 8086F088
/* 002A8 8086EA78 8665001C */  lh      $a1, 0x001C($s3)           ## 0000001C
/* 002AC 8086EA7C 0C00084C */  jal     osSyncPrintf
              
/* 002B0 8086EA80 866600B6 */  lh      $a2, 0x00B6($s3)           ## 000000B6
/* 002B4 8086EA84 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 002B8 8086EA88 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 002BC 8086EA8C D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 002C0 8086EA90 D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 002C4 8086EA94 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 002C8 8086EA98 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 002CC 8086EA9C 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 002D0 8086EAA0 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 002D4 8086EAA4 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 002D8 8086EAA8 8FB5004C */  lw      $s5, 0x004C($sp)           
/* 002DC 8086EAAC 8FB60050 */  lw      $s6, 0x0050($sp)           
/* 002E0 8086EAB0 8FB70054 */  lw      $s7, 0x0054($sp)           
/* 002E4 8086EAB4 8FBE0058 */  lw      $s8, 0x0058($sp)           
/* 002E8 8086EAB8 03E00008 */  jr      $ra                        
/* 002EC 8086EABC 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000
