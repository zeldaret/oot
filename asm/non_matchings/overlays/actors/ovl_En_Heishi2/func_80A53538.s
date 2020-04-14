glabel func_80A53538
/* 00698 80A53538 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0069C 80A5353C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006A0 80A53540 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006A4 80A53544 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 006A8 80A53548 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 006AC 80A5354C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 006B0 80A53550 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 006B4 80A53554 0C042F6F */  jal     func_8010BDBC              
/* 006B8 80A53558 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 006BC 80A5355C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 006C0 80A53560 85CF0300 */  lh      $t7, 0x0300($t6)           ## 00000300
/* 006C4 80A53564 55E20012 */  bnel    $t7, $v0, .L80A535B0       
/* 006C8 80A53568 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006CC 80A5356C 0C041AF2 */  jal     func_80106BC8              
/* 006D0 80A53570 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 006D4 80A53574 1040000D */  beq     $v0, $zero, .L80A535AC     
/* 006D8 80A53578 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 006DC 80A5357C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 006E0 80A53580 0C00B7D5 */  jal     func_8002DF54              
/* 006E4 80A53584 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 006E8 80A53588 8FB9001C */  lw      $t9, 0x001C($sp)           
/* 006EC 80A5358C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 006F0 80A53590 24180037 */  addiu   $t8, $zero, 0x0037         ## $t8 = 00000037
/* 006F4 80A53594 00390821 */  addu    $at, $at, $t9              
/* 006F8 80A53598 A03803DC */  sb      $t8, 0x03DC($at)           ## 000103DC
/* 006FC 80A5359C 8FA90018 */  lw      $t1, 0x0018($sp)           
/* 00700 80A535A0 3C0880A5 */  lui     $t0, %hi(func_80A535BC)    ## $t0 = 80A50000
/* 00704 80A535A4 250835BC */  addiu   $t0, $t0, %lo(func_80A535BC) ## $t0 = 80A535BC
/* 00708 80A535A8 AD28025C */  sw      $t0, 0x025C($t1)           ## 0000025C
.L80A535AC:
/* 0070C 80A535AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A535B0:
/* 00710 80A535B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00714 80A535B4 03E00008 */  jr      $ra                        
/* 00718 80A535B8 00000000 */  nop
