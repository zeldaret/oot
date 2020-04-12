.rdata
glabel D_809AD550
    .asciz "[36m\nエルフ タグ 消える条件 %d[m\n"
    .balign 4

glabel D_809AD574
    .asciz "[36m\nthisx->shape.angle.sy = %d\n[m"
    .balign 4

glabel D_809AD59C
    .asciz "[36m\nエルフ タグ 出現条件 %d[m\n"
    .balign 4

.late_rodata
glabel D_809AD5F0
    .float 0.4

glabel D_809AD5F4
    .float 0.04

glabel D_809AD5F8
    .float 0.4

glabel D_809AD5FC
    .float 0.04

.text
glabel ElfMsg_Init
/* 0015C 809ACC7C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00160 809ACC80 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00164 809ACC84 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00168 809ACC88 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0016C 809ACC8C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00170 809ACC90 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00174 809ACC94 3C04809B */  lui     $a0, %hi(D_809AD550)       ## $a0 = 809B0000
/* 00178 809ACC98 2484D550 */  addiu   $a0, $a0, %lo(D_809AD550)  ## $a0 = 809AD550
/* 0017C 809ACC9C 00052A03 */  sra     $a1, $a1,  8               
/* 00180 809ACCA0 0C00084C */  jal     osSyncPrintf
              
/* 00184 809ACCA4 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00188 809ACCA8 3C04809B */  lui     $a0, %hi(D_809AD574)       ## $a0 = 809B0000
/* 0018C 809ACCAC 2484D574 */  addiu   $a0, $a0, %lo(D_809AD574)  ## $a0 = 809AD574
/* 00190 809ACCB0 0C00084C */  jal     osSyncPrintf
              
/* 00194 809ACCB4 860500B6 */  lh      $a1, 0x00B6($s0)           ## 000000B6
/* 00198 809ACCB8 860200B6 */  lh      $v0, 0x00B6($s0)           ## 000000B6
/* 0019C 809ACCBC 3C04809B */  lui     $a0, %hi(D_809AD59C)       ## $a0 = 809B0000
/* 001A0 809ACCC0 2484D59C */  addiu   $a0, $a0, %lo(D_809AD59C)  ## $a0 = 809AD59C
/* 001A4 809ACCC4 28410041 */  slti    $at, $v0, 0x0041           
/* 001A8 809ACCC8 54200004 */  bnel    $at, $zero, .L809ACCDC     
/* 001AC 809ACCCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001B0 809ACCD0 0C00084C */  jal     osSyncPrintf
              
