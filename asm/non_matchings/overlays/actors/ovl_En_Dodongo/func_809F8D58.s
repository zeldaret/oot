glabel func_809F8D58
/* 00B08 809F8D58 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00B0C 809F8D5C 3C0F80A0 */  lui     $t7, %hi(D_809FAA20)       ## $t7 = 80A00000
/* 00B10 809F8D60 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B14 809F8D64 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00B18 809F8D68 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 00B1C 809F8D6C 25EFAA20 */  addiu   $t7, $t7, %lo(D_809FAA20)  ## $t7 = 809FAA20
/* 00B20 809F8D70 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809FAA20
/* 00B24 809F8D74 27AE0048 */  addiu   $t6, $sp, 0x0048           ## $t6 = FFFFFFF0
/* 00B28 809F8D78 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809FAA24
/* 00B2C 809F8D7C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 00B30 809F8D80 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809FAA28
/* 00B34 809F8D84 3C0980A0 */  lui     $t1, %hi(D_809FAA2C)       ## $t1 = 80A00000
/* 00B38 809F8D88 2529AA2C */  addiu   $t1, $t1, %lo(D_809FAA2C)  ## $t1 = 809FAA2C
/* 00B3C 809F8D8C ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 00B40 809F8D90 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 00B44 809F8D94 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 809FAA2C
/* 00B48 809F8D98 27A8003C */  addiu   $t0, $sp, 0x003C           ## $t0 = FFFFFFE4
/* 00B4C 809F8D9C 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 809FAA30
/* 00B50 809F8DA0 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE4
/* 00B54 809F8DA4 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 809FAA34
/* 00B58 809F8DA8 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE8
/* 00B5C 809F8DAC 24010018 */  addiu   $at, $zero, 0x0018         ## $at = 00000018
/* 00B60 809F8DB0 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFEC
/* 00B64 809F8DB4 C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 00B68 809F8DB8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B6C 809F8DBC 4600010D */  trunc.w.s $f4, $f0                   
/* 00B70 809F8DC0 440D2000 */  mfc1    $t5, $f4                   
/* 00B74 809F8DC4 00000000 */  nop
/* 00B78 809F8DC8 55A10005 */  bnel    $t5, $at, .L809F8DE0       
/* 00B7C 809F8DCC 3C0141E8 */  lui     $at, 0x41E8                ## $at = 41E80000
/* 00B80 809F8DD0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00B84 809F8DD4 24053801 */  addiu   $a1, $zero, 0x3801         ## $a1 = 00003801
/* 00B88 809F8DD8 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 00B8C 809F8DDC 3C0141E8 */  lui     $at, 0x41E8                ## $at = 41E80000
.L809F8DE0:
/* 00B90 809F8DE0 44813000 */  mtc1    $at, $f6                   ## $f6 = 29.00
/* 00B94 809F8DE4 3C01422C */  lui     $at, 0x422C                ## $at = 422C0000
/* 00B98 809F8DE8 4600303E */  c.le.s  $f6, $f0                   
/* 00B9C 809F8DEC 00000000 */  nop
/* 00BA0 809F8DF0 45020035 */  bc1fl   .L809F8EC8                 
/* 00BA4 809F8DF4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00BA8 809F8DF8 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 00BAC 809F8DFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BB0 809F8E00 4608003E */  c.le.s  $f0, $f8                   
/* 00BB4 809F8E04 00000000 */  nop
/* 00BB8 809F8E08 4502002F */  bc1fl   .L809F8EC8                 
/* 00BBC 809F8E0C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00BC0 809F8E10 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00BC4 809F8E14 24053002 */  addiu   $a1, $zero, 0x3002         ## $a1 = 00003002
/* 00BC8 809F8E18 3C0141E8 */  lui     $at, 0x41E8                ## $at = 41E80000
/* 00BCC 809F8E1C 44818000 */  mtc1    $at, $f16                  ## $f16 = 29.00
/* 00BD0 809F8E20 C60A0164 */  lwc1    $f10, 0x0164($s0)          ## 00000164
/* 00BD4 809F8E24 27A60030 */  addiu   $a2, $sp, 0x0030           ## $a2 = FFFFFFD8
/* 00BD8 809F8E28 3C01420C */  lui     $at, 0x420C                ## $at = 420C0000
/* 00BDC 809F8E2C 46105481 */  sub.s   $f18, $f10, $f16           
/* 00BE0 809F8E30 44814000 */  mtc1    $at, $f8                   ## $f8 = 35.00
/* 00BE4 809F8E34 3C0541F0 */  lui     $a1, 0x41F0                ## $a1 = 41F00000
/* 00BE8 809F8E38 4600910D */  trunc.w.s $f4, $f18                  
/* 00BEC 809F8E3C 440F2000 */  mfc1    $t7, $f4                   
/* 00BF0 809F8E40 00000000 */  nop
/* 00BF4 809F8E44 A7AF002C */  sh      $t7, 0x002C($sp)           
/* 00BF8 809F8E48 8E190024 */  lw      $t9, 0x0024($s0)           ## 00000024
/* 00BFC 809F8E4C ACD90000 */  sw      $t9, 0x0000($a2)           ## FFFFFFD8
/* 00C00 809F8E50 8E180028 */  lw      $t8, 0x0028($s0)           ## 00000028
/* 00C04 809F8E54 ACD80004 */  sw      $t8, 0x0004($a2)           ## FFFFFFDC
/* 00C08 809F8E58 8E19002C */  lw      $t9, 0x002C($s0)           ## 0000002C
/* 00C0C 809F8E5C ACD90008 */  sw      $t9, 0x0008($a2)           ## FFFFFFE0
/* 00C10 809F8E60 C7A60034 */  lwc1    $f6, 0x0034($sp)           
/* 00C14 809F8E64 46083280 */  add.s   $f10, $f6, $f8             
/* 00C18 809F8E68 E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 00C1C 809F8E6C 0C27E99D */  jal     func_809FA674              
/* 00C20 809F8E70 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 00C24 809F8E74 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 00C28 809F8E78 3C054020 */  lui     $a1, 0x4020                ## $a1 = 40200000
/* 00C2C 809F8E7C 0C27E99D */  jal     func_809FA674              
/* 00C30 809F8E80 27A6003C */  addiu   $a2, $sp, 0x003C           ## $a2 = FFFFFFE4
/* 00C34 809F8E84 87A2002C */  lh      $v0, 0x002C($sp)           
/* 00C38 809F8E88 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 00C3C 809F8E8C 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 00C40 809F8E90 00024080 */  sll     $t0, $v0,  2               
/* 00C44 809F8E94 01024021 */  addu    $t0, $t0, $v0              
/* 00C48 809F8E98 00084040 */  sll     $t0, $t0,  1               
/* 00C4C 809F8E9C 01285023 */  subu    $t2, $t1, $t0              
/* 00C50 809F8EA0 244B0003 */  addiu   $t3, $v0, 0x0003           ## $t3 = 00000003
/* 00C54 809F8EA4 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00C58 809F8EA8 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00C5C 809F8EAC 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFD8
/* 00C60 809F8EB0 27A60048 */  addiu   $a2, $sp, 0x0048           ## $a2 = FFFFFFF0
/* 00C64 809F8EB4 0C00A4E8 */  jal     EffectSsDFire_SpawnFixedScale              
/* 00C68 809F8EB8 27A7003C */  addiu   $a3, $sp, 0x003C           ## $a3 = FFFFFFE4
/* 00C6C 809F8EBC 10000010 */  beq     $zero, $zero, .L809F8F00   
/* 00C70 809F8EC0 00000000 */  nop
/* 00C74 809F8EC4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
.L809F8EC8:
/* 00C78 809F8EC8 44818000 */  mtc1    $at, $f16                  ## $f16 = 2.00
/* 00C7C 809F8ECC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00C80 809F8ED0 4600803E */  c.le.s  $f16, $f0                  
/* 00C84 809F8ED4 00000000 */  nop
/* 00C88 809F8ED8 45000009 */  bc1f    .L809F8F00                 
/* 00C8C 809F8EDC 00000000 */  nop
/* 00C90 809F8EE0 44819000 */  mtc1    $at, $f18                  ## $f18 = 20.00
/* 00C94 809F8EE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C98 809F8EE8 4612003E */  c.le.s  $f0, $f18                  
/* 00C9C 809F8EEC 00000000 */  nop
/* 00CA0 809F8EF0 45000003 */  bc1f    .L809F8F00                 
/* 00CA4 809F8EF4 00000000 */  nop
/* 00CA8 809F8EF8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00CAC 809F8EFC 24053058 */  addiu   $a1, $zero, 0x3058         ## $a1 = 00003058
.L809F8F00:
/* 00CB0 809F8F00 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00CB4 809F8F04 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00CB8 809F8F08 50400004 */  beql    $v0, $zero, .L809F8F1C     
/* 00CBC 809F8F0C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00CC0 809F8F10 0C27E2CB */  jal     func_809F8B2C              
/* 00CC4 809F8F14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CC8 809F8F18 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F8F1C:
/* 00CCC 809F8F1C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00CD0 809F8F20 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 00CD4 809F8F24 03E00008 */  jr      $ra                        
/* 00CD8 809F8F28 00000000 */  nop
