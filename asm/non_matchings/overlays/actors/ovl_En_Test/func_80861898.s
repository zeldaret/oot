glabel func_80861898
/* 02248 80861898 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0224C 8086189C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02250 808618A0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02254 808618A4 C48001A0 */  lwc1    $f0, 0x01A0($a0)           ## 000001A0
/* 02258 808618A8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0225C 808618AC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02260 808618B0 4600018D */  trunc.w.s $f6, $f0                   
/* 02264 808618B4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02268 808618B8 24053839 */  addiu   $a1, $zero, 0x3839         ## $a1 = 00003839
/* 0226C 808618BC E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 02270 808618C0 440F3000 */  mfc1    $t7, $f6                   
/* 02274 808618C4 00000000 */  nop
/* 02278 808618C8 55E10006 */  bnel    $t7, $at, .L808618E4       
/* 0227C 808618CC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02280 808618D0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02284 808618D4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02288 808618D8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0228C 808618DC C4C001A0 */  lwc1    $f0, 0x01A0($a2)           ## 000001A0
/* 02290 808618E0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L808618E4:
/* 02294 808618E4 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 02298 808618E8 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0229C 808618EC 24C40188 */  addiu   $a0, $a2, 0x0188           ## $a0 = 00000188
/* 022A0 808618F0 4600403C */  c.lt.s  $f8, $f0                   
/* 022A4 808618F4 00000000 */  nop
/* 022A8 808618F8 4502000A */  bc1fl   .L80861924                 
/* 022AC 808618FC A0C00808 */  sb      $zero, 0x0808($a2)         ## 00000808
/* 022B0 80861900 44815000 */  mtc1    $at, $f10                  ## $f10 = 8.00
/* 022B4 80861904 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 022B8 80861908 460A003C */  c.lt.s  $f0, $f10                  
/* 022BC 8086190C 00000000 */  nop
/* 022C0 80861910 45020004 */  bc1fl   .L80861924                 
/* 022C4 80861914 A0C00808 */  sb      $zero, 0x0808($a2)         ## 00000808
/* 022C8 80861918 10000002 */  beq     $zero, $zero, .L80861924   
/* 022CC 8086191C A0D80808 */  sb      $t8, 0x0808($a2)           ## 00000808
/* 022D0 80861920 A0C00808 */  sb      $zero, 0x0808($a2)         ## 00000808
.L80861924:
/* 022D4 80861924 0C02927F */  jal     SkelAnime_Update
              
/* 022D8 80861928 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 022DC 8086192C 10400003 */  beq     $v0, $zero, .L8086193C     
/* 022E0 80861930 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 022E4 80861934 0C218506 */  jal     func_80861418              
/* 022E8 80861938 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
.L8086193C:
/* 022EC 8086193C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 022F0 80861940 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 022F4 80861944 03E00008 */  jr      $ra                        
/* 022F8 80861948 00000000 */  nop
