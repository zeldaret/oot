glabel BgSpot02Objects_Init
/* 00000 808AC660 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 808AC664 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 808AC668 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 808AC66C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00010 808AC670 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 808AC674 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00018 808AC678 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0001C 808AC67C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00020 808AC680 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 00024 808AC684 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00028 808AC688 332800FF */  andi    $t0, $t9, 0x00FF           ## $t0 = 00000000
/* 0002C 808AC68C 3109FFFF */  andi    $t1, $t0, 0xFFFF           ## $t1 = 00000000
/* 00030 808AC690 2D210005 */  sltiu   $at, $t1, 0x0005           
/* 00034 808AC694 000EC203 */  sra     $t8, $t6,  8               
/* 00038 808AC698 A218016B */  sb      $t8, 0x016B($s0)           ## 0000016B
/* 0003C 808AC69C 10200086 */  beq     $at, $zero, .L808AC8B8     
/* 00040 808AC6A0 A608001C */  sh      $t0, 0x001C($s0)           ## 0000001C
/* 00044 808AC6A4 00094880 */  sll     $t1, $t1,  2               
/* 00048 808AC6A8 3C01808B */  lui     $at, %hi(jtbl_808AD968)       ## $at = 808B0000
/* 0004C 808AC6AC 00290821 */  addu    $at, $at, $t1              
/* 00050 808AC6B0 8C29D968 */  lw      $t1, %lo(jtbl_808AD968)($at)  
/* 00054 808AC6B4 01200008 */  jr      $t1                        
/* 00058 808AC6B8 00000000 */  nop
glabel L808AC6BC
/* 0005C 808AC6BC 3C05808B */  lui     $a1, %hi(D_808AD8A0)       ## $a1 = 808B0000
/* 00060 808AC6C0 24A5D8A0 */  addiu   $a1, $a1, %lo(D_808AD8A0)  ## $a1 = 808AD8A0
/* 00064 808AC6C4 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00068 808AC6C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0006C 808AC6CC 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00070 808AC6D0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00074 808AC6D4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00078 808AC6D8 14400016 */  bne     $v0, $zero, .L808AC734     
/* 0007C 808AC6DC 00000000 */  nop
/* 00080 808AC6E0 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00084 808AC6E4 9205016B */  lbu     $a1, 0x016B($s0)           ## 0000016B
/* 00088 808AC6E8 1040000A */  beq     $v0, $zero, .L808AC714     
/* 0008C 808AC6EC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00090 808AC6F0 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00094 808AC6F4 44813000 */  mtc1    $at, $f6                   ## $f6 = 255.00
/* 00098 808AC6F8 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 0009C 808AC6FC 3C0A808B */  lui     $t2, %hi(func_808AC8FC)    ## $t2 = 808B0000
/* 000A0 808AC700 254AC8FC */  addiu   $t2, $t2, %lo(func_808AC8FC) ## $t2 = 808AC8FC
/* 000A4 808AC704 46062200 */  add.s   $f8, $f4, $f6              
/* 000A8 808AC708 AE0A0164 */  sw      $t2, 0x0164($s0)           ## 00000164
/* 000AC 808AC70C 10000004 */  beq     $zero, $zero, .L808AC720   
/* 000B0 808AC710 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
.L808AC714:
/* 000B4 808AC714 3C0B808B */  lui     $t3, %hi(func_808ACAFC)    ## $t3 = 808B0000
/* 000B8 808AC718 256BCAFC */  addiu   $t3, $t3, %lo(func_808ACAFC) ## $t3 = 808ACAFC
/* 000BC 808AC71C AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
.L808AC720:
/* 000C0 808AC720 24842BA4 */  addiu   $a0, $a0, 0x2BA4           ## $a0 = 06012BA4
/* 000C4 808AC724 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 000C8 808AC728 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 000CC 808AC72C 1000001E */  beq     $zero, $zero, .L808AC7A8   
/* 000D0 808AC730 8FA40034 */  lw      $a0, 0x0034($sp)           
.L808AC734:
/* 000D4 808AC734 1441000D */  bne     $v0, $at, .L808AC76C       
/* 000D8 808AC738 8FAF0034 */  lw      $t7, 0x0034($sp)           
/* 000DC 808AC73C 3C0C808B */  lui     $t4, %hi(func_808AC8FC)    ## $t4 = 808B0000
/* 000E0 808AC740 258CC8FC */  addiu   $t4, $t4, %lo(func_808AC8FC) ## $t4 = 808AC8FC
/* 000E4 808AC744 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 000E8 808AC748 AE0C0164 */  sw      $t4, 0x0164($s0)           ## 00000164
/* 000EC 808AC74C 248428D8 */  addiu   $a0, $a0, 0x28D8           ## $a0 = 060128D8
/* 000F0 808AC750 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 000F4 808AC754 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 000F8 808AC758 8E0D0004 */  lw      $t5, 0x0004($s0)           ## 00000004
/* 000FC 808AC75C 3C010040 */  lui     $at, 0x0040                ## $at = 00400000
/* 00100 808AC760 01A17025 */  or      $t6, $t5, $at              ## $t6 = 00400000
/* 00104 808AC764 1000000F */  beq     $zero, $zero, .L808AC7A4   
/* 00108 808AC768 AE0E0004 */  sw      $t6, 0x0004($s0)           ## 00000004
.L808AC76C:
/* 0010C 808AC76C 85F800A4 */  lh      $t8, 0x00A4($t7)           ## 000000A4
/* 00110 808AC770 24010053 */  addiu   $at, $zero, 0x0053         ## $at = 00000053
/* 00114 808AC774 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00118 808AC778 17010005 */  bne     $t8, $at, .L808AC790       
/* 0011C 808AC77C 248433EC */  addiu   $a0, $a0, 0x33EC           ## $a0 = 060133EC
/* 00120 808AC780 3C19808B */  lui     $t9, %hi(func_808AC908)    ## $t9 = 808B0000
/* 00124 808AC784 2739C908 */  addiu   $t9, $t9, %lo(func_808AC908) ## $t9 = 808AC908
/* 00128 808AC788 10000004 */  beq     $zero, $zero, .L808AC79C   
/* 0012C 808AC78C AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
.L808AC790:
/* 00130 808AC790 3C08808B */  lui     $t0, %hi(func_808AC8FC)    ## $t0 = 808B0000
/* 00134 808AC794 2508C8FC */  addiu   $t0, $t0, %lo(func_808AC8FC) ## $t0 = 808AC8FC
/* 00138 808AC798 AE080164 */  sw      $t0, 0x0164($s0)           ## 00000164
.L808AC79C:
/* 0013C 808AC79C 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00140 808AC7A0 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
.L808AC7A4:
/* 00144 808AC7A4 8FA40034 */  lw      $a0, 0x0034($sp)           
.L808AC7A8:
/* 00148 808AC7A8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0014C 808AC7AC 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00150 808AC7B0 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00154 808AC7B4 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00158 808AC7B8 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 0015C 808AC7BC 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00160 808AC7C0 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00164 808AC7C4 94690ED6 */  lhu     $t1, 0x0ED6($v1)           ## 8015F536
/* 00168 808AC7C8 8FAB0034 */  lw      $t3, 0x0034($sp)           
/* 0016C 808AC7CC 312A2000 */  andi    $t2, $t1, 0x2000           ## $t2 = 00000000
/* 00170 808AC7D0 5140000A */  beql    $t2, $zero, .L808AC7FC     
/* 00174 808AC7D4 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 8015E664
/* 00178 808AC7D8 856C00A4 */  lh      $t4, 0x00A4($t3)           ## 000000A4
/* 0017C 808AC7DC 24010053 */  addiu   $at, $zero, 0x0053         ## $at = 00000053
/* 00180 808AC7E0 55810006 */  bnel    $t4, $at, .L808AC7FC       
/* 00184 808AC7E4 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 8015E664
/* 00188 808AC7E8 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 0018C 808AC7EC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00190 808AC7F0 11A10008 */  beq     $t5, $at, .L808AC814       
/* 00194 808AC7F4 00000000 */  nop
/* 00198 808AC7F8 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 8015E664
.L808AC7FC:
/* 0019C 808AC7FC 55C0002F */  bnel    $t6, $zero, .L808AC8BC     
/* 001A0 808AC800 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 001A4 808AC804 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 001A8 808AC808 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001AC 808AC80C 55E1002B */  bnel    $t7, $at, .L808AC8BC       
/* 001B0 808AC810 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808AC814:
/* 001B4 808AC814 0C00B55C */  jal     Actor_Kill
              
