glabel EnDu_Update
/* 010EC 809FED1C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 010F0 809FED20 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 010F4 809FED24 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 010F8 809FED28 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 010FC 809FED2C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01100 809FED30 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01104 809FED34 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 01108 809FED38 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 0110C 809FED3C 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 01110 809FED40 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 01114 809FED44 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01118 809FED48 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0111C 809FED4C 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 01120 809FED50 02212821 */  addu    $a1, $s1, $at              
/* 01124 809FED54 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 01128 809FED58 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0112C 809FED5C 8E0F0154 */  lw      $t7, 0x0154($s0)           ## 00000154
/* 01130 809FED60 3C0E0600 */  lui     $t6, %hi(D_060041F4)                ## $t6 = 06000000
/* 01134 809FED64 25CE41F4 */  addiu   $t6, $t6, %lo(D_060041F4)           ## $t6 = 060041F4
/* 01138 809FED68 15CF000A */  bne     $t6, $t7, .L809FED94       
/* 0113C 809FED6C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01140 809FED70 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 01144 809FED74 0C0295B2 */  jal     func_800A56C8              
/* 01148 809FED78 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 0114C 809FED7C 10400005 */  beq     $v0, $zero, .L809FED94     
/* 01150 809FED80 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01154 809FED84 3C0580A0 */  lui     $a1, %hi(D_809FF268)       ## $a1 = 80A00000
/* 01158 809FED88 24A5F268 */  addiu   $a1, $a1, %lo(D_809FF268)  ## $a1 = 809FF268
/* 0115C 809FED8C 0C00D3B0 */  jal     func_80034EC0              
/* 01160 809FED90 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
.L809FED94:
/* 01164 809FED94 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01168 809FED98 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0116C 809FED9C 0C27F7A7 */  jal     func_809FDE9C              
/* 01170 809FEDA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01174 809FEDA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01178 809FEDA8 0C27F789 */  jal     func_809FDE24              
/* 0117C 809FEDAC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01180 809FEDB0 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 01184 809FEDB4 3C1880A0 */  lui     $t8, %hi(func_809FE890)    ## $t8 = 80A00000
/* 01188 809FEDB8 2718E890 */  addiu   $t8, $t8, %lo(func_809FE890) ## $t8 = 809FE890
/* 0118C 809FEDBC 1719000E */  bne     $t8, $t9, .L809FEDF8       
/* 01190 809FEDC0 00000000 */  nop
/* 01194 809FEDC4 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 01198 809FEDC8 C606005C */  lwc1    $f6, 0x005C($s0)           ## 0000005C
/* 0119C 809FEDCC C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 011A0 809FEDD0 C6100060 */  lwc1    $f16, 0x0060($s0)          ## 00000060
/* 011A4 809FEDD4 46062200 */  add.s   $f8, $f4, $f6              
/* 011A8 809FEDD8 C6060064 */  lwc1    $f6, 0x0064($s0)           ## 00000064
/* 011AC 809FEDDC C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 011B0 809FEDE0 46105480 */  add.s   $f18, $f10, $f16           
/* 011B4 809FEDE4 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 011B8 809FEDE8 46062200 */  add.s   $f8, $f4, $f6              
/* 011BC 809FEDEC E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 011C0 809FEDF0 10000003 */  beq     $zero, $zero, .L809FEE00   
/* 011C4 809FEDF4 E608002C */  swc1    $f8, 0x002C($s0)           ## 0000002C
.L809FEDF8:
/* 011C8 809FEDF8 0C00B5FB */  jal     func_8002D7EC              
/* 011CC 809FEDFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809FEE00:
/* 011D0 809FEE00 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 011D4 809FEE04 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 011D8 809FEE08 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 011DC 809FEE0C 44060000 */  mfc1    $a2, $f0                   
/* 011E0 809FEE10 44070000 */  mfc1    $a3, $f0                   
/* 011E4 809FEE14 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 011E8 809FEE18 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 011EC 809FEE1C 0C00B92D */  jal     func_8002E4B4              
/* 011F0 809FEE20 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 011F4 809FEE24 8E030190 */  lw      $v1, 0x0190($s0)           ## 00000190
/* 011F8 809FEE28 3C0980A0 */  lui     $t1, %hi(func_809FE4A4)    ## $t1 = 80A00000
/* 011FC 809FEE2C 2529E4A4 */  addiu   $t1, $t1, %lo(func_809FE4A4) ## $t1 = 809FE4A4
/* 01200 809FEE30 51230015 */  beql    $t1, $v1, .L809FEE88       
/* 01204 809FEE34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01208 809FEE38 860A01D4 */  lh      $t2, 0x01D4($s0)           ## 000001D4
/* 0120C 809FEE3C 3C0142E8 */  lui     $at, 0x42E8                ## $at = 42E80000
/* 01210 809FEE40 44819000 */  mtc1    $at, $f18                  ## $f18 = 116.00
/* 01214 809FEE44 448A5000 */  mtc1    $t2, $f10                  ## $f10 = 0.00
/* 01218 809FEE48 3C0B80A0 */  lui     $t3, %hi(func_809FDC38)    ## $t3 = 80A00000
/* 0121C 809FEE4C 3C0C80A0 */  lui     $t4, %hi(func_809FDCDC)    ## $t4 = 80A00000
/* 01220 809FEE50 46805420 */  cvt.s.w $f16, $f10                 
/* 01224 809FEE54 258CDCDC */  addiu   $t4, $t4, %lo(func_809FDCDC) ## $t4 = 809FDCDC
/* 01228 809FEE58 256BDC38 */  addiu   $t3, $t3, %lo(func_809FDC38) ## $t3 = 809FDC38
/* 0122C 809FEE5C AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 01230 809FEE60 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 01234 809FEE64 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01238 809FEE68 46128100 */  add.s   $f4, $f16, $f18            
/* 0123C 809FEE6C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01240 809FEE70 260601F4 */  addiu   $a2, $s0, 0x01F4           ## $a2 = 000001F4
/* 01244 809FEE74 44072000 */  mfc1    $a3, $f4                   
/* 01248 809FEE78 0C00D0F3 */  jal     func_800343CC              
/* 0124C 809FEE7C 00000000 */  nop
/* 01250 809FEE80 8E030190 */  lw      $v1, 0x0190($s0)           ## 00000190
/* 01254 809FEE84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809FEE88:
/* 01258 809FEE88 0060F809 */  jalr    $ra, $v1                   
/* 0125C 809FEE8C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01260 809FEE90 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01264 809FEE94 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 01268 809FEE98 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 0126C 809FEE9C 03E00008 */  jr      $ra                        
/* 01270 809FEEA0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
