glabel func_80AB94D0
/* 00550 80AB94D0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00554 80AB94D4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00558 80AB94D8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0055C 80AB94DC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00560 80AB94E0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00564 80AB94E4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00568 80AB94E8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0056C 80AB94EC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00570 80AB94F0 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00574 80AB94F4 0C042F6F */  jal     func_8010BDBC              
/* 00578 80AB94F8 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 0057C 80AB94FC 10400003 */  beq     $v0, $zero, .L80AB950C     
/* 00580 80AB9500 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00584 80AB9504 8E0E0284 */  lw      $t6, 0x0284($s0)           ## 00000284
/* 00588 80AB9508 A5C002E8 */  sh      $zero, 0x02E8($t6)         ## 000002E8
.L80AB950C:
/* 0058C 80AB950C 3C053F4C */  lui     $a1, 0x3F4C                ## $a1 = 3F4C0000
/* 00590 80AB9510 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 00594 80AB9514 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 00598 80AB9518 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 0059C 80AB951C 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3F4CCCCD
/* 005A0 80AB9520 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005A4 80AB9524 0C00BC65 */  jal     func_8002F194              
/* 005A8 80AB9528 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 005AC 80AB952C 50400009 */  beql    $v0, $zero, .L80AB9554     
/* 005B0 80AB9530 8619026C */  lh      $t9, 0x026C($s0)           ## 0000026C
/* 005B4 80AB9534 960F010E */  lhu     $t7, 0x010E($s0)           ## 0000010E
/* 005B8 80AB9538 240170EA */  addiu   $at, $zero, 0x70EA         ## $at = 000070EA
/* 005BC 80AB953C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 005C0 80AB9540 55E1001C */  bnel    $t7, $at, .L80AB95B4       
/* 005C4 80AB9544 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 005C8 80AB9548 10000019 */  beq     $zero, $zero, .L80AB95B0   
/* 005CC 80AB954C A618027A */  sh      $t8, 0x027A($s0)           ## 0000027A
/* 005D0 80AB9550 8619026C */  lh      $t9, 0x026C($s0)           ## 0000026C
.L80AB9554:
/* 005D4 80AB9554 57200013 */  bnel    $t9, $zero, .L80AB95A4     
/* 005D8 80AB9558 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005DC 80AB955C 0C042F6F */  jal     func_8010BDBC              
/* 005E0 80AB9560 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 005E4 80AB9564 1440000E */  bne     $v0, $zero, .L80AB95A0     
/* 005E8 80AB9568 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 005EC 80AB956C 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 005F0 80AB9570 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 005F4 80AB9574 00000000 */  nop
/* 005F8 80AB9578 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 005FC 80AB957C 44812000 */  mtc1    $at, $f4                   ## $f4 = 250.00
/* 00600 80AB9580 3C0A80AC */  lui     $t2, %hi(func_80AB918C)    ## $t2 = 80AC0000
/* 00604 80AB9584 254A918C */  addiu   $t2, $t2, %lo(func_80AB918C) ## $t2 = 80AB918C
/* 00608 80AB9588 46040180 */  add.s   $f6, $f0, $f4              
/* 0060C 80AB958C AE0A025C */  sw      $t2, 0x025C($s0)           ## 0000025C
/* 00610 80AB9590 4600320D */  trunc.w.s $f8, $f6                   
/* 00614 80AB9594 44094000 */  mfc1    $t1, $f8                   
/* 00618 80AB9598 10000005 */  beq     $zero, $zero, .L80AB95B0   
/* 0061C 80AB959C A609026C */  sh      $t1, 0x026C($s0)           ## 0000026C
.L80AB95A0:
/* 00620 80AB95A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AB95A4:
/* 00624 80AB95A4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00628 80AB95A8 0C00BCB3 */  jal     func_8002F2CC              
/* 0062C 80AB95AC 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
.L80AB95B0:
/* 00630 80AB95B0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AB95B4:
/* 00634 80AB95B4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00638 80AB95B8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0063C 80AB95BC 03E00008 */  jr      $ra                        
/* 00640 80AB95C0 00000000 */  nop
