glabel BgYdanMaruta_Init
/* 00000 808BED40 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00004 808BED44 AFA5007C */  sw      $a1, 0x007C($sp)           
/* 00008 808BED48 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0000C 808BED4C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00010 808BED50 3C05808C */  lui     $a1, %hi(D_808BF388)       ## $a1 = 808C0000
/* 00014 808BED54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 808BED58 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 0001C 808BED5C AFA0003C */  sw      $zero, 0x003C($sp)         
/* 00020 808BED60 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00024 808BED64 24A5F388 */  addiu   $a1, $a1, %lo(D_808BF388)  ## $a1 = 808BF388
/* 00028 808BED68 2605016C */  addiu   $a1, $s0, 0x016C           ## $a1 = 0000016C
/* 0002C 808BED6C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00030 808BED70 0C0171F8 */  jal     func_8005C7E0              
/* 00034 808BED74 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 00038 808BED78 3C07808C */  lui     $a3, %hi(D_808BF378)       ## $a3 = 808C0000
/* 0003C 808BED7C 260E018C */  addiu   $t6, $s0, 0x018C           ## $t6 = 0000018C
/* 00040 808BED80 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00044 808BED84 24E7F378 */  addiu   $a3, $a3, %lo(D_808BF378)  ## $a3 = 808BF378
/* 00048 808BED88 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 0004C 808BED8C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00050 808BED90 0C0172EB */  jal     func_8005CBAC              
/* 00054 808BED94 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00058 808BED98 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 0005C 808BED9C 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00060 808BEDA0 3C11808C */  lui     $s1, %hi(D_808BF33C)       ## $s1 = 808C0000
/* 00064 808BEDA4 00194203 */  sra     $t0, $t9,  8               
/* 00068 808BEDA8 310900FF */  andi    $t1, $t0, 0x00FF           ## $t1 = 00000000
/* 0006C 808BEDAC A609001C */  sh      $t1, 0x001C($s0)           ## 0000001C
/* 00070 808BEDB0 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 00074 808BEDB4 2631F33C */  addiu   $s1, $s1, %lo(D_808BF33C)  ## $s1 = 808BF33C
/* 00078 808BEDB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0007C 808BEDBC 15400007 */  bne     $t2, $zero, .L808BEDDC     
/* 00080 808BEDC0 A2180168 */  sb      $t8, 0x0168($s0)           ## 00000168
/* 00084 808BEDC4 3C0B808C */  lui     $t3, %hi(func_808BEFF4)    ## $t3 = 808C0000
/* 00088 808BEDC8 3C11808C */  lui     $s1, %hi(D_808BF300)       ## $s1 = 808C0000
/* 0008C 808BEDCC 256BEFF4 */  addiu   $t3, $t3, %lo(func_808BEFF4) ## $t3 = 808BEFF4
/* 00090 808BEDD0 2631F300 */  addiu   $s1, $s1, %lo(D_808BF300)  ## $s1 = 808BF300
/* 00094 808BEDD4 1000001F */  beq     $zero, $zero, .L808BEE54   
/* 00098 808BEDD8 AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
.L808BEDDC:
/* 0009C 808BEDDC 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 000A0 808BEDE0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 000A4 808BEDE4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 000A8 808BEDE8 248466A8 */  addiu   $a0, $a0, 0x66A8           ## $a0 = 060066A8
/* 000AC 808BEDEC 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 000B0 808BEDF0 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFC4
/* 000B4 808BEDF4 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 000B8 808BEDF8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000BC 808BEDFC 8FA7003C */  lw      $a3, 0x003C($sp)           
/* 000C0 808BEE00 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 000C4 808BEE04 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 000C8 808BEE08 3C01C38C */  lui     $at, 0xC38C                ## $at = C38C0000
/* 000CC 808BEE0C 44813000 */  mtc1    $at, $f6                   ## $f6 = -280.00
/* 000D0 808BEE10 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 000D4 808BEE14 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 000D8 808BEE18 92050168 */  lbu     $a1, 0x0168($s0)           ## 00000168
/* 000DC 808BEE1C 46062200 */  add.s   $f8, $f4, $f6              
/* 000E0 808BEE20 E608000C */  swc1    $f8, 0x000C($s0)           ## 0000000C
/* 000E4 808BEE24 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 000E8 808BEE28 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 000EC 808BEE2C 10400007 */  beq     $v0, $zero, .L808BEE4C     
/* 000F0 808BEE30 3C0D808C */  lui     $t5, %hi(func_808BF078)    ## $t5 = 808C0000
/* 000F4 808BEE34 C60A000C */  lwc1    $f10, 0x000C($s0)          ## 0000000C
/* 000F8 808BEE38 3C0C808C */  lui     $t4, %hi(func_808BF25C)    ## $t4 = 808C0000
/* 000FC 808BEE3C 258CF25C */  addiu   $t4, $t4, %lo(func_808BF25C) ## $t4 = 808BF25C
/* 00100 808BEE40 AE0C0164 */  sw      $t4, 0x0164($s0)           ## 00000164
/* 00104 808BEE44 10000003 */  beq     $zero, $zero, .L808BEE54   
/* 00108 808BEE48 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
.L808BEE4C:
/* 0010C 808BEE4C 25ADF078 */  addiu   $t5, $t5, %lo(func_808BF078) ## $t5 = 808BF078
/* 00110 808BEE50 AE0D0164 */  sw      $t5, 0x0164($s0)           ## 00000164
.L808BEE54:
/* 00114 808BEE54 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00118 808BEE58 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 0011C 808BEE5C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00120 808BEE60 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00124 808BEE64 E7A00044 */  swc1    $f0, 0x0044($sp)           
/* 00128 808BEE68 C7A20044 */  lwc1    $f2, 0x0044($sp)           
/* 0012C 808BEE6C 46000306 */  mov.s   $f12, $f0                  
/* 00130 808BEE70 27A2004C */  addiu   $v0, $sp, 0x004C           ## $v0 = FFFFFFD4
/* 00134 808BEE74 02201825 */  or      $v1, $s1, $zero            ## $v1 = 808BF300
/* 00138 808BEE78 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFF8
/* 0013C 808BEE7C C46A0018 */  lwc1    $f10, 0x0018($v1)          ## 808BF318
/* 00140 808BEE80 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = FFFFFFE0
/* 00144 808BEE84 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 00148 808BEE88 46005402 */  mul.s   $f16, $f10, $f0            
/* 0014C 808BEE8C 50440014 */  beql    $v0, $a0, .L808BEEE0       
/* 00150 808BEE90 46128380 */  add.s   $f14, $f16, $f18           
/* 00154 808BEE94 46128380 */  add.s   $f14, $f16, $f18           
.L808BEE98:
/* 00158 808BEE98 2442000C */  addiu   $v0, $v0, 0x000C           ## $v0 = FFFFFFEC
/* 0015C 808BEE9C 2463000C */  addiu   $v1, $v1, 0x000C           ## $v1 = 808BF30C
/* 00160 808BEEA0 E44EFFE8 */  swc1    $f14, -0x0018($v0)         ## FFFFFFD4
/* 00164 808BEEA4 C46E0010 */  lwc1    $f14, 0x0010($v1)          ## 808BF31C
/* 00168 808BEEA8 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 0016C 808BEEAC 460A7280 */  add.s   $f10, $f14, $f10           
/* 00170 808BEEB0 E44AFFEC */  swc1    $f10, -0x0014($v0)         ## FFFFFFD8
/* 00174 808BEEB4 C46A000C */  lwc1    $f10, 0x000C($v1)          ## 808BF318
/* 00178 808BEEB8 C60E002C */  lwc1    $f14, 0x002C($s0)          ## 0000002C
/* 0017C 808BEEBC 46025282 */  mul.s   $f10, $f10, $f2            
/* 00180 808BEEC0 460A7281 */  sub.s   $f10, $f14, $f10           
/* 00184 808BEEC4 E44AFFF0 */  swc1    $f10, -0x0010($v0)         ## FFFFFFDC
/* 00188 808BEEC8 C46A0018 */  lwc1    $f10, 0x0018($v1)          ## 808BF324
/* 0018C 808BEECC C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 00190 808BEED0 46005402 */  mul.s   $f16, $f10, $f0            
/* 00194 808BEED4 5444FFF0 */  bnel    $v0, $a0, .L808BEE98       
/* 00198 808BEED8 46128380 */  add.s   $f14, $f16, $f18           
/* 0019C 808BEEDC 46128380 */  add.s   $f14, $f16, $f18           
.L808BEEE0:
/* 001A0 808BEEE0 2463000C */  addiu   $v1, $v1, 0x000C           ## $v1 = 808BF318
/* 001A4 808BEEE4 E44EFFF4 */  swc1    $f14, -0x000C($v0)         ## FFFFFFE0
/* 001A8 808BEEE8 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 001AC 808BEEEC C46E0010 */  lwc1    $f14, 0x0010($v1)          ## 808BF328
/* 001B0 808BEEF0 460A7280 */  add.s   $f10, $f14, $f10           
/* 001B4 808BEEF4 E44AFFF8 */  swc1    $f10, -0x0008($v0)         ## FFFFFFE4
/* 001B8 808BEEF8 C46A000C */  lwc1    $f10, 0x000C($v1)          ## 808BF324
/* 001BC 808BEEFC C60E002C */  lwc1    $f14, 0x002C($s0)          ## 0000002C
/* 001C0 808BEF00 46025282 */  mul.s   $f10, $f10, $f2            
/* 001C4 808BEF04 460A7281 */  sub.s   $f10, $f14, $f10           
/* 001C8 808BEF08 E44AFFFC */  swc1    $f10, -0x0004($v0)         ## FFFFFFE8
/* 001CC 808BEF0C 27AE0064 */  addiu   $t6, $sp, 0x0064           ## $t6 = FFFFFFEC
/* 001D0 808BEF10 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 001D4 808BEF14 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 001D8 808BEF18 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 001DC 808BEF1C 27A6004C */  addiu   $a2, $sp, 0x004C           ## $a2 = FFFFFFD4
/* 001E0 808BEF20 27A70058 */  addiu   $a3, $sp, 0x0058           ## $a3 = FFFFFFE0
/* 001E4 808BEF24 E7A20044 */  swc1    $f2, 0x0044($sp)           
/* 001E8 808BEF28 0C0189E8 */  jal     func_800627A0              
/* 001EC 808BEF2C E7AC0040 */  swc1    $f12, 0x0040($sp)          
/* 001F0 808BEF30 C7AC0040 */  lwc1    $f12, 0x0040($sp)          
/* 001F4 808BEF34 C62A0030 */  lwc1    $f10, 0x0030($s1)          ## 808BF330
/* 001F8 808BEF38 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 001FC 808BEF3C C7A20044 */  lwc1    $f2, 0x0044($sp)           
/* 00200 808BEF40 460C5402 */  mul.s   $f16, $f10, $f12           
/* 00204 808BEF44 27AF0058 */  addiu   $t7, $sp, 0x0058           ## $t7 = FFFFFFE0
/* 00208 808BEF48 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0020C 808BEF4C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00210 808BEF50 27A6004C */  addiu   $a2, $sp, 0x004C           ## $a2 = FFFFFFD4
/* 00214 808BEF54 27A70064 */  addiu   $a3, $sp, 0x0064           ## $a3 = FFFFFFEC
/* 00218 808BEF58 46048480 */  add.s   $f18, $f16, $f4            
/* 0021C 808BEF5C E7B20058 */  swc1    $f18, 0x0058($sp)          
/* 00220 808BEF60 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00224 808BEF64 C626001C */  lwc1    $f6, 0x001C($s1)           ## 808BF31C
/* 00228 808BEF68 46083280 */  add.s   $f10, $f6, $f8             
/* 0022C 808BEF6C E7AA005C */  swc1    $f10, 0x005C($sp)          
/* 00230 808BEF70 C6240030 */  lwc1    $f4, 0x0030($s1)           ## 808BF330
/* 00234 808BEF74 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00238 808BEF78 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 0023C 808BEF7C 46022482 */  mul.s   $f18, $f4, $f2             
/* 00240 808BEF80 46128181 */  sub.s   $f6, $f16, $f18            
/* 00244 808BEF84 0C0189E8 */  jal     func_800627A0              
/* 00248 808BEF88 E7A60060 */  swc1    $f6, 0x0060($sp)           
/* 0024C 808BEF8C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00250 808BEF90 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00254 808BEF94 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00258 808BEF98 03E00008 */  jr      $ra                        
/* 0025C 808BEF9C 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
