glabel func_80801614
/* 00A84 80801614 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00A88 80801618 AFB30028 */  sw      $s3, 0x0028($sp)           
/* 00A8C 8080161C 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 00A90 80801620 AFB20024 */  sw      $s2, 0x0024($sp)           
/* 00A94 80801624 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00A98 80801628 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00A9C 8080162C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00AA0 80801630 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00AA4 80801634 AFB70038 */  sw      $s7, 0x0038($sp)           
/* 00AA8 80801638 AFB60034 */  sw      $s6, 0x0034($sp)           
/* 00AAC 8080163C AFB50030 */  sw      $s5, 0x0030($sp)           
/* 00AB0 80801640 AFB4002C */  sw      $s4, 0x002C($sp)           
/* 00AB4 80801644 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00AB8 80801648 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00ABC 8080164C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00AC0 80801650 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 00AC4 80801654 2406009B */  addiu   $a2, $zero, 0x009B         ## $a2 = 0000009B
/* 00AC8 80801658 0C03ECEB */  jal     GfxPrint_SetColor              
/* 00ACC 8080165C 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 00AD0 80801660 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00AD4 80801664 2405000C */  addiu   $a1, $zero, 0x000C         ## $a1 = 0000000C
/* 00AD8 80801668 0C03ED07 */  jal     GfxPrint_SetPos              
/* 00ADC 8080166C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00AE0 80801670 3C058080 */  lui     $a1, %hi(D_808032D8)       ## $a1 = 80800000
/* 00AE4 80801674 24A532D8 */  addiu   $a1, $a1, %lo(D_808032D8)  ## $a1 = 808032D8
/* 00AE8 80801678 0C03EF2D */  jal     GfxPrint_Printf              
/* 00AEC 8080167C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00AF0 80801680 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00AF4 80801684 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00AF8 80801688 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00AFC 8080168C 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 00B00 80801690 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00B04 80801694 0C03ECEB */  jal     GfxPrint_SetColor              
/* 00B08 80801698 240700FF */  addiu   $a3, $zero, 0x00FF         ## $a3 = 000000FF
/* 00B0C 8080169C 3C168080 */  lui     $s6, %hi(D_808032F8)       ## $s6 = 80800000
/* 00B10 808016A0 3C158080 */  lui     $s5, %hi(D_808032EC)       ## $s5 = 80800000
/* 00B14 808016A4 26B532EC */  addiu   $s5, $s5, %lo(D_808032EC)  ## $s5 = 808032EC
/* 00B18 808016A8 26D632F8 */  addiu   $s6, $s6, %lo(D_808032F8)  ## $s6 = 808032F8
/* 00B1C 808016AC 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00B20 808016B0 24170014 */  addiu   $s7, $zero, 0x0014         ## $s7 = 00000014
/* 00B24 808016B4 2414000C */  addiu   $s4, $zero, 0x000C         ## $s4 = 0000000C
/* 00B28 808016B8 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
.L808016BC:
/* 00B2C 808016BC 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 00B30 808016C0 0C03ED07 */  jal     GfxPrint_SetPos              
/* 00B34 808016C4 26060004 */  addiu   $a2, $s0, 0x0004           ## $a2 = 00000004
/* 00B38 808016C8 8E78020C */  lw      $t8, 0x020C($s3)           ## 0000020C
/* 00B3C 808016CC 8E6201D0 */  lw      $v0, 0x01D0($s3)           ## 000001D0
/* 00B40 808016D0 8E6901D8 */  lw      $t1, 0x01D8($s3)           ## 000001D8
/* 00B44 808016D4 0310C821 */  addu    $t9, $t8, $s0              
/* 00B48 808016D8 03224021 */  addu    $t0, $t9, $v0              
/* 00B4C 808016DC 0102001A */  div     $zero, $t0, $v0            
/* 00B50 808016E0 00008810 */  mfhi    $s1                        
/* 00B54 808016E4 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00B58 808016E8 14400002 */  bne     $v0, $zero, .L808016F4     
/* 00B5C 808016EC 00000000 */  nop
/* 00B60 808016F0 0007000D */  break 7
.L808016F4:
/* 00B64 808016F4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00B68 808016F8 14410004 */  bne     $v0, $at, .L8080170C       
/* 00B6C 808016FC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00B70 80801700 15010002 */  bne     $t0, $at, .L8080170C       
/* 00B74 80801704 00000000 */  nop
/* 00B78 80801708 0006000D */  break 6
.L8080170C:
/* 00B7C 8080170C 240500C8 */  addiu   $a1, $zero, 0x00C8         ## $a1 = 000000C8
/* 00B80 80801710 1629000A */  bne     $s1, $t1, .L8080173C       
/* 00B84 80801714 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 00B88 80801718 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 00B8C 8080171C AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00B90 80801720 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00B94 80801724 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 00B98 80801728 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00B9C 8080172C 0C03ECEB */  jal     GfxPrint_SetColor              
/* 00BA0 80801730 24070014 */  addiu   $a3, $zero, 0x0014         ## $a3 = 00000014
/* 00BA4 80801734 10000005 */  beq     $zero, $zero, .L8080174C   
/* 00BA8 80801738 00000000 */  nop
.L8080173C:
/* 00BAC 8080173C 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 00BB0 80801740 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 00BB4 80801744 0C03ECEB */  jal     GfxPrint_SetColor              
/* 00BB8 80801748 24070037 */  addiu   $a3, $zero, 0x0037         ## $a3 = 00000037
.L8080174C:
/* 00BBC 8080174C 02340019 */  multu   $s1, $s4                   
/* 00BC0 80801750 8E6C01D4 */  lw      $t4, 0x01D4($s3)           ## 000001D4
/* 00BC4 80801754 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00BC8 80801758 00006812 */  mflo    $t5                        
/* 00BCC 8080175C 018D7021 */  addu    $t6, $t4, $t5              
/* 00BD0 80801760 8DC60000 */  lw      $a2, 0x0000($t6)           ## 00000000
/* 00BD4 80801764 14C00002 */  bne     $a2, $zero, .L80801770     
/* 00BD8 80801768 00000000 */  nop
/* 00BDC 8080176C 02A03025 */  or      $a2, $s5, $zero            ## $a2 = 808032EC
.L80801770:
/* 00BE0 80801770 0C03EF2D */  jal     GfxPrint_Printf              
/* 00BE4 80801774 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 808032F8
/* 00BE8 80801778 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00BEC 8080177C 5617FFCF */  bnel    $s0, $s7, .L808016BC       
/* 00BF0 80801780 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00BF4 80801784 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00BF8 80801788 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00BFC 8080178C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00C00 80801790 2405009B */  addiu   $a1, $zero, 0x009B         ## $a1 = 0000009B
/* 00C04 80801794 24060037 */  addiu   $a2, $zero, 0x0037         ## $a2 = 00000037
/* 00C08 80801798 0C03ECEB */  jal     GfxPrint_SetColor              
/* 00C0C 8080179C 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 00C10 808017A0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00C14 808017A4 24050014 */  addiu   $a1, $zero, 0x0014         ## $a1 = 00000014
/* 00C18 808017A8 0C03ED07 */  jal     GfxPrint_SetPos              
/* 00C1C 808017AC 2406001A */  addiu   $a2, $zero, 0x001A         ## $a2 = 0000001A
/* 00C20 808017B0 3C058080 */  lui     $a1, %hi(D_808032FC)       ## $a1 = 80800000
/* 00C24 808017B4 24A532FC */  addiu   $a1, $a1, %lo(D_808032FC)  ## $a1 = 808032FC
/* 00C28 808017B8 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00C2C 808017BC 0C03EF2D */  jal     GfxPrint_Printf              
/* 00C30 808017C0 8E660208 */  lw      $a2, 0x0208($s3)           ## 00000208
/* 00C34 808017C4 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00C38 808017C8 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00C3C 808017CC 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00C40 808017D0 8FB20024 */  lw      $s2, 0x0024($sp)           
/* 00C44 808017D4 8FB30028 */  lw      $s3, 0x0028($sp)           
/* 00C48 808017D8 8FB4002C */  lw      $s4, 0x002C($sp)           
/* 00C4C 808017DC 8FB50030 */  lw      $s5, 0x0030($sp)           
/* 00C50 808017E0 8FB60034 */  lw      $s6, 0x0034($sp)           
/* 00C54 808017E4 8FB70038 */  lw      $s7, 0x0038($sp)           
/* 00C58 808017E8 03E00008 */  jr      $ra                        
/* 00C5C 808017EC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
