.rdata
glabel D_80ACD7AC
    .asciz "フクロウ消滅!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

.late_rodata
glabel D_80ACD854
    .float 0.3

glabel D_80ACD858
    .float 5000.0

glabel D_80ACD85C
    .float 5000.0

glabel D_80ACD860
    .float 5000.0

.text
glabel EnOwl_Update
/* 02780 80ACC6A0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 02784 80ACC6A4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02788 80ACC6A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0278C 80ACC6AC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02790 80ACC6B0 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 02794 80ACC6B4 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 02798 80ACC6B8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000014C
/* 0279C 80ACC6BC 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 027A0 80ACC6C0 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 027A4 80ACC6C4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 027A8 80ACC6C8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 027AC 80ACC6CC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 027B0 80ACC6D0 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 027B4 80ACC6D4 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 027B8 80ACC6D8 00812821 */  addu    $a1, $a0, $at              
/* 027BC 80ACC6DC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 027C0 80ACC6E0 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 027C4 80ACC6E4 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 027C8 80ACC6E8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 027CC 80ACC6EC 44060000 */  mfc1    $a2, $f0                   
/* 027D0 80ACC6F0 44070000 */  mfc1    $a3, $f0                   
/* 027D4 80ACC6F4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 027D8 80ACC6F8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 027DC 80ACC6FC 0C00B92D */  jal     func_8002E4B4              
/* 027E0 80ACC700 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 027E4 80ACC704 8E190410 */  lw      $t9, 0x0410($s0)           ## 00000410
/* 027E8 80ACC708 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 027EC 80ACC70C 0320F809 */  jalr    $ra, $t9                   
/* 027F0 80ACC710 00000000 */  nop
/* 027F4 80ACC714 960F03FC */  lhu     $t7, 0x03FC($s0)           ## 000003FC
/* 027F8 80ACC718 8E19040C */  lw      $t9, 0x040C($s0)           ## 0000040C
/* 027FC 80ACC71C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02800 80ACC720 31F8FFF7 */  andi    $t8, $t7, 0xFFF7           ## $t8 = 00000000
/* 02804 80ACC724 A61803FC */  sh      $t8, 0x03FC($s0)           ## 000003FC
/* 02808 80ACC728 0320F809 */  jalr    $ra, $t9                   
/* 0280C 80ACC72C 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 02810 80ACC730 8E080130 */  lw      $t0, 0x0130($s0)           ## 00000130
/* 02814 80ACC734 3C0480AD */  lui     $a0, %hi(D_80ACD7AC)       ## $a0 = 80AD0000
/* 02818 80ACC738 55000006 */  bnel    $t0, $zero, .L80ACC754     
/* 0281C 80ACC73C 960903FC */  lhu     $t1, 0x03FC($s0)           ## 000003FC
/* 02820 80ACC740 0C00084C */  jal     osSyncPrintf
              