/* 001B8 808AC818 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001BC 808AC81C 10000027 */  beq     $zero, $zero, .L808AC8BC   
/* 001C0 808AC820 8FBF001C */  lw      $ra, 0x001C($sp)           
glabel L808AC824
/* 001C4 808AC824 A200016A */  sb      $zero, 0x016A($s0)         ## 0000016A
/* 001C8 808AC828 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 001CC 808AC82C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 001D0 808AC830 24070007 */  addiu   $a3, $zero, 0x0007         ## $a3 = 00000007
/* 001D4 808AC834 0C00CDD2 */  jal     Actor_ChangeType
              
/* 001D8 808AC838 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 001DC 808AC83C 3C19808B */  lui     $t9, %hi(func_808ACC34)    ## $t9 = 808B0000
/* 001E0 808AC840 3C08808B */  lui     $t0, %hi(func_808ACCB8)    ## $t0 = 808B0000
/* 001E4 808AC844 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 001E8 808AC848 2739CC34 */  addiu   $t9, $t9, %lo(func_808ACC34) ## $t9 = 808ACC34
/* 001EC 808AC84C 2508CCB8 */  addiu   $t0, $t0, %lo(func_808ACCB8) ## $t0 = 808ACCB8
/* 001F0 808AC850 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 001F4 808AC854 AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
/* 001F8 808AC858 AE080134 */  sw      $t0, 0x0134($s0)           ## 00000134
/* 001FC 808AC85C 94690ED6 */  lhu     $t1, 0x0ED6($v1)           ## 8015F536
/* 00200 808AC860 312A2000 */  andi    $t2, $t1, 0x2000           ## $t2 = 00000000
/* 00204 808AC864 51400015 */  beql    $t2, $zero, .L808AC8BC     
/* 00208 808AC868 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0020C 808AC86C 0C00B55C */  jal     Actor_Kill
              
