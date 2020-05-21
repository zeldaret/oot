glabel DoorShutter_Init
/* 001F0 80996490 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 001F4 80996494 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 001F8 80996498 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 001FC 8099649C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00200 809964A0 3C05809A */  lui     $a1, %hi(D_80998230)       ## $a1 = 809A0000
/* 00204 809964A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00208 809964A8 24A58230 */  addiu   $a1, $a1, %lo(D_80998230)  ## $a1 = 80998230
/* 0020C 809964AC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00210 809964B0 AFA6004C */  sw      $a2, 0x004C($sp)           
/* 00214 809964B4 C60400BC */  lwc1    $f4, 0x00BC($s0)           ## 000000BC
/* 00218 809964B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0021C 809964BC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00220 809964C0 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00224 809964C4 E6040010 */  swc1    $f4, 0x0010($s0)           ## 00000010
/* 00228 809964C8 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 0022C 809964CC 8FA6004C */  lw      $a2, 0x004C($sp)           
/* 00230 809964D0 3C07809A */  lui     $a3, %hi(D_80998224)       ## $a3 = 809A0000
/* 00234 809964D4 000E7983 */  sra     $t7, $t6,  6               
/* 00238 809964D8 31F8000F */  andi    $t8, $t7, 0x000F           ## $t8 = 00000000
/* 0023C 809964DC 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000000
/* 00240 809964E0 A218016A */  sb      $t8, 0x016A($s0)           ## 0000016A
/* 00244 809964E4 00F93821 */  addu    $a3, $a3, $t9              
/* 00248 809964E8 80E78224 */  lb      $a3, %lo(D_80998224)($a3)  
/* 0024C 809964EC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00250 809964F0 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00254 809964F4 04E1000E */  bgez    $a3, .L80996530            
/* 00258 809964F8 3C0E809A */  lui     $t6, %hi(D_809980F0)       ## $t6 = 809A0000
/* 0025C 809964FC 3C03809A */  lui     $v1, %hi(D_80998240)       ## $v1 = 809A0000
/* 00260 80996500 24638240 */  addiu   $v1, $v1, %lo(D_80998240)  ## $v1 = 80998240
/* 00264 80996504 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00268 80996508 84C400A4 */  lh      $a0, 0x00A4($a2)           ## 000000A4
/* 0026C 8099650C 24050011 */  addiu   $a1, $zero, 0x0011         ## $a1 = 00000011
.L80996510:
/* 00270 80996510 84680000 */  lh      $t0, 0x0000($v1)           ## 80998240
/* 00274 80996514 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00278 80996518 11040003 */  beq     $t0, $a0, .L80996528       
/* 0027C 8099651C 00000000 */  nop
/* 00280 80996520 1445FFFB */  bne     $v0, $a1, .L80996510       
/* 00284 80996524 24630004 */  addiu   $v1, $v1, 0x0004           ## $v1 = 80998244
.L80996528:
/* 00288 80996528 10000015 */  beq     $zero, $zero, .L80996580   
/* 0028C 8099652C 90670002 */  lbu     $a3, 0x0002($v1)           ## 80998246
.L80996530:
/* 00290 80996530 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 00294 80996534 14E50011 */  bne     $a3, $a1, .L8099657C       
/* 00298 80996538 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 0029C 8099653C 3C03809A */  lui     $v1, %hi(D_80998288)       ## $v1 = 809A0000
/* 002A0 80996540 24638288 */  addiu   $v1, $v1, %lo(D_80998288)  ## $v1 = 80998288
/* 002A4 80996544 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 002A8 80996548 84C400A4 */  lh      $a0, 0x00A4($a2)           ## 000000A4
.L8099654C:
/* 002AC 8099654C 84690000 */  lh      $t1, 0x0000($v1)           ## 80998288
/* 002B0 80996550 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 002B4 80996554 51240007 */  beql    $t1, $a0, .L80996574       
/* 002B8 80996558 906B0004 */  lbu     $t3, 0x0004($v1)           ## 8099828C
/* 002BC 8099655C 846A0002 */  lh      $t2, 0x0002($v1)           ## 8099828A
/* 002C0 80996560 51440004 */  beql    $t2, $a0, .L80996574       
/* 002C4 80996564 906B0004 */  lbu     $t3, 0x0004($v1)           ## 8099828C
/* 002C8 80996568 1445FFF8 */  bne     $v0, $a1, .L8099654C       
/* 002CC 8099656C 24630006 */  addiu   $v1, $v1, 0x0006           ## $v1 = 8099828E
/* 002D0 80996570 906B0004 */  lbu     $t3, 0x0004($v1)           ## 80998292
.L80996574:
/* 002D4 80996574 10000002 */  beq     $zero, $zero, .L80996580   
/* 002D8 80996578 A60B0168 */  sh      $t3, 0x0168($s0)           ## 00000168
.L8099657C:
/* 002DC 8099657C A20C0003 */  sb      $t4, 0x0003($s0)           ## 00000003
.L80996580:
/* 002E0 80996580 00076880 */  sll     $t5, $a3,  2               
/* 002E4 80996584 25CE80F0 */  addiu   $t6, $t6, %lo(D_809980F0)  ## $t6 = 809980F0
/* 002E8 80996588 01AE1021 */  addu    $v0, $t5, $t6              
/* 002EC 8099658C 84450000 */  lh      $a1, 0x0000($v0)           ## 00000001
/* 002F0 80996590 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 002F4 80996594 00C12021 */  addu    $a0, $a2, $at              
/* 002F8 80996598 AFA6004C */  sw      $a2, 0x004C($sp)           
/* 002FC 8099659C 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00300 809965A0 AFA7003C */  sw      $a3, 0x003C($sp)           
/* 00304 809965A4 00027E00 */  sll     $t7, $v0, 24               
/* 00308 809965A8 000FC603 */  sra     $t8, $t7, 24               
/* 0030C 809965AC 8FA6004C */  lw      $a2, 0x004C($sp)           
/* 00310 809965B0 8FA7003C */  lw      $a3, 0x003C($sp)           
/* 00314 809965B4 07010005 */  bgez    $t8, .L809965CC            
/* 00318 809965B8 A202016D */  sb      $v0, 0x016D($s0)           ## 0000016D
/* 0031C 809965BC 0C00B55C */  jal     Actor_Kill
              
