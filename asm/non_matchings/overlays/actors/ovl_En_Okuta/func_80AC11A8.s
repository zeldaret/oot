glabel func_80AC11A8
/* 00B48 80AC11A8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00B4C 80AC11AC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B50 80AC11B0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00B54 80AC11B4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00B58 80AC11B8 C484000C */  lwc1    $f4, 0x000C($a0)           ## 0000000C
/* 00B5C 80AC11BC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B60 80AC11C0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00B64 80AC11C4 E484FEDC */  swc1    $f4, -0x0124($a0)          ## 00000028
/* 00B68 80AC11C8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00B6C 80AC11CC AFA4002C */  sw      $a0, 0x002C($sp)           
/* 00B70 80AC11D0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00B74 80AC11D4 0C0295B2 */  jal     func_800A56C8              
/* 00B78 80AC11D8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00B7C 80AC11DC 10400005 */  beq     $v0, $zero, .L80AC11F4     
/* 00B80 80AC11E0 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 00B84 80AC11E4 86020194 */  lh      $v0, 0x0194($s0)           ## 00000194
/* 00B88 80AC11E8 10400002 */  beq     $v0, $zero, .L80AC11F4     
/* 00B8C 80AC11EC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00B90 80AC11F0 A60E0194 */  sh      $t6, 0x0194($s0)           ## 00000194
.L80AC11F4:
/* 00B94 80AC11F4 0C0295B2 */  jal     func_800A56C8              
/* 00B98 80AC11F8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00B9C 80AC11FC 10400003 */  beq     $v0, $zero, .L80AC120C     
/* 00BA0 80AC1200 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BA4 80AC1204 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00BA8 80AC1208 240538C1 */  addiu   $a1, $zero, 0x38C1         ## $a1 = 000038C1
.L80AC120C:
/* 00BAC 80AC120C 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00BB0 80AC1210 44813000 */  mtc1    $at, $f6                   ## $f6 = 160.00
/* 00BB4 80AC1214 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 00BB8 80AC1218 3C01440C */  lui     $at, 0x440C                ## $at = 440C0000
/* 00BBC 80AC121C 4606003C */  c.lt.s  $f0, $f6                   
/* 00BC0 80AC1220 00000000 */  nop
/* 00BC4 80AC1224 45010009 */  bc1t    .L80AC124C                 
/* 00BC8 80AC1228 00000000 */  nop
/* 00BCC 80AC122C 44814000 */  mtc1    $at, $f8                   ## $f8 = 560.00
/* 00BD0 80AC1230 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00BD4 80AC1234 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00BD8 80AC1238 4600403C */  c.lt.s  $f8, $f0                   
/* 00BDC 80AC123C 2407071C */  addiu   $a3, $zero, 0x071C         ## $a3 = 0000071C
/* 00BE0 80AC1240 240F038E */  addiu   $t7, $zero, 0x038E         ## $t7 = 0000038E
/* 00BE4 80AC1244 45020006 */  bc1fl   .L80AC1260                 
/* 00BE8 80AC1248 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
.L80AC124C:
/* 00BEC 80AC124C 0C2B02C9 */  jal     func_80AC0B24              
/* 00BF0 80AC1250 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BF4 80AC1254 1000001C */  beq     $zero, $zero, .L80AC12C8   
/* 00BF8 80AC1258 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00BFC 80AC125C 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
.L80AC1260:
/* 00C00 80AC1260 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00C04 80AC1264 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00C08 80AC1268 04400004 */  bltz    $v0, .L80AC127C            
/* 00C0C 80AC126C 00021C00 */  sll     $v1, $v0, 16               
/* 00C10 80AC1270 00021C00 */  sll     $v1, $v0, 16               
/* 00C14 80AC1274 10000003 */  beq     $zero, $zero, .L80AC1284   
/* 00C18 80AC1278 00031C03 */  sra     $v1, $v1, 16               
.L80AC127C:
/* 00C1C 80AC127C 00031C03 */  sra     $v1, $v1, 16               
/* 00C20 80AC1280 00031823 */  subu    $v1, $zero, $v1            
.L80AC1284:
/* 00C24 80AC1284 2861038E */  slti    $at, $v1, 0x038E           
/* 00C28 80AC1288 5020000F */  beql    $at, $zero, .L80AC12C8     
/* 00C2C 80AC128C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C30 80AC1290 86180194 */  lh      $t8, 0x0194($s0)           ## 00000194
/* 00C34 80AC1294 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00C38 80AC1298 5700000B */  bnel    $t8, $zero, .L80AC12C8     
/* 00C3C 80AC129C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C40 80AC12A0 C60A0094 */  lwc1    $f10, 0x0094($s0)          ## 00000094
/* 00C44 80AC12A4 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 00C48 80AC12A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C4C 80AC12AC 4610503C */  c.lt.s  $f10, $f16                 
/* 00C50 80AC12B0 00000000 */  nop
/* 00C54 80AC12B4 45020004 */  bc1fl   .L80AC12C8                 
/* 00C58 80AC12B8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C5C 80AC12BC 0C2B02F0 */  jal     func_80AC0BC0              
/* 00C60 80AC12C0 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00C64 80AC12C4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AC12C8:
/* 00C68 80AC12C8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00C6C 80AC12CC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00C70 80AC12D0 03E00008 */  jr      $ra                        
/* 00C74 80AC12D4 00000000 */  nop