/* 00210 808AC870 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00214 808AC874 10000011 */  beq     $zero, $zero, .L808AC8BC   
/* 00218 808AC878 8FBF001C */  lw      $ra, 0x001C($sp)           
glabel L808AC87C
/* 0021C 808AC87C 240BFFF4 */  addiu   $t3, $zero, 0xFFF4         ## $t3 = FFFFFFF4
/* 00220 808AC880 340CFFFF */  ori     $t4, $zero, 0xFFFF         ## $t4 = 0000FFFF
/* 00224 808AC884 A60B0168 */  sh      $t3, 0x0168($s0)           ## 00000168
/* 00228 808AC888 A60C0170 */  sh      $t4, 0x0170($s0)           ## 00000170
/* 0022C 808AC88C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00230 808AC890 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00234 808AC894 24070007 */  addiu   $a3, $zero, 0x0007         ## $a3 = 00000007
/* 00238 808AC898 0C00CDD2 */  jal     Actor_ChangeType
              
/* 0023C 808AC89C 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 00240 808AC8A0 3C0E808B */  lui     $t6, %hi(func_808AD3D4)    ## $t6 = 808B0000
/* 00244 808AC8A4 3C0F808B */  lui     $t7, %hi(func_808AD450)    ## $t7 = 808B0000
/* 00248 808AC8A8 25CED3D4 */  addiu   $t6, $t6, %lo(func_808AD3D4) ## $t6 = 808AD3D4
/* 0024C 808AC8AC 25EFD450 */  addiu   $t7, $t7, %lo(func_808AD450) ## $t7 = 808AD450
/* 00250 808AC8B0 AE0E0164 */  sw      $t6, 0x0164($s0)           ## 00000164
/* 00254 808AC8B4 AE0F0134 */  sw      $t7, 0x0134($s0)           ## 00000134
.L808AC8B8:
/* 00258 808AC8B8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808AC8BC:
/* 0025C 808AC8BC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00260 808AC8C0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00264 808AC8C4 03E00008 */  jr      $ra                        
/* 00268 808AC8C8 00000000 */  nop


