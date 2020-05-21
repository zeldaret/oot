.rdata
glabel D_8088CDBC
    .asciz "../z_bg_hidan_rsekizou.c"
    .balign 4

glabel D_8088CDD8
    .asciz "../z_bg_hidan_rsekizou.c"
    .balign 4

glabel D_8088CDF4
    .asciz "../z_bg_hidan_rsekizou.c"
    .balign 4

.text
glabel BgHidanRsekizou_Draw
/* 0083C 8088CA3C 27BDFF58 */  addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
/* 00840 8088CA40 AFB50030 */  sw      $s5, 0x0030($sp)           
/* 00844 8088CA44 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 00848 8088CA48 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0084C 8088CA4C AFB4002C */  sw      $s4, 0x002C($sp)           
/* 00850 8088CA50 AFB30028 */  sw      $s3, 0x0028($sp)           
/* 00854 8088CA54 AFB20024 */  sw      $s2, 0x0024($sp)           
/* 00858 8088CA58 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 0085C 8088CA5C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00860 8088CA60 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00864 8088CA64 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 00868 8088CA68 3C068089 */  lui     $a2, %hi(D_8088CDBC)       ## $a2 = 80890000
/* 0086C 8088CA6C 24C6CDBC */  addiu   $a2, $a2, %lo(D_8088CDBC)  ## $a2 = 8088CDBC
/* 00870 8088CA70 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFA0
/* 00874 8088CA74 24070234 */  addiu   $a3, $zero, 0x0234         ## $a3 = 00000234
/* 00878 8088CA78 0C031AB1 */  jal     Graph_OpenDisps              
/* 0087C 8088CA7C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00880 8088CA80 0C024F46 */  jal     func_80093D18              
/* 00884 8088CA84 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 00888 8088CA88 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 0088C 8088CA8C 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 00890 8088CA90 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 00894 8088CA94 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00898 8088CA98 AE2E02C0 */  sw      $t6, 0x02C0($s1)           ## 000002C0
/* 0089C 8088CA9C 3C058089 */  lui     $a1, %hi(D_8088CDD8)       ## $a1 = 80890000
/* 008A0 8088CAA0 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 008A4 8088CAA4 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 008A8 8088CAA8 24A5CDD8 */  addiu   $a1, $a1, %lo(D_8088CDD8)  ## $a1 = 8088CDD8
/* 008AC 8088CAAC 24060238 */  addiu   $a2, $zero, 0x0238         ## $a2 = 00000238
/* 008B0 8088CAB0 0C0346A2 */  jal     Matrix_NewMtx              
/* 008B4 8088CAB4 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 008B8 8088CAB8 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 008BC 8088CABC 8E2202C0 */  lw      $v0, 0x02C0($s1)           ## 000002C0
/* 008C0 8088CAC0 3C080601 */  lui     $t0, 0x0601                ## $t0 = 06010000
/* 008C4 8088CAC4 2508AD00 */  addiu   $t0, $t0, 0xAD00           ## $t0 = 0600AD00
/* 008C8 8088CAC8 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 008CC 8088CACC AE3802C0 */  sw      $t8, 0x02C0($s1)           ## 000002C0
/* 008D0 8088CAD0 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 008D4 8088CAD4 27B3005C */  addiu   $s3, $sp, 0x005C           ## $s3 = FFFFFFB4
/* 008D8 8088CAD8 3C058013 */  lui     $a1, %hi(gMtxFClear)
/* 008DC 8088CADC 24A5DB60 */  addiu   $a1, %lo(gMtxFClear)
/* 008E0 8088CAE0 02602025 */  or      $a0, $s3, $zero            ## $a0 = FFFFFFB4
/* 008E4 8088CAE4 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 008E8 8088CAE8 0C0346EA */  jal     Matrix_MtxFCopy              
/* 008EC 8088CAEC AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 008F0 8088CAF0 8E2402D0 */  lw      $a0, 0x02D0($s1)           ## 000002D0
/* 008F4 8088CAF4 0C024DDD */  jal     Gfx_CallSetupDL              
/* 008F8 8088CAF8 24050014 */  addiu   $a1, $zero, 0x0014         ## $a1 = 00000014
/* 008FC 8088CAFC AE2202D0 */  sw      $v0, 0x02D0($s1)           ## 000002D0
/* 00900 8088CB00 86A907A0 */  lh      $t1, 0x07A0($s5)           ## 000007A0
/* 00904 8088CB04 00095080 */  sll     $t2, $t1,  2               
/* 00908 8088CB08 02AA5821 */  addu    $t3, $s5, $t2              
/* 0090C 8088CB0C 0C016A7D */  jal     func_8005A9F4              
/* 00910 8088CB10 8D640790 */  lw      $a0, 0x0790($t3)           ## 00000790
/* 00914 8088CB14 868C00B6 */  lh      $t4, 0x00B6($s4)           ## 000000B6
/* 00918 8088CB18 24100003 */  addiu   $s0, $zero, 0x0003         ## $s0 = 00000003
/* 0091C 8088CB1C 004C6823 */  subu    $t5, $v0, $t4              
/* 00920 8088CB20 25AED194 */  addiu   $t6, $t5, 0xD194           ## $t6 = FFFFD194
/* 00924 8088CB24 000E7C00 */  sll     $t7, $t6, 16               
/* 00928 8088CB28 000FC403 */  sra     $t8, $t7, 16               
/* 0092C 8088CB2C 0700001F */  bltz    $t8, .L8088CBAC            
/* 00930 8088CB30 00000000 */  nop
/* 00934 8088CB34 24100003 */  addiu   $s0, $zero, 0x0003         ## $s0 = 00000003
.L8088CB38:
/* 00938 8088CB38 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0093C 8088CB3C 8E3902D0 */  lw      $t9, 0x02D0($s1)           ## 000002D0
/* 00940 8088CB40 00103400 */  sll     $a2, $s0, 16               
/* 00944 8088CB44 00063403 */  sra     $a2, $a2, 16               
/* 00948 8088CB48 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 0094C 8088CB4C 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 00950 8088CB50 02603825 */  or      $a3, $s3, $zero            ## $a3 = FFFFFFB4
/* 00954 8088CB54 0C2231C3 */  jal     func_8088C70C              
/* 00958 8088CB58 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 0095C 8088CB5C 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000002
/* 00960 8088CB60 0601FFF5 */  bgez    $s0, .L8088CB38            
/* 00964 8088CB64 AE2202D0 */  sw      $v0, 0x02D0($s1)           ## 000002D0
/* 00968 8088CB68 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 0096C 8088CB6C 24120004 */  addiu   $s2, $zero, 0x0004         ## $s2 = 00000004
.L8088CB70:
/* 00970 8088CB70 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00974 8088CB74 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00978 8088CB78 8E2902D0 */  lw      $t1, 0x02D0($s1)           ## 000002D0
/* 0097C 8088CB7C 00103400 */  sll     $a2, $s0, 16               
/* 00980 8088CB80 00063403 */  sra     $a2, $a2, 16               
/* 00984 8088CB84 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00988 8088CB88 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 0098C 8088CB8C 02603825 */  or      $a3, $s3, $zero            ## $a3 = FFFFFFB4
/* 00990 8088CB90 0C2231C3 */  jal     func_8088C70C              
/* 00994 8088CB94 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00998 8088CB98 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0099C 8088CB9C 1612FFF4 */  bne     $s0, $s2, .L8088CB70       
/* 009A0 8088CBA0 AE2202D0 */  sw      $v0, 0x02D0($s1)           ## 000002D0
/* 009A4 8088CBA4 1000001C */  beq     $zero, $zero, .L8088CC18   
/* 009A8 8088CBA8 00000000 */  nop
.L8088CBAC:
/* 009AC 8088CBAC 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 009B0 8088CBB0 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 009B4 8088CBB4 8E2B02D0 */  lw      $t3, 0x02D0($s1)           ## 000002D0
/* 009B8 8088CBB8 00103400 */  sll     $a2, $s0, 16               
/* 009BC 8088CBBC 00063403 */  sra     $a2, $a2, 16               
/* 009C0 8088CBC0 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 009C4 8088CBC4 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 009C8 8088CBC8 02603825 */  or      $a3, $s3, $zero            ## $a3 = FFFFFFB4
/* 009CC 8088CBCC 0C2231C3 */  jal     func_8088C70C              
/* 009D0 8088CBD0 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 009D4 8088CBD4 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000000
/* 009D8 8088CBD8 0601FFF4 */  bgez    $s0, .L8088CBAC            
/* 009DC 8088CBDC AE2202D0 */  sw      $v0, 0x02D0($s1)           ## 000002D0
/* 009E0 8088CBE0 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 009E4 8088CBE4 24120004 */  addiu   $s2, $zero, 0x0004         ## $s2 = 00000004
.L8088CBE8:
/* 009E8 8088CBE8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 009EC 8088CBEC 8E2C02D0 */  lw      $t4, 0x02D0($s1)           ## 000002D0
/* 009F0 8088CBF0 00103400 */  sll     $a2, $s0, 16               
/* 009F4 8088CBF4 00063403 */  sra     $a2, $a2, 16               
/* 009F8 8088CBF8 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 009FC 8088CBFC 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 00A00 8088CC00 02603825 */  or      $a3, $s3, $zero            ## $a3 = FFFFFFB4
/* 00A04 8088CC04 0C2231C3 */  jal     func_8088C70C              
/* 00A08 8088CC08 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00A0C 8088CC0C 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00A10 8088CC10 1612FFF5 */  bne     $s0, $s2, .L8088CBE8       
/* 00A14 8088CC14 AE2202D0 */  sw      $v0, 0x02D0($s1)           ## 000002D0
.L8088CC18:
/* 00A18 8088CC18 3C068089 */  lui     $a2, %hi(D_8088CDF4)       ## $a2 = 80890000
/* 00A1C 8088CC1C 24C6CDF4 */  addiu   $a2, $a2, %lo(D_8088CDF4)  ## $a2 = 8088CDF4
/* 00A20 8088CC20 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFA0
/* 00A24 8088CC24 8EA50000 */  lw      $a1, 0x0000($s5)           ## 00000000
/* 00A28 8088CC28 0C031AD5 */  jal     Graph_CloseDisps              
/* 00A2C 8088CC2C 24070258 */  addiu   $a3, $zero, 0x0258         ## $a3 = 00000258
/* 00A30 8088CC30 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00A34 8088CC34 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00A38 8088CC38 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00A3C 8088CC3C 8FB20024 */  lw      $s2, 0x0024($sp)           
/* 00A40 8088CC40 8FB30028 */  lw      $s3, 0x0028($sp)           
/* 00A44 8088CC44 8FB4002C */  lw      $s4, 0x002C($sp)           
/* 00A48 8088CC48 8FB50030 */  lw      $s5, 0x0030($sp)           
/* 00A4C 8088CC4C 03E00008 */  jr      $ra                        
/* 00A50 8088CC50 27BD00A8 */  addiu   $sp, $sp, 0x00A8           ## $sp = 00000000
/* 00A54 8088CC54 00000000 */  nop
/* 00A58 8088CC58 00000000 */  nop
/* 00A5C 8088CC5C 00000000 */  nop
