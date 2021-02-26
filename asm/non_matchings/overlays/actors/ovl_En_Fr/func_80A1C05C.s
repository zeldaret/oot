glabel func_80A1C05C
/* 016BC 80A1C05C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 016C0 80A1C060 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 016C4 80A1C064 8C82036C */  lw      $v0, 0x036C($a0)           ## 0000036C
/* 016C8 80A1C068 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 016CC 80A1C06C 28410030 */  slti    $at, $v0, 0x0030           
/* 016D0 80A1C070 1020000A */  beq     $at, $zero, .L80A1C09C     
/* 016D4 80A1C074 304E0003 */  andi    $t6, $v0, 0x0003           ## $t6 = 00000000
/* 016D8 80A1C078 15C00040 */  bne     $t6, $zero, .L80A1C17C     
/* 016DC 80A1C07C 00027883 */  sra     $t7, $v0,  2               
/* 016E0 80A1C080 31F80007 */  andi    $t8, $t7, 0x0007           ## $t8 = 00000000
/* 016E4 80A1C084 3C0580A2 */  lui     $a1, %hi(D_80A1D0EC)       ## $a1 = 80A20000
/* 016E8 80A1C088 00B82821 */  addu    $a1, $a1, $t8              
/* 016EC 80A1C08C 0C286F05 */  jal     func_80A1BC14              
/* 016F0 80A1C090 90A5D0EC */  lbu     $a1, %lo(D_80A1D0EC)($a1)  
/* 016F4 80A1C094 1000003A */  beq     $zero, $zero, .L80A1C180   
/* 016F8 80A1C098 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A1C09C:
/* 016FC 80A1C09C 90E20382 */  lbu     $v0, 0x0382($a3)           ## 00000382
/* 01700 80A1C0A0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01704 80A1C0A4 3C0980A2 */  lui     $t1, %hi(D_80A1D008)       ## $t1 = 80A20000
/* 01708 80A1C0A8 14410008 */  bne     $v0, $at, .L80A1C0CC       
/* 0170C 80A1C0AC 00024040 */  sll     $t0, $v0,  1               
/* 01710 80A1C0B0 241940AA */  addiu   $t9, $zero, 0x40AA         ## $t9 = 000040AA
/* 01714 80A1C0B4 A4F9010E */  sh      $t9, 0x010E($a3)           ## 0000010E
/* 01718 80A1C0B8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0171C 80A1C0BC 0C2871C6 */  jal     func_80A1C718              
/* 01720 80A1C0C0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01724 80A1C0C4 1000002E */  beq     $zero, $zero, .L80A1C180   
/* 01728 80A1C0C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A1C0CC:
/* 0172C 80A1C0CC 01284821 */  addu    $t1, $t1, $t0              
/* 01730 80A1C0D0 3C0A8016 */  lui     $t2, %hi(gSaveContext+0xeee)
/* 01734 80A1C0D4 954AF54E */  lhu     $t2, %lo(gSaveContext+0xeee)($t2)
/* 01738 80A1C0D8 9529D008 */  lhu     $t1, %lo(D_80A1D008)($t1)  
/* 0173C 80A1C0DC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01740 80A1C0E0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01744 80A1C0E4 012A5824 */  and     $t3, $t1, $t2              
/* 01748 80A1C0E8 15600022 */  bne     $t3, $zero, .L80A1C174     
/* 0174C 80A1C0EC 240940A9 */  addiu   $t1, $zero, 0x40A9         ## $t1 = 000040A9
/* 01750 80A1C0F0 00026080 */  sll     $t4, $v0,  2               
/* 01754 80A1C0F4 3C0D80A2 */  lui     $t5, %hi(D_80A1D020)       ## $t5 = 80A20000
/* 01758 80A1C0F8 01AC6821 */  addu    $t5, $t5, $t4              
/* 0175C 80A1C0FC 8DADD020 */  lw      $t5, %lo(D_80A1D020)($t5)  
/* 01760 80A1C100 3C0680A2 */  lui     $a2, %hi(D_80A1CFF4)       ## $a2 = 80A20000
/* 01764 80A1C104 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 01768 80A1C108 000D7080 */  sll     $t6, $t5,  2               
/* 0176C 80A1C10C 00CE3021 */  addu    $a2, $a2, $t6              
/* 01770 80A1C110 8CC6CFF4 */  lw      $a2, %lo(D_80A1CFF4)($a2)  
/* 01774 80A1C114 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 01778 80A1C118 0C01E221 */  jal     func_80078884              
/* 0177C 80A1C11C AFA6001C */  sw      $a2, 0x001C($sp)           
/* 01780 80A1C120 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 01784 80A1C124 3C0F80A2 */  lui     $t7, %hi(func_80A1B524)    ## $t7 = 80A20000
/* 01788 80A1C128 25EFB524 */  addiu   $t7, $t7, %lo(func_80A1B524) ## $t7 = 80A1B524
/* 0178C 80A1C12C 8CD80354 */  lw      $t8, 0x0354($a2)           ## 00000354
/* 01790 80A1C130 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 01794 80A1C134 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 01798 80A1C138 15F8000C */  bne     $t7, $t8, .L80A1C16C       
/* 0179C 80A1C13C 24080030 */  addiu   $t0, $zero, 0x0030         ## $t0 = 00000030
/* 017A0 80A1C140 A0C20379 */  sb      $v0, 0x0379($a2)           ## 00000379
/* 017A4 80A1C144 A0C2037D */  sb      $v0, 0x037D($a2)           ## 0000037D
/* 017A8 80A1C148 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 017AC 80A1C14C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 017B0 80A1C150 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 017B4 80A1C154 240528CC */  addiu   $a1, $zero, 0x28CC         ## $a1 = 000028CC
/* 017B8 80A1C158 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 017BC 80A1C15C 3C1980A2 */  lui     $t9, %hi(func_80A1C18C)    ## $t9 = 80A20000
/* 017C0 80A1C160 2739C18C */  addiu   $t9, $t9, %lo(func_80A1C18C) ## $t9 = 80A1C18C
/* 017C4 80A1C164 10000005 */  beq     $zero, $zero, .L80A1C17C   
/* 017C8 80A1C168 ACF90354 */  sw      $t9, 0x0354($a3)           ## 00000354
.L80A1C16C:
/* 017CC 80A1C16C 10000003 */  beq     $zero, $zero, .L80A1C17C   
/* 017D0 80A1C170 ACE8036C */  sw      $t0, 0x036C($a3)           ## 0000036C
.L80A1C174:
/* 017D4 80A1C174 0C2871C6 */  jal     func_80A1C718              
/* 017D8 80A1C178 A4E9010E */  sh      $t1, 0x010E($a3)           ## 0000010E
.L80A1C17C:
/* 017DC 80A1C17C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A1C180:
/* 017E0 80A1C180 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 017E4 80A1C184 03E00008 */  jr      $ra                        
/* 017E8 80A1C188 00000000 */  nop