/* 02824 80ACC744 2484D7AC */  addiu   $a0, $a0, %lo(D_80ACD7AC)  ## $a0 = 80ACD7AC
/* 02828 80ACC748 100001A9 */  beq     $zero, $zero, .L80ACCDF0   
/* 0282C 80ACC74C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02830 80ACC750 960903FC */  lhu     $t1, 0x03FC($s0)           ## 000003FC
.L80ACC754:
/* 02834 80ACC754 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02838 80ACC758 312A0080 */  andi    $t2, $t1, 0x0080           ## $t2 = 00000000
/* 0283C 80ACC75C 55400035 */  bnel    $t2, $zero, .L80ACC834     
/* 02840 80ACC760 8E0D0134 */  lw      $t5, 0x0134($s0)           ## 00000134
/* 02844 80ACC764 0C2B3189 */  jal     func_80ACC624              
/* 02848 80ACC768 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 0284C 80ACC76C 50400031 */  beql    $v0, $zero, .L80ACC834     
/* 02850 80ACC770 8E0D0134 */  lw      $t5, 0x0134($s0)           ## 00000134
/* 02854 80ACC774 8E0201A0 */  lw      $v0, 0x01A0($s0)           ## 000001A0
/* 02858 80ACC778 3C0B0600 */  lui     $t3, %hi(D_06001168)                ## $t3 = 06000000
/* 0285C 80ACC77C 256B1168 */  addiu   $t3, $t3, %lo(D_06001168)           ## $t3 = 06001168
/* 02860 80ACC780 1562001F */  bne     $t3, $v0, .L80ACC800       
/* 02864 80ACC784 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 02868 80ACC788 C60001B0 */  lwc1    $f0, 0x01B0($s0)           ## 000001B0
/* 0286C 80ACC78C 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 02870 80ACC790 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 02874 80ACC794 46002032 */  c.eq.s  $f4, $f0                   
/* 02878 80ACC798 00000000 */  nop
/* 0287C 80ACC79C 45030022 */  bc1tl   .L80ACC828                 
/* 02880 80ACC7A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02884 80ACC7A4 44813000 */  mtc1    $at, $f6                   ## $f6 = 9.00
/* 02888 80ACC7A8 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 0288C 80ACC7AC 46003032 */  c.eq.s  $f6, $f0                   
/* 02890 80ACC7B0 00000000 */  nop
/* 02894 80ACC7B4 4503001C */  bc1tl   .L80ACC828                 
/* 02898 80ACC7B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0289C 80ACC7BC 44814000 */  mtc1    $at, $f8                   ## $f8 = 23.00
/* 028A0 80ACC7C0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 028A4 80ACC7C4 46004032 */  c.eq.s  $f8, $f0                   
/* 028A8 80ACC7C8 00000000 */  nop
/* 028AC 80ACC7CC 45030016 */  bc1tl   .L80ACC828                 
/* 028B0 80ACC7D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 028B4 80ACC7D4 44815000 */  mtc1    $at, $f10                  ## $f10 = 40.00
/* 028B8 80ACC7D8 3C014268 */  lui     $at, 0x4268                ## $at = 42680000
/* 028BC 80ACC7DC 46005032 */  c.eq.s  $f10, $f0                  
/* 028C0 80ACC7E0 00000000 */  nop
/* 028C4 80ACC7E4 45030010 */  bc1tl   .L80ACC828                 
/* 028C8 80ACC7E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 028CC 80ACC7EC 44818000 */  mtc1    $at, $f16                  ## $f16 = 58.00
/* 028D0 80ACC7F0 00000000 */  nop
/* 028D4 80ACC7F4 46008032 */  c.eq.s  $f16, $f0                  
/* 028D8 80ACC7F8 00000000 */  nop
/* 028DC 80ACC7FC 45010009 */  bc1t    .L80ACC824                 
.L80ACC800:
/* 028E0 80ACC800 3C0C0600 */  lui     $t4, %hi(D_060015CC)                ## $t4 = 06000000
/* 028E4 80ACC804 258C15CC */  addiu   $t4, $t4, %lo(D_060015CC)           ## $t4 = 060015CC
/* 028E8 80ACC808 15820009 */  bne     $t4, $v0, .L80ACC830       
/* 028EC 80ACC80C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 028F0 80ACC810 44819000 */  mtc1    $at, $f18                  ## $f18 = 4.00
/* 028F4 80ACC814 C60401B0 */  lwc1    $f4, 0x01B0($s0)           ## 000001B0
/* 028F8 80ACC818 46049032 */  c.eq.s  $f18, $f4                  
/* 028FC 80ACC81C 00000000 */  nop
/* 02900 80ACC820 45000003 */  bc1f    .L80ACC830                 
.L80ACC824:
/* 02904 80ACC824 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ACC828:
/* 02908 80ACC828 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0290C 80ACC82C 24053926 */  addiu   $a1, $zero, 0x3926         ## $a1 = 00003926
.L80ACC830:
/* 02910 80ACC830 8E0D0134 */  lw      $t5, 0x0134($s0)           ## 00000134
.L80ACC834:
/* 02914 80ACC834 51A00004 */  beql    $t5, $zero, .L80ACC848     
/* 02918 80ACC838 960E03FC */  lhu     $t6, 0x03FC($s0)           ## 000003FC
/* 0291C 80ACC83C 0C00B638 */  jal     Actor_MoveForward
              
/* 02920 80ACC840 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02924 80ACC844 960E03FC */  lhu     $t6, 0x03FC($s0)           ## 000003FC
.L80ACC848:
/* 02928 80ACC848 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 0292C 80ACC84C 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 02930 80ACC850 51E00004 */  beql    $t7, $zero, .L80ACC864     
/* 02934 80ACC854 860303F6 */  lh      $v1, 0x03F6($s0)           ## 000003F6
/* 02938 80ACC858 10000016 */  beq     $zero, $zero, .L80ACC8B4   
/* 0293C 80ACC85C A61803F4 */  sh      $t8, 0x03F4($s0)           ## 000003F4
/* 02940 80ACC860 860303F6 */  lh      $v1, 0x03F6($s0)           ## 000003F6
.L80ACC864:
/* 02944 80ACC864 2404003C */  addiu   $a0, $zero, 0x003C         ## $a0 = 0000003C
/* 02948 80ACC868 14600003 */  bne     $v1, $zero, .L80ACC878     
/* 0294C 80ACC86C 2479FFFF */  addiu   $t9, $v1, 0xFFFF           ## $t9 = FFFFFFFF
/* 02950 80ACC870 10000004 */  beq     $zero, $zero, .L80ACC884   
/* 02954 80ACC874 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80ACC878:
/* 02958 80ACC878 A61903F6 */  sh      $t9, 0x03F6($s0)           ## 000003F6
/* 0295C 80ACC87C 860303F6 */  lh      $v1, 0x03F6($s0)           ## 000003F6
/* 02960 80ACC880 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80ACC884:
/* 02964 80ACC884 54400006 */  bnel    $v0, $zero, .L80ACC8A0     
/* 02968 80ACC888 A60303F4 */  sh      $v1, 0x03F4($s0)           ## 000003F4
/* 0296C 80ACC88C 0C01DF64 */  jal     Rand_S16Offset
              
