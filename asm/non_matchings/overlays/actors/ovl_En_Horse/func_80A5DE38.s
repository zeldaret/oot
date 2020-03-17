glabel func_80A5DE38
/* 02B48 80A5DE38 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 02B4C 80A5DE3C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 02B50 80A5DE40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02B54 80A5DE44 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 02B58 80A5DE48 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 02B5C 80A5DE4C 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFFC
/* 02B60 80A5DE50 24840264 */  addiu   $a0, $a0, 0x0264           ## $a0 = 00000264
/* 02B64 80A5DE54 0C298C52 */  jal     func_80A63148              
/* 02B68 80A5DE58 27A6003A */  addiu   $a2, $sp, 0x003A           ## $a2 = FFFFFFFA
/* 02B6C 80A5DE5C 8E020150 */  lw      $v0, 0x0150($s0)           ## 00000150
/* 02B70 80A5DE60 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 02B74 80A5DE64 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 02B78 80A5DE68 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 02B7C 80A5DE6C 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 02B80 80A5DE70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02B84 80A5DE74 46802020 */  cvt.s.w $f0, $f4                   
/* 02B88 80A5DE78 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 02B8C 80A5DE7C 3C07BF00 */  lui     $a3, 0xBF00                ## $a3 = BF000000
/* 02B90 80A5DE80 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02B94 80A5DE84 240E0190 */  addiu   $t6, $zero, 0x0190         ## $t6 = 00000190
/* 02B98 80A5DE88 4602003E */  c.le.s  $f0, $f2                   
/* 02B9C 80A5DE8C 00000000 */  nop
/* 02BA0 80A5DE90 4502000E */  bc1fl   .L80A5DECC                 
/* 02BA4 80A5DE94 4600103C */  c.lt.s  $f2, $f0                   
/* 02BA8 80A5DE98 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 02BAC 80A5DE9C 3C0180A6 */  lui     $at, %hi(D_80A668C4)       ## $at = 80A60000
/* 02BB0 80A5DEA0 C42868C4 */  lwc1    $f8, %lo(D_80A668C4)($at)  
/* 02BB4 80A5DEA4 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 02BB8 80A5DEA8 44815000 */  mtc1    $at, $f10                  ## $f10 = 8.00
/* 02BBC 80A5DEAC AFAE001C */  sw      $t6, 0x001C($sp)           
/* 02BC0 80A5DEB0 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 02BC4 80A5DEB4 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 02BC8 80A5DEB8 0C2972BB */  jal     func_80A5CAEC              
/* 02BCC 80A5DEBC E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 02BD0 80A5DEC0 1000000A */  beq     $zero, $zero, .L80A5DEEC   
/* 02BD4 80A5DEC4 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 02BD8 80A5DEC8 4600103C */  c.lt.s  $f2, $f0                   
.L80A5DECC:
/* 02BDC 80A5DECC 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 02BE0 80A5DED0 45020006 */  bc1fl   .L80A5DEEC                 
/* 02BE4 80A5DED4 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 02BE8 80A5DED8 44818000 */  mtc1    $at, $f16                  ## $f16 = 6.00
/* 02BEC 80A5DEDC 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 02BF0 80A5DEE0 AE0F0150 */  sw      $t7, 0x0150($s0)           ## 00000150
/* 02BF4 80A5DEE4 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 02BF8 80A5DEE8 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
.L80A5DEEC:
/* 02BFC 80A5DEEC 44819000 */  mtc1    $at, $f18                  ## $f18 = 6.00
/* 02C00 80A5DEF0 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 02C04 80A5DEF4 4612003C */  c.lt.s  $f0, $f18                  
/* 02C08 80A5DEF8 00000000 */  nop
/* 02C0C 80A5DEFC 45000004 */  bc1f    .L80A5DF10                 
/* 02C10 80A5DF00 00000000 */  nop
/* 02C14 80A5DF04 0C29769A */  jal     func_80A5DA68              
/* 02C18 80A5DF08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C1C 80A5DF0C C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
.L80A5DF10:
/* 02C20 80A5DF10 3C0180A6 */  lui     $at, %hi(D_80A668C8)       ## $at = 80A60000
/* 02C24 80A5DF14 C42468C8 */  lwc1    $f4, %lo(D_80A668C8)($at)  
/* 02C28 80A5DF18 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 02C2C 80A5DF1C 46040182 */  mul.s   $f6, $f0, $f4              
/* 02C30 80A5DF20 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02C34 80A5DF24 E60601C8 */  swc1    $f6, 0x01C8($s0)           ## 000001C8
/* 02C38 80A5DF28 50400034 */  beql    $v0, $zero, .L80A5DFFC     
/* 02C3C 80A5DF2C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 02C40 80A5DF30 0C296EB3 */  jal     func_80A5BACC              
/* 02C44 80A5DF34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C48 80A5DF38 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 02C4C 80A5DF3C 24050078 */  addiu   $a1, $zero, 0x0078         ## $a1 = 00000078
/* 02C50 80A5DF40 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 02C54 80A5DF44 0C02A800 */  jal     func_800AA000              
/* 02C58 80A5DF48 240700FF */  addiu   $a3, $zero, 0x00FF         ## $a3 = 000000FF
/* 02C5C 80A5DF4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C60 80A5DF50 0C296FFE */  jal     func_80A5BFF8              
/* 02C64 80A5DF54 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 02C68 80A5DF58 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02C6C 80A5DF5C 14410024 */  bne     $v0, $at, .L80A5DFF0       
/* 02C70 80A5DF60 C7A8003C */  lwc1    $f8, 0x003C($sp)           
/* 02C74 80A5DF64 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02C78 80A5DF68 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 02C7C 80A5DF6C 00000000 */  nop
/* 02C80 80A5DF70 4608503E */  c.le.s  $f10, $f8                  
/* 02C84 80A5DF74 00000000 */  nop
/* 02C88 80A5DF78 4502000F */  bc1fl   .L80A5DFB8                 
/* 02C8C 80A5DF7C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 02C90 80A5DF80 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 02C94 80A5DF84 87A4003A */  lh      $a0, 0x003A($sp)           
/* 02C98 80A5DF88 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 02C9C 80A5DF8C 44818000 */  mtc1    $at, $f16                  ## $f16 = -0.50
/* 02CA0 80A5DF90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02CA4 80A5DF94 4610003E */  c.le.s  $f0, $f16                  
/* 02CA8 80A5DF98 00000000 */  nop
/* 02CAC 80A5DF9C 45020006 */  bc1fl   .L80A5DFB8                 
/* 02CB0 80A5DFA0 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 02CB4 80A5DFA4 0C2978AA */  jal     func_80A5E2A8              
/* 02CB8 80A5DFA8 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 02CBC 80A5DFAC 10000013 */  beq     $zero, $zero, .L80A5DFFC   
/* 02CC0 80A5DFB0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 02CC4 80A5DFB4 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
.L80A5DFB8:
/* 02CC8 80A5DFB8 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 02CCC 80A5DFBC C6120068 */  lwc1    $f18, 0x0068($s0)          ## 00000068
/* 02CD0 80A5DFC0 4604903C */  c.lt.s  $f18, $f4                  
/* 02CD4 80A5DFC4 00000000 */  nop
/* 02CD8 80A5DFC8 45000005 */  bc1f    .L80A5DFE0                 
/* 02CDC 80A5DFCC 00000000 */  nop
/* 02CE0 80A5DFD0 0C29769A */  jal     func_80A5DA68              
/* 02CE4 80A5DFD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02CE8 80A5DFD8 10000008 */  beq     $zero, $zero, .L80A5DFFC   
/* 02CEC 80A5DFDC 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A5DFE0:
/* 02CF0 80A5DFE0 0C297756 */  jal     func_80A5DD58              
/* 02CF4 80A5DFE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02CF8 80A5DFE8 10000004 */  beq     $zero, $zero, .L80A5DFFC   
/* 02CFC 80A5DFEC 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A5DFF0:
/* 02D00 80A5DFF0 0C297756 */  jal     func_80A5DD58              
/* 02D04 80A5DFF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D08 80A5DFF8 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A5DFFC:
/* 02D0C 80A5DFFC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 02D10 80A5E000 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 02D14 80A5E004 03E00008 */  jr      $ra                        
/* 02D18 80A5E008 00000000 */  nop