/* 001B4 809ACCD4 2445FFBF */  addiu   $a1, $v0, 0xFFBF           ## $a1 = FFFFFFBF
/* 001B8 809ACCD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809ACCDC:
/* 001BC 809ACCDC 0C26B2CA */  jal     func_809ACB28              
/* 001C0 809ACCE0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 001C4 809ACCE4 14400031 */  bne     $v0, $zero, .L809ACDAC     
/* 001C8 809ACCE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001CC 809ACCEC 3C05809B */  lui     $a1, %hi(D_809AD270)       ## $a1 = 809B0000
/* 001D0 809ACCF0 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 001D4 809ACCF4 24A5D270 */  addiu   $a1, $a1, %lo(D_809AD270)  ## $a1 = 809AD270
/* 001D8 809ACCF8 86020030 */  lh      $v0, 0x0030($s0)           ## 00000030
/* 001DC 809ACCFC 3C01809B */  lui     $at, %hi(D_809AD5F0)       ## $at = 809B0000
/* 001E0 809ACD00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001E4 809ACD04 14400005 */  bne     $v0, $zero, .L809ACD1C     
/* 001E8 809ACD08 3C05809B */  lui     $a1, %hi(func_809ACF18)    ## $a1 = 809B0000
/* 001EC 809ACD0C C420D5F0 */  lwc1    $f0, %lo(D_809AD5F0)($at)  
/* 001F0 809ACD10 E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 001F4 809ACD14 1000000A */  beq     $zero, $zero, .L809ACD40   
/* 001F8 809ACD18 E6000050 */  swc1    $f0, 0x0050($s0)           ## 00000050
.L809ACD1C:
/* 001FC 809ACD1C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00200 809ACD20 3C01809B */  lui     $at, %hi(D_809AD5F4)       ## $at = 809B0000
/* 00204 809ACD24 C428D5F4 */  lwc1    $f8, %lo(D_809AD5F4)($at)  
/* 00208 809ACD28 468021A0 */  cvt.s.w $f6, $f4                   
/* 0020C 809ACD2C 3C01809B */  lui     $at, %hi(D_809AD5F8)       ## $at = 809B0000
/* 00210 809ACD30 46083002 */  mul.s   $f0, $f6, $f8              
/* 00214 809ACD34 E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 00218 809ACD38 E6000050 */  swc1    $f0, 0x0050($s0)           ## 00000050
/* 0021C 809ACD3C C420D5F8 */  lwc1    $f0, %lo(D_809AD5F8)($at)  
.L809ACD40:
/* 00220 809ACD40 86020034 */  lh      $v0, 0x0034($s0)           ## 00000034
/* 00224 809ACD44 54400004 */  bnel    $v0, $zero, .L809ACD58     
/* 00228 809ACD48 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 0022C 809ACD4C 10000007 */  beq     $zero, $zero, .L809ACD6C   
/* 00230 809ACD50 E6000054 */  swc1    $f0, 0x0054($s0)           ## 00000054
/* 00234 809ACD54 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
.L809ACD58:
/* 00238 809ACD58 3C01809B */  lui     $at, %hi(D_809AD5FC)       ## $at = 809B0000
/* 0023C 809ACD5C C432D5FC */  lwc1    $f18, %lo(D_809AD5FC)($at) 
/* 00240 809ACD60 46805420 */  cvt.s.w $f16, $f10                 
/* 00244 809ACD64 46128102 */  mul.s   $f4, $f16, $f18            
/* 00248 809ACD68 E6040054 */  swc1    $f4, 0x0054($s0)           ## 00000054
.L809ACD6C:
/* 0024C 809ACD6C 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00250 809ACD70 31CF4000 */  andi    $t7, $t6, 0x4000           ## $t7 = 00000000
/* 00254 809ACD74 11E00007 */  beq     $t7, $zero, .L809ACD94     
/* 00258 809ACD78 00000000 */  nop
/* 0025C 809ACD7C 3C05809B */  lui     $a1, %hi(func_809ACDF8)    ## $a1 = 809B0000
/* 00260 809ACD80 24A5CDF8 */  addiu   $a1, $a1, %lo(func_809ACDF8) ## $a1 = 809ACDF8
/* 00264 809ACD84 0C26B2C8 */  jal     func_809ACB20              
/* 00268 809ACD88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0026C 809ACD8C 10000004 */  beq     $zero, $zero, .L809ACDA0   
/* 00270 809ACD90 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
.L809ACD94:
/* 00274 809ACD94 0C26B2C8 */  jal     func_809ACB20              
/* 00278 809ACD98 24A5CF18 */  addiu   $a1, $a1, %lo(func_809ACF18) ## $a1 = FFFFCF18
/* 0027C 809ACD9C A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
.L809ACDA0:
/* 00280 809ACDA0 860200B8 */  lh      $v0, 0x00B8($s0)           ## 000000B8
/* 00284 809ACDA4 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00288 809ACDA8 A60200B4 */  sh      $v0, 0x00B4($s0)           ## 000000B4
.L809ACDAC:
/* 0028C 809ACDAC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00290 809ACDB0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00294 809ACDB4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00298 809ACDB8 03E00008 */  jr      $ra                        
/* 0029C 809ACDBC 00000000 */  nop