/* 02970 80ACC890 2405003C */  addiu   $a1, $zero, 0x003C         ## $a1 = 0000003C
/* 02974 80ACC894 A60203F6 */  sh      $v0, 0x03F6($s0)           ## 000003F6
/* 02978 80ACC898 860303F6 */  lh      $v1, 0x03F6($s0)           ## 000003F6
/* 0297C 80ACC89C A60303F4 */  sh      $v1, 0x03F4($s0)           ## 000003F4
.L80ACC8A0:
/* 02980 80ACC8A0 860803F4 */  lh      $t0, 0x03F4($s0)           ## 000003F4
/* 02984 80ACC8A4 29010003 */  slti    $at, $t0, 0x0003           
/* 02988 80ACC8A8 54200003 */  bnel    $at, $zero, .L80ACC8B8     
/* 0298C 80ACC8AC 960203FC */  lhu     $v0, 0x03FC($s0)           ## 000003FC
/* 02990 80ACC8B0 A60003F4 */  sh      $zero, 0x03F4($s0)         ## 000003F4
.L80ACC8B4:
/* 02994 80ACC8B4 960203FC */  lhu     $v0, 0x03FC($s0)           ## 000003FC
.L80ACC8B8:
/* 02998 80ACC8B8 30490008 */  andi    $t1, $v0, 0x0008           ## $t1 = 00000000
/* 0299C 80ACC8BC 1520013E */  bne     $t1, $zero, .L80ACCDB8     
/* 029A0 80ACC8C0 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 029A4 80ACC8C4 304A0010 */  andi    $t2, $v0, 0x0010           ## $t2 = 00000000
/* 029A8 80ACC8C8 11400055 */  beq     $t2, $zero, .L80ACCA20     
/* 029AC 80ACC8CC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 029B0 80ACC8D0 92020404 */  lbu     $v0, 0x0404($s0)           ## 00000404
/* 029B4 80ACC8D4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 029B8 80ACC8D8 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 029BC 80ACC8DC 10400007 */  beq     $v0, $zero, .L80ACC8FC     
/* 029C0 80ACC8E0 240C0006 */  addiu   $t4, $zero, 0x0006         ## $t4 = 00000006
/* 029C4 80ACC8E4 10410008 */  beq     $v0, $at, .L80ACC908       
/* 029C8 80ACC8E8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 029CC 80ACC8EC 10410037 */  beq     $v0, $at, .L80ACC9CC       
/* 029D0 80ACC8F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029D4 80ACC8F4 10000125 */  beq     $zero, $zero, .L80ACCD8C   
/* 029D8 80ACC8F8 860A03EE */  lh      $t2, 0x03EE($s0)           ## 000003EE
.L80ACC8FC:
/* 029DC 80ACC8FC A20B0404 */  sb      $t3, 0x0404($s0)           ## 00000404
/* 029E0 80ACC900 10000121 */  beq     $zero, $zero, .L80ACCD88   
/* 029E4 80ACC904 A20C0405 */  sb      $t4, 0x0405($s0)           ## 00000405
.L80ACC908:
/* 029E8 80ACC908 920D0405 */  lbu     $t5, 0x0405($s0)           ## 00000405
/* 029EC 80ACC90C 25AEFFFF */  addiu   $t6, $t5, 0xFFFF           ## $t6 = FFFFFFFF
/* 029F0 80ACC910 31C200FF */  andi    $v0, $t6, 0x00FF           ## $v0 = 000000FF
/* 029F4 80ACC914 1040000F */  beq     $v0, $zero, .L80ACC954     
/* 029F8 80ACC918 A20E0405 */  sb      $t6, 0x0405($s0)           ## 00000405
/* 029FC 80ACC91C 00402025 */  or      $a0, $v0, $zero            ## $a0 = 000000FF
/* 02A00 80ACC920 00042740 */  sll     $a0, $a0, 29               
/* 02A04 80ACC924 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 02A08 80ACC928 00042403 */  sra     $a0, $a0, 16               
/* 02A0C 80ACC92C 3C014580 */  lui     $at, 0x4580                ## $at = 45800000
/* 02A10 80ACC930 44813000 */  mtc1    $at, $f6                   ## $f6 = 4096.00
/* 02A14 80ACC934 00000000 */  nop
/* 02A18 80ACC938 46060202 */  mul.s   $f8, $f0, $f6              
/* 02A1C 80ACC93C 4600428D */  trunc.w.s $f10, $f8                  
/* 02A20 80ACC940 44055000 */  mfc1    $a1, $f10                  
/* 02A24 80ACC944 00000000 */  nop
/* 02A28 80ACC948 00052C00 */  sll     $a1, $a1, 16               
/* 02A2C 80ACC94C 10000017 */  beq     $zero, $zero, .L80ACC9AC   
/* 02A30 80ACC950 00052C03 */  sra     $a1, $a1, 16               
.L80ACC954:
/* 02A34 80ACC954 961803FC */  lhu     $t8, 0x03FC($s0)           ## 000003FC
/* 02A38 80ACC958 24080020 */  addiu   $t0, $zero, 0x0020         ## $t0 = 00000020
/* 02A3C 80ACC95C 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 02A40 80ACC960 53200004 */  beql    $t9, $zero, .L80ACC974     
/* 02A44 80ACC964 A60803EE */  sh      $t0, 0x03EE($s0)           ## 000003EE
/* 02A48 80ACC968 10000002 */  beq     $zero, $zero, .L80ACC974   
/* 02A4C 80ACC96C A60003EE */  sh      $zero, 0x03EE($s0)         ## 000003EE
/* 02A50 80ACC970 A60803EE */  sh      $t0, 0x03EE($s0)           ## 000003EE
.L80ACC974:
/* 02A54 80ACC974 960903FC */  lhu     $t1, 0x03FC($s0)           ## 000003FC
/* 02A58 80ACC978 312A0020 */  andi    $t2, $t1, 0x0020           ## $t2 = 00000000
/* 02A5C 80ACC97C 51400006 */  beql    $t2, $zero, .L80ACC998     
/* 02A60 80ACC980 860D03EE */  lh      $t5, 0x03EE($s0)           ## 000003EE
/* 02A64 80ACC984 860B03EE */  lh      $t3, 0x03EE($s0)           ## 000003EE
/* 02A68 80ACC988 256CFFFC */  addiu   $t4, $t3, 0xFFFC           ## $t4 = FFFFFFFC
/* 02A6C 80ACC98C 10000004 */  beq     $zero, $zero, .L80ACC9A0   
/* 02A70 80ACC990 A60C03EE */  sh      $t4, 0x03EE($s0)           ## 000003EE
/* 02A74 80ACC994 860D03EE */  lh      $t5, 0x03EE($s0)           ## 000003EE
.L80ACC998:
/* 02A78 80ACC998 25AE0004 */  addiu   $t6, $t5, 0x0004           ## $t6 = 00000004
/* 02A7C 80ACC99C A60E03EE */  sh      $t6, 0x03EE($s0)           ## 000003EE
.L80ACC9A0:
/* 02A80 80ACC9A0 920F0404 */  lbu     $t7, 0x0404($s0)           ## 00000404
/* 02A84 80ACC9A4 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 02A88 80ACC9A8 A2180404 */  sb      $t8, 0x0404($s0)           ## 00000404
.L80ACC9AC:
/* 02A8C 80ACC9AC 961903FC */  lhu     $t9, 0x03FC($s0)           ## 000003FC
/* 02A90 80ACC9B0 33280020 */  andi    $t0, $t9, 0x0020           ## $t0 = 00000000
/* 02A94 80ACC9B4 510000F5 */  beql    $t0, $zero, .L80ACCD8C     
/* 02A98 80ACC9B8 860A03EE */  lh      $t2, 0x03EE($s0)           ## 000003EE
/* 02A9C 80ACC9BC 00052823 */  subu    $a1, $zero, $a1            
/* 02AA0 80ACC9C0 00052C00 */  sll     $a1, $a1, 16               
/* 02AA4 80ACC9C4 100000F0 */  beq     $zero, $zero, .L80ACCD88   
/* 02AA8 80ACC9C8 00052C03 */  sra     $a1, $a1, 16               
.L80ACC9CC:
/* 02AAC 80ACC9CC 0C2B3173 */  jal     func_80ACC5CC              
/* 02AB0 80ACC9D0 A7A50036 */  sh      $a1, 0x0036($sp)           
/* 02AB4 80ACC9D4 104000EC */  beq     $v0, $zero, .L80ACCD88     
/* 02AB8 80ACC9D8 87A50036 */  lh      $a1, 0x0036($sp)           
/* 02ABC 80ACC9DC 960903FC */  lhu     $t1, 0x03FC($s0)           ## 000003FC
/* 02AC0 80ACC9E0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02AC4 80ACC9E4 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 02AC8 80ACC9E8 312AFFEF */  andi    $t2, $t1, 0xFFEF           ## $t2 = 00000000
/* 02ACC 80ACC9EC A60A03FC */  sh      $t2, 0x03FC($s0)           ## 000003FC
/* 02AD0 80ACC9F0 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 02AD4 80ACC9F4 A7A50036 */  sh      $a1, 0x0036($sp)           
/* 02AD8 80ACC9F8 4600040D */  trunc.w.s $f16, $f0                  
/* 02ADC 80ACC9FC A2000404 */  sb      $zero, 0x0404($s0)         ## 00000404
/* 02AE0 80ACCA00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AE4 80ACCA04 440C8000 */  mfc1    $t4, $f16                  
/* 02AE8 80ACCA08 00000000 */  nop
/* 02AEC 80ACCA0C 258D003C */  addiu   $t5, $t4, 0x003C           ## $t5 = 0000003C
/* 02AF0 80ACCA10 0C2B29B0 */  jal     func_80ACA6C0              
/* 02AF4 80ACCA14 A20D0406 */  sb      $t5, 0x0406($s0)           ## 00000406
/* 02AF8 80ACCA18 100000DB */  beq     $zero, $zero, .L80ACCD88   
/* 02AFC 80ACCA1C 87A50036 */  lh      $a1, 0x0036($sp)           
.L80ACCA20:
/* 02B00 80ACCA20 92020406 */  lbu     $v0, 0x0406($s0)           ## 00000406
/* 02B04 80ACCA24 18400003 */  blez    $v0, .L80ACCA34            
/* 02B08 80ACCA28 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 02B0C 80ACCA2C 1000008B */  beq     $zero, $zero, .L80ACCC5C   
/* 02B10 80ACCA30 A20E0406 */  sb      $t6, 0x0406($s0)           ## 00000406
.L80ACCA34:
/* 02B14 80ACCA34 92030404 */  lbu     $v1, 0x0404($s0)           ## 00000404
/* 02B18 80ACCA38 54600014 */  bnel    $v1, $zero, .L80ACCA8C     
/* 02B1C 80ACCA3C 92090405 */  lbu     $t1, 0x0405($s0)           ## 00000405
/* 02B20 80ACCA40 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 02B24 80ACCA44 A7A50036 */  sh      $a1, 0x0036($sp)           
/* 02B28 80ACCA48 3C0180AD */  lui     $at, %hi(D_80ACD854)       ## $at = 80AD0000
/* 02B2C 80ACCA4C C432D854 */  lwc1    $f18, %lo(D_80ACD854)($at) 
/* 02B30 80ACCA50 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 02B34 80ACCA54 87A50036 */  lh      $a1, 0x0036($sp)           
/* 02B38 80ACCA58 4612003C */  c.lt.s  $f0, $f18                  
/* 02B3C 80ACCA5C 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 02B40 80ACCA60 2418000C */  addiu   $t8, $zero, 0x000C         ## $t8 = 0000000C
/* 02B44 80ACCA64 332300FF */  andi    $v1, $t9, 0x00FF           ## $v1 = 00000001
/* 02B48 80ACCA68 45000005 */  bc1f    .L80ACCA80                 
/* 02B4C 80ACCA6C 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 02B50 80ACCA70 A20F0404 */  sb      $t7, 0x0404($s0)           ## 00000404
/* 02B54 80ACCA74 A2180405 */  sb      $t8, 0x0405($s0)           ## 00000405
/* 02B58 80ACCA78 10000003 */  beq     $zero, $zero, .L80ACCA88   
/* 02B5C 80ACCA7C 31E300FF */  andi    $v1, $t7, 0x00FF           ## $v1 = 00000004
.L80ACCA80:
/* 02B60 80ACCA80 A2190404 */  sb      $t9, 0x0404($s0)           ## 00000404
/* 02B64 80ACCA84 A2080405 */  sb      $t0, 0x0405($s0)           ## 00000405
.L80ACCA88:
/* 02B68 80ACCA88 92090405 */  lbu     $t1, 0x0405($s0)           ## 00000405
.L80ACCA8C:
/* 02B6C 80ACCA8C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02B70 80ACCA90 252AFFFF */  addiu   $t2, $t1, 0xFFFF           ## $t2 = FFFFFFFF
/* 02B74 80ACCA94 1061000A */  beq     $v1, $at, .L80ACCAC0       
/* 02B78 80ACCA98 A20A0405 */  sb      $t2, 0x0405($s0)           ## 00000405
/* 02B7C 80ACCA9C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02B80 80ACCAA0 10610026 */  beq     $v1, $at, .L80ACCB3C       
/* 02B84 80ACCAA4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 02B88 80ACCAA8 1061002C */  beq     $v1, $at, .L80ACCB5C       
/* 02B8C 80ACCAAC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02B90 80ACCAB0 50610048 */  beql    $v1, $at, .L80ACCBD4       
/* 02B94 80ACCAB4 92040405 */  lbu     $a0, 0x0405($s0)           ## 00000405
/* 02B98 80ACCAB8 10000062 */  beq     $zero, $zero, .L80ACCC44   
/* 02B9C 80ACCABC 960903FC */  lhu     $t1, 0x03FC($s0)           ## 000003FC
.L80ACCAC0:
/* 02BA0 80ACCAC0 92040405 */  lbu     $a0, 0x0405($s0)           ## 00000405
/* 02BA4 80ACCAC4 00042023 */  subu    $a0, $zero, $a0            
/* 02BA8 80ACCAC8 00042300 */  sll     $a0, $a0, 12               
/* 02BAC 80ACCACC 24844000 */  addiu   $a0, $a0, 0x4000           ## $a0 = 00004000
/* 02BB0 80ACCAD0 00042400 */  sll     $a0, $a0, 16               
/* 02BB4 80ACCAD4 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 02BB8 80ACCAD8 00042403 */  sra     $a0, $a0, 16               
/* 02BBC 80ACCADC 3C0180AD */  lui     $at, %hi(D_80ACD858)       ## $at = 80AD0000
/* 02BC0 80ACCAE0 C424D858 */  lwc1    $f4, %lo(D_80ACD858)($at)  
/* 02BC4 80ACCAE4 920C0405 */  lbu     $t4, 0x0405($s0)           ## 00000405
/* 02BC8 80ACCAE8 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 02BCC 80ACCAEC 46040182 */  mul.s   $f6, $f0, $f4              
/* 02BD0 80ACCAF0 4600320D */  trunc.w.s $f8, $f6                   
/* 02BD4 80ACCAF4 44054000 */  mfc1    $a1, $f8                   
/* 02BD8 80ACCAF8 00000000 */  nop
/* 02BDC 80ACCAFC 00052C00 */  sll     $a1, $a1, 16               
/* 02BE0 80ACCB00 1D80004F */  bgtz    $t4, .L80ACCC40            
/* 02BE4 80ACCB04 00052C03 */  sra     $a1, $a1, 16               
/* 02BE8 80ACCB08 44816000 */  mtc1    $at, $f12                  ## $f12 = 15.00
/* 02BEC 80ACCB0C 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 02BF0 80ACCB10 A7A50036 */  sh      $a1, 0x0036($sp)           
/* 02BF4 80ACCB14 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02BF8 80ACCB18 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 02BFC 80ACCB1C 87A50036 */  lh      $a1, 0x0036($sp)           
/* 02C00 80ACCB20 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 02C04 80ACCB24 460A0400 */  add.s   $f16, $f0, $f10            
/* 02C08 80ACCB28 A20F0404 */  sb      $t7, 0x0404($s0)           ## 00000404
/* 02C0C 80ACCB2C 4600848D */  trunc.w.s $f18, $f16                 
/* 02C10 80ACCB30 440E9000 */  mfc1    $t6, $f18                  
/* 02C14 80ACCB34 10000042 */  beq     $zero, $zero, .L80ACCC40   
/* 02C18 80ACCB38 A20E0405 */  sb      $t6, 0x0405($s0)           ## 00000405
.L80ACCB3C:
/* 02C1C 80ACCB3C 92180405 */  lbu     $t8, 0x0405($s0)           ## 00000405
/* 02C20 80ACCB40 24051388 */  addiu   $a1, $zero, 0x1388         ## $a1 = 00001388
/* 02C24 80ACCB44 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 02C28 80ACCB48 1F00003D */  bgtz    $t8, .L80ACCC40            
/* 02C2C 80ACCB4C 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 02C30 80ACCB50 A2190404 */  sb      $t9, 0x0404($s0)           ## 00000404
/* 02C34 80ACCB54 1000003A */  beq     $zero, $zero, .L80ACCC40   
/* 02C38 80ACCB58 A2080405 */  sb      $t0, 0x0405($s0)           ## 00000405
.L80ACCB5C:
/* 02C3C 80ACCB5C 92040405 */  lbu     $a0, 0x0405($s0)           ## 00000405
/* 02C40 80ACCB60 00042300 */  sll     $a0, $a0, 12               
/* 02C44 80ACCB64 00042400 */  sll     $a0, $a0, 16               
/* 02C48 80ACCB68 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 02C4C 80ACCB6C 00042403 */  sra     $a0, $a0, 16               
/* 02C50 80ACCB70 3C0180AD */  lui     $at, %hi(D_80ACD85C)       ## $at = 80AD0000
/* 02C54 80ACCB74 C424D85C */  lwc1    $f4, %lo(D_80ACD85C)($at)  
/* 02C58 80ACCB78 920A0405 */  lbu     $t2, 0x0405($s0)           ## 00000405
/* 02C5C 80ACCB7C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02C60 80ACCB80 46040182 */  mul.s   $f6, $f0, $f4              
/* 02C64 80ACCB84 4600320D */  trunc.w.s $f8, $f6                   
/* 02C68 80ACCB88 44054000 */  mfc1    $a1, $f8                   
/* 02C6C 80ACCB8C 00000000 */  nop
/* 02C70 80ACCB90 00052C00 */  sll     $a1, $a1, 16               
/* 02C74 80ACCB94 1D40002A */  bgtz    $t2, .L80ACCC40            
/* 02C78 80ACCB98 00052C03 */  sra     $a1, $a1, 16               
/* 02C7C 80ACCB9C 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 02C80 80ACCBA0 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 02C84 80ACCBA4 A7A50036 */  sh      $a1, 0x0036($sp)           
/* 02C88 80ACCBA8 4600028D */  trunc.w.s $f10, $f0                  
/* 02C8C 80ACCBAC A2000404 */  sb      $zero, 0x0404($s0)         ## 00000404
/* 02C90 80ACCBB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C94 80ACCBB4 440C5000 */  mfc1    $t4, $f10                  
/* 02C98 80ACCBB8 00000000 */  nop
/* 02C9C 80ACCBBC 258D003C */  addiu   $t5, $t4, 0x003C           ## $t5 = 0000003C
/* 02CA0 80ACCBC0 0C2B29B0 */  jal     func_80ACA6C0              
/* 02CA4 80ACCBC4 A20D0406 */  sb      $t5, 0x0406($s0)           ## 00000406
/* 02CA8 80ACCBC8 1000001D */  beq     $zero, $zero, .L80ACCC40   
/* 02CAC 80ACCBCC 87A50036 */  lh      $a1, 0x0036($sp)           
/* 02CB0 80ACCBD0 92040405 */  lbu     $a0, 0x0405($s0)           ## 00000405
.L80ACCBD4:
/* 02CB4 80ACCBD4 00042340 */  sll     $a0, $a0, 13               
/* 02CB8 80ACCBD8 00042400 */  sll     $a0, $a0, 16               
/* 02CBC 80ACCBDC 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 02CC0 80ACCBE0 00042403 */  sra     $a0, $a0, 16               
/* 02CC4 80ACCBE4 3C0180AD */  lui     $at, %hi(D_80ACD860)       ## $at = 80AD0000
/* 02CC8 80ACCBE8 C430D860 */  lwc1    $f16, %lo(D_80ACD860)($at) 
/* 02CCC 80ACCBEC 920F0405 */  lbu     $t7, 0x0405($s0)           ## 00000405
/* 02CD0 80ACCBF0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02CD4 80ACCBF4 46100482 */  mul.s   $f18, $f0, $f16            
/* 02CD8 80ACCBF8 4600910D */  trunc.w.s $f4, $f18                  
/* 02CDC 80ACCBFC 44052000 */  mfc1    $a1, $f4                   
/* 02CE0 80ACCC00 00000000 */  nop
/* 02CE4 80ACCC04 00052C00 */  sll     $a1, $a1, 16               
/* 02CE8 80ACCC08 1DE0000D */  bgtz    $t7, .L80ACCC40            
/* 02CEC 80ACCC0C 00052C03 */  sra     $a1, $a1, 16               
/* 02CF0 80ACCC10 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 02CF4 80ACCC14 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 02CF8 80ACCC18 A7A50036 */  sh      $a1, 0x0036($sp)           
/* 02CFC 80ACCC1C 4600018D */  trunc.w.s $f6, $f0                   
/* 02D00 80ACCC20 A2000404 */  sb      $zero, 0x0404($s0)         ## 00000404
/* 02D04 80ACCC24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D08 80ACCC28 44193000 */  mfc1    $t9, $f6                   
/* 02D0C 80ACCC2C 00000000 */  nop
/* 02D10 80ACCC30 2728003C */  addiu   $t0, $t9, 0x003C           ## $t0 = 0000003C
/* 02D14 80ACCC34 0C2B29B0 */  jal     func_80ACA6C0              
/* 02D18 80ACCC38 A2080406 */  sb      $t0, 0x0406($s0)           ## 00000406
/* 02D1C 80ACCC3C 87A50036 */  lh      $a1, 0x0036($sp)           
.L80ACCC40:
/* 02D20 80ACCC40 960903FC */  lhu     $t1, 0x03FC($s0)           ## 000003FC
.L80ACCC44:
/* 02D24 80ACCC44 312A0020 */  andi    $t2, $t1, 0x0020           ## $t2 = 00000000
/* 02D28 80ACCC48 51400005 */  beql    $t2, $zero, .L80ACCC60     
/* 02D2C 80ACCC4C 92020409 */  lbu     $v0, 0x0409($s0)           ## 00000409
/* 02D30 80ACCC50 00052823 */  subu    $a1, $zero, $a1            
/* 02D34 80ACCC54 00052C00 */  sll     $a1, $a1, 16               
/* 02D38 80ACCC58 00052C03 */  sra     $a1, $a1, 16               
.L80ACCC5C:
/* 02D3C 80ACCC5C 92020409 */  lbu     $v0, 0x0409($s0)           ## 00000409
.L80ACCC60:
/* 02D40 80ACCC60 18400003 */  blez    $v0, .L80ACCC70            
/* 02D44 80ACCC64 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = FFFFFFFF
/* 02D48 80ACCC68 10000047 */  beq     $zero, $zero, .L80ACCD88   
/* 02D4C 80ACCC6C A20B0409 */  sb      $t3, 0x0409($s0)           ## 00000409
.L80ACCC70:
/* 02D50 80ACCC70 920C0408 */  lbu     $t4, 0x0408($s0)           ## 00000408
/* 02D54 80ACCC74 92020407 */  lbu     $v0, 0x0407($s0)           ## 00000407
/* 02D58 80ACCC78 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02D5C 80ACCC7C 258DFFFF */  addiu   $t5, $t4, 0xFFFF           ## $t5 = FFFFFFFF
/* 02D60 80ACCC80 10400007 */  beq     $v0, $zero, .L80ACCCA0     
/* 02D64 80ACCC84 A20D0408 */  sb      $t5, 0x0408($s0)           ## 00000408
/* 02D68 80ACCC88 1041001F */  beq     $v0, $at, .L80ACCD08       
/* 02D6C 80ACCC8C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02D70 80ACCC90 50410027 */  beql    $v0, $at, .L80ACCD30       
/* 02D74 80ACCC94 92020408 */  lbu     $v0, 0x0408($s0)           ## 00000408
/* 02D78 80ACCC98 1000003C */  beq     $zero, $zero, .L80ACCD8C   
/* 02D7C 80ACCC9C 860A03EE */  lh      $t2, 0x03EE($s0)           ## 000003EE
.L80ACCCA0:
/* 02D80 80ACCCA0 92020408 */  lbu     $v0, 0x0408($s0)           ## 00000408
/* 02D84 80ACCCA4 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 02D88 80ACCCA8 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 02D8C 80ACCCAC 00027023 */  subu    $t6, $zero, $v0            
/* 02D90 80ACCCB0 000E7880 */  sll     $t7, $t6,  2               
/* 02D94 80ACCCB4 01EE7823 */  subu    $t7, $t7, $t6              
/* 02D98 80ACCCB8 000F7900 */  sll     $t7, $t7,  4               
/* 02D9C 80ACCCBC 01EE7823 */  subu    $t7, $t7, $t6              
/* 02DA0 80ACCCC0 000F78C0 */  sll     $t7, $t7,  3               
/* 02DA4 80ACCCC4 01EE7823 */  subu    $t7, $t7, $t6              
/* 02DA8 80ACCCC8 000F7880 */  sll     $t7, $t7,  2               
/* 02DAC 80ACCCCC 25F81770 */  addiu   $t8, $t7, 0x1770           ## $t8 = 00001770
/* 02DB0 80ACCCD0 1C40002D */  bgtz    $v0, .L80ACCD88            
/* 02DB4 80ACCCD4 A61803F2 */  sh      $t8, 0x03F2($s0)           ## 000003F2
/* 02DB8 80ACCCD8 A2190407 */  sb      $t9, 0x0407($s0)           ## 00000407
/* 02DBC 80ACCCDC 44816000 */  mtc1    $at, $f12                  ## $f12 = 15.00
/* 02DC0 80ACCCE0 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 02DC4 80ACCCE4 A7A50036 */  sh      $a1, 0x0036($sp)           
/* 02DC8 80ACCCE8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02DCC 80ACCCEC 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 02DD0 80ACCCF0 87A50036 */  lh      $a1, 0x0036($sp)           
/* 02DD4 80ACCCF4 46080280 */  add.s   $f10, $f0, $f8             
/* 02DD8 80ACCCF8 4600540D */  trunc.w.s $f16, $f10                 
/* 02DDC 80ACCCFC 44098000 */  mfc1    $t1, $f16                  
/* 02DE0 80ACCD00 10000021 */  beq     $zero, $zero, .L80ACCD88   
/* 02DE4 80ACCD04 A2090408 */  sb      $t1, 0x0408($s0)           ## 00000408
.L80ACCD08:
/* 02DE8 80ACCD08 920B0408 */  lbu     $t3, 0x0408($s0)           ## 00000408
/* 02DEC 80ACCD0C 240A1770 */  addiu   $t2, $zero, 0x1770         ## $t2 = 00001770
/* 02DF0 80ACCD10 A60A03F2 */  sh      $t2, 0x03F2($s0)           ## 000003F2
/* 02DF4 80ACCD14 1D60001C */  bgtz    $t3, .L80ACCD88            
/* 02DF8 80ACCD18 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 02DFC 80ACCD1C 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 02E00 80ACCD20 A20C0407 */  sb      $t4, 0x0407($s0)           ## 00000407
/* 02E04 80ACCD24 10000018 */  beq     $zero, $zero, .L80ACCD88   
/* 02E08 80ACCD28 A20D0408 */  sb      $t5, 0x0408($s0)           ## 00000408
/* 02E0C 80ACCD2C 92020408 */  lbu     $v0, 0x0408($s0)           ## 00000408
.L80ACCD30:
/* 02E10 80ACCD30 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 02E14 80ACCD34 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 02E18 80ACCD38 00027080 */  sll     $t6, $v0,  2               
/* 02E1C 80ACCD3C 01C27023 */  subu    $t6, $t6, $v0              
/* 02E20 80ACCD40 000E7100 */  sll     $t6, $t6,  4               
/* 02E24 80ACCD44 01C27023 */  subu    $t6, $t6, $v0              
/* 02E28 80ACCD48 000E70C0 */  sll     $t6, $t6,  3               
/* 02E2C 80ACCD4C 01C27023 */  subu    $t6, $t6, $v0              
/* 02E30 80ACCD50 000E7080 */  sll     $t6, $t6,  2               
/* 02E34 80ACCD54 1C40000C */  bgtz    $v0, .L80ACCD88            
/* 02E38 80ACCD58 A60E03F2 */  sh      $t6, 0x03F2($s0)           ## 000003F2
/* 02E3C 80ACCD5C A2000407 */  sb      $zero, 0x0407($s0)         ## 00000407
/* 02E40 80ACCD60 A20F0408 */  sb      $t7, 0x0408($s0)           ## 00000408
/* 02E44 80ACCD64 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 02E48 80ACCD68 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 02E4C 80ACCD6C A7A50036 */  sh      $a1, 0x0036($sp)           
/* 02E50 80ACCD70 4600048D */  trunc.w.s $f18, $f0                  
/* 02E54 80ACCD74 87A50036 */  lh      $a1, 0x0036($sp)           
/* 02E58 80ACCD78 44199000 */  mfc1    $t9, $f18                  
/* 02E5C 80ACCD7C 00000000 */  nop
/* 02E60 80ACCD80 272800A0 */  addiu   $t0, $t9, 0x00A0           ## $t0 = 000000A0
/* 02E64 80ACCD84 A2080409 */  sb      $t0, 0x0409($s0)           ## 00000409
.L80ACCD88:
/* 02E68 80ACCD88 860A03EE */  lh      $t2, 0x03EE($s0)           ## 000003EE
.L80ACCD8C:
/* 02E6C 80ACCD8C 000A6280 */  sll     $t4, $t2, 10               
/* 02E70 80ACCD90 01856821 */  addu    $t5, $t4, $a1              
/* 02E74 80ACCD94 A60D03F0 */  sh      $t5, 0x03F0($s0)           ## 000003F0
/* 02E78 80ACCD98 860303F0 */  lh      $v1, 0x03F0($s0)           ## 000003F0
/* 02E7C 80ACCD9C 04600003 */  bltz    $v1, .L80ACCDAC            
/* 02E80 80ACCDA0 00031023 */  subu    $v0, $zero, $v1            
/* 02E84 80ACCDA4 10000001 */  beq     $zero, $zero, .L80ACCDAC   
/* 02E88 80ACCDA8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80ACCDAC:
/* 02E8C 80ACCDAC 000270C3 */  sra     $t6, $v0,  3               
/* 02E90 80ACCDB0 1000000E */  beq     $zero, $zero, .L80ACCDEC   
/* 02E94 80ACCDB4 A60E03EC */  sh      $t6, 0x03EC($s0)           ## 000003EC
.L80ACCDB8:
/* 02E98 80ACCDB8 11E00004 */  beq     $t7, $zero, .L80ACCDCC     
/* 02E9C 80ACCDBC A60003F2 */  sh      $zero, 0x03F2($s0)         ## 000003F2
/* 02EA0 80ACCDC0 24188000 */  addiu   $t8, $zero, 0x8000         ## $t8 = FFFF8000
/* 02EA4 80ACCDC4 10000002 */  beq     $zero, $zero, .L80ACCDD0   
/* 02EA8 80ACCDC8 A61803F0 */  sh      $t8, 0x03F0($s0)           ## 000003F0
.L80ACCDCC:
/* 02EAC 80ACCDCC A60003F0 */  sh      $zero, 0x03F0($s0)         ## 000003F0
.L80ACCDD0:
/* 02EB0 80ACCDD0 860303F0 */  lh      $v1, 0x03F0($s0)           ## 000003F0
/* 02EB4 80ACCDD4 04600003 */  bltz    $v1, .L80ACCDE4            
/* 02EB8 80ACCDD8 00031023 */  subu    $v0, $zero, $v1            
/* 02EBC 80ACCDDC 10000001 */  beq     $zero, $zero, .L80ACCDE4   
/* 02EC0 80ACCDE0 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80ACCDE4:
/* 02EC4 80ACCDE4 0002C8C3 */  sra     $t9, $v0,  3               
/* 02EC8 80ACCDE8 A61903EC */  sh      $t9, 0x03EC($s0)           ## 000003EC
.L80ACCDEC:
/* 02ECC 80ACCDEC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ACCDF0:
/* 02ED0 80ACCDF0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02ED4 80ACCDF4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 02ED8 80ACCDF8 03E00008 */  jr      $ra                        
/* 02EDC 80ACCDFC 00000000 */  nop
