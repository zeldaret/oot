glabel func_80AA71AC
/* 0115C 80AA71AC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01160 80AA71B0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01164 80AA71B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01168 80AA71B8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0116C 80AA71BC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01170 80AA71C0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01174 80AA71C4 2484018C */  addiu   $a0, $a0, 0x018C           ## $a0 = 0000018C
/* 01178 80AA71C8 8603032A */  lh      $v1, 0x032A($s0)           ## 0000032A
/* 0117C 80AA71CC 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 01180 80AA71D0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01184 80AA71D4 14600013 */  bne     $v1, $zero, .L80AA7224     
/* 01188 80AA71D8 246FFFFF */  addiu   $t7, $v1, 0xFFFF           ## $t7 = FFFFFFFF
/* 0118C 80AA71DC 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 01190 80AA71E0 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 01194 80AA71E4 26050344 */  addiu   $a1, $s0, 0x0344           ## $a1 = 00000344
/* 01198 80AA71E8 A6020330 */  sh      $v0, 0x0330($s0)           ## 00000330
/* 0119C 80AA71EC 86050330 */  lh      $a1, 0x0330($s0)           ## 00000330
/* 011A0 80AA71F0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 011A4 80AA71F4 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 011A8 80AA71F8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 011AC 80AA71FC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 011B0 80AA7200 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 011B4 80AA7204 5440000D */  bnel    $v0, $zero, .L80AA723C     
/* 011B8 80AA7208 C6000094 */  lwc1    $f0, 0x0094($s0)           ## 00000094
/* 011BC 80AA720C 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 011C0 80AA7210 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011C4 80AA7214 0C2A9A86 */  jal     func_80AA6A18              
/* 011C8 80AA7218 A60E0032 */  sh      $t6, 0x0032($s0)           ## 00000032
/* 011CC 80AA721C 10000007 */  beq     $zero, $zero, .L80AA723C   
/* 011D0 80AA7220 C6000094 */  lwc1    $f0, 0x0094($s0)           ## 00000094
.L80AA7224:
/* 011D4 80AA7224 A60F032A */  sh      $t7, 0x032A($s0)           ## 0000032A
/* 011D8 80AA7228 86050016 */  lh      $a1, 0x0016($s0)           ## 00000016
/* 011DC 80AA722C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 011E0 80AA7230 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 011E4 80AA7234 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 011E8 80AA7238 C6000094 */  lwc1    $f0, 0x0094($s0)           ## 00000094
.L80AA723C:
/* 011EC 80AA723C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 011F0 80AA7240 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 011F4 80AA7244 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 011F8 80AA7248 4600203E */  c.le.s  $f4, $f0                   
/* 011FC 80AA724C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01200 80AA7250 45020004 */  bc1fl   .L80AA7264                 
/* 01204 80AA7254 46000087 */  neg.s   $f2, $f0                   
/* 01208 80AA7258 10000002 */  beq     $zero, $zero, .L80AA7264   
/* 0120C 80AA725C 46000086 */  mov.s   $f2, $f0                   
/* 01210 80AA7260 46000087 */  neg.s   $f2, $f0                   
.L80AA7264:
/* 01214 80AA7264 4606103E */  c.le.s  $f2, $f6                   
/* 01218 80AA7268 00000000 */  nop
/* 0121C 80AA726C 45020024 */  bc1fl   .L80AA7300                 
/* 01220 80AA7270 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01224 80AA7274 0C2A994B */  jal     func_80AA652C              
/* 01228 80AA7278 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0122C 80AA727C 50400020 */  beql    $v0, $zero, .L80AA7300     
/* 01230 80AA7280 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01234 80AA7284 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 01238 80AA7288 8619008A */  lh      $t9, 0x008A($s0)           ## 0000008A
/* 0123C 80AA728C 03191023 */  subu    $v0, $t8, $t9              
/* 01240 80AA7290 00021400 */  sll     $v0, $v0, 16               
/* 01244 80AA7294 00021403 */  sra     $v0, $v0, 16               
/* 01248 80AA7298 04400003 */  bltz    $v0, .L80AA72A8            
/* 0124C 80AA729C 00021823 */  subu    $v1, $zero, $v0            
/* 01250 80AA72A0 10000001 */  beq     $zero, $zero, .L80AA72A8   
/* 01254 80AA72A4 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80AA72A8:
/* 01258 80AA72A8 28614001 */  slti    $at, $v1, 0x4001           
/* 0125C 80AA72AC 5420000C */  bnel    $at, $zero, .L80AA72E0     
/* 01260 80AA72B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01264 80AA72B4 0C00B779 */  jal     func_8002DDE4              
/* 01268 80AA72B8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0126C 80AA72BC 1040000F */  beq     $v0, $zero, .L80AA72FC     
/* 01270 80AA72C0 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 01274 80AA72C4 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 01278 80AA72C8 44815000 */  mtc1    $at, $f10                  ## $f10 = 160.00
/* 0127C 80AA72CC 00000000 */  nop
/* 01280 80AA72D0 460A403C */  c.lt.s  $f8, $f10                  
/* 01284 80AA72D4 00000000 */  nop
/* 01288 80AA72D8 45000008 */  bc1f    .L80AA72FC                 
/* 0128C 80AA72DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AA72E0:
/* 01290 80AA72E0 0C2A99A8 */  jal     func_80AA66A0              
/* 01294 80AA72E4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01298 80AA72E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0129C 80AA72EC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 012A0 80AA72F0 240538BB */  addiu   $a1, $zero, 0x38BB         ## $a1 = 000038BB
/* 012A4 80AA72F4 0C2A9AB2 */  jal     func_80AA6AC8              
/* 012A8 80AA72F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AA72FC:
/* 012AC 80AA72FC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AA7300:
/* 012B0 80AA7300 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 012B4 80AA7304 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 012B8 80AA7308 03E00008 */  jr      $ra                        
/* 012BC 80AA730C 00000000 */  nop