/* 00320 809965C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00324 809965C4 10000031 */  beq     $zero, $zero, .L8099668C   
/* 00328 809965C8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809965CC:
/* 0032C 809965CC 3C058099 */  lui     $a1, %hi(func_8099670C)    ## $a1 = 80990000
/* 00330 809965D0 24A5670C */  addiu   $a1, $a1, %lo(func_8099670C) ## $a1 = 8099670C
/* 00334 809965D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00338 809965D8 AFA6004C */  sw      $a2, 0x004C($sp)           
/* 0033C 809965DC 0C2658A8 */  jal     func_809962A0              
/* 00340 809965E0 AFA7003C */  sw      $a3, 0x003C($sp)           
/* 00344 809965E4 9202016A */  lbu     $v0, 0x016A($s0)           ## 0000016A
/* 00348 809965E8 8FA7003C */  lw      $a3, 0x003C($sp)           
/* 0034C 809965EC 8FA6004C */  lw      $a2, 0x004C($sp)           
/* 00350 809965F0 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 00354 809965F4 10410004 */  beq     $v0, $at, .L80996608       
/* 00358 809965F8 A207016B */  sb      $a3, 0x016B($s0)           ## 0000016B
/* 0035C 809965FC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00360 80996600 1441000D */  bne     $v0, $at, .L80996638       
/* 00364 80996604 8FA80024 */  lw      $t0, 0x0024($sp)           
.L80996608:
/* 00368 80996608 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 0036C 8099660C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00370 80996610 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00374 80996614 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00378 80996618 14400003 */  bne     $v0, $zero, .L80996628     
/* 0037C 8099661C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00380 80996620 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 00384 80996624 A219016E */  sb      $t9, 0x016E($s0)           ## 0000016E
.L80996628:
/* 00388 80996628 0C00B56E */  jal     Actor_SetHeight
              
/* 0038C 8099662C 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 00390 80996630 10000016 */  beq     $zero, $zero, .L8099668C   
/* 00394 80996634 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80996638:
/* 00398 80996638 3C09809A */  lui     $t1, %hi(D_80998100)       ## $t1 = 809A0000
/* 0039C 8099663C 25298100 */  addiu   $t1, $t1, %lo(D_80998100)  ## $t1 = 80998100
/* 003A0 80996640 1509000F */  bne     $t0, $t1, .L80996680       
/* 003A4 80996644 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003A8 80996648 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 003AC 8099664C 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 003B0 80996650 0C00B58B */  jal     Actor_SetScale
              
/* 003B4 80996654 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003B8 80996658 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 003BC 8099665C 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 003C0 80996660 240A0064 */  addiu   $t2, $zero, 0x0064         ## $t2 = 00000064
/* 003C4 80996664 A60A0166 */  sh      $t2, 0x0166($s0)           ## 00000166
/* 003C8 80996668 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003CC 8099666C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 003D0 80996670 0C00B56E */  jal     Actor_SetHeight
              
/* 003D4 80996674 E60600F8 */  swc1    $f6, 0x00F8($s0)           ## 000000F8
/* 003D8 80996678 10000004 */  beq     $zero, $zero, .L8099668C   
/* 003DC 8099667C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80996680:
/* 003E0 80996680 0C00B56E */  jal     Actor_SetHeight
              
/* 003E4 80996684 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 003E8 80996688 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8099668C:
/* 003EC 8099668C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003F0 80996690 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 003F4 80996694 03E00008 */  jr      $ra                        
/* 003F8 80996698 00000000 */  nop
