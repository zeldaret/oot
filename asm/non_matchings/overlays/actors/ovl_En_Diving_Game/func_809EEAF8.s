.rdata
glabel D_809EF150
    .asciz "[32m☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n[m"
    .balign 4

.balign 4

.text
glabel func_809EEAF8
/* 01288 809EEAF8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0128C 809EEAFC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01290 809EEB00 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01294 809EEB04 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01298 809EEB08 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0129C 809EEB0C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 012A0 809EEB10 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 012A4 809EEB14 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 012A8 809EEB18 0C042F6F */  jal     func_8010BDBC              
/* 012AC 809EEB1C 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 012B0 809EEB20 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 012B4 809EEB24 54410016 */  bnel    $v0, $at, .L809EEB80       
/* 012B8 809EEB28 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 012BC 809EEB2C 0C041AF2 */  jal     func_80106BC8              
/* 012C0 809EEB30 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 012C4 809EEB34 10400011 */  beq     $v0, $zero, .L809EEB7C     
/* 012C8 809EEB38 3C04809F */  lui     $a0, %hi(D_809EF150)       ## $a0 = 809F0000
/* 012CC 809EEB3C 0C00084C */  jal     osSyncPrintf
              
/* 012D0 809EEB40 2484F150 */  addiu   $a0, $a0, %lo(D_809EF150)  ## $a0 = 809EF150
/* 012D4 809EEB44 A60002A4 */  sh      $zero, 0x02A4($s0)         ## 000002A4
/* 012D8 809EEB48 860202A4 */  lh      $v0, 0x02A4($s0)           ## 000002A4
/* 012DC 809EEB4C 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 012E0 809EEB50 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 012E4 809EEB54 A60202A2 */  sh      $v0, 0x02A2($s0)           ## 000002A2
/* 012E8 809EEB58 A602029C */  sh      $v0, 0x029C($s0)           ## 0000029C
/* 012EC 809EEB5C A60202A8 */  sh      $v0, 0x02A8($s0)           ## 000002A8
/* 012F0 809EEB60 A202031E */  sb      $v0, 0x031E($s0)           ## 0000031E
/* 012F4 809EEB64 946E0EDA */  lhu     $t6, 0x0EDA($v1)           ## 8015F53A
/* 012F8 809EEB68 3C18809F */  lui     $t8, %hi(func_809EDCB0)    ## $t8 = 809F0000
/* 012FC 809EEB6C 2718DCB0 */  addiu   $t8, $t8, %lo(func_809EDCB0) ## $t8 = 809EDCB0
/* 01300 809EEB70 35CF0100 */  ori     $t7, $t6, 0x0100           ## $t7 = 00000100
/* 01304 809EEB74 A46F0EDA */  sh      $t7, 0x0EDA($v1)           ## 8015F53A
/* 01308 809EEB78 AE180280 */  sw      $t8, 0x0280($s0)           ## 00000280
.L809EEB7C:
/* 0130C 809EEB7C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EEB80:
/* 01310 809EEB80 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01314 809EEB84 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01318 809EEB88 03E00008 */  jr      $ra                        
/* 0131C 809EEB8C 00000000 */  nop
