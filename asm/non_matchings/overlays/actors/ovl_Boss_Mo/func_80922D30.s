.rdata
glabel D_809269E4
    .asciz "CORE mode = <%d>\n"
    .balign 4

.text
glabel func_80922D30
/* 07230 80922D30 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 07234 80922D34 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 07238 80922D38 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 0723C 80922D3C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 07240 80922D40 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 07244 80922D44 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 07248 80922D48 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0724C 80922D4C 3C048092 */  lui     $a0, %hi(D_809269E4)       ## $a0 = 80920000
/* 07250 80922D50 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 07254 80922D54 86050158 */  lh      $a1, 0x0158($s0)           ## 00000158
/* 07258 80922D58 0C00084C */  jal     osSyncPrintf
              
/* 0725C 80922D5C 248469E4 */  addiu   $a0, $a0, %lo(D_809269E4)  ## $a0 = 809269E4
/* 07260 80922D60 3C028092 */  lui     $v0, %hi(D_80925CD8)       ## $v0 = 80920000
/* 07264 80922D64 8C425CD8 */  lw      $v0, %lo(D_80925CD8)($v0)  
/* 07268 80922D68 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0726C 80922D6C 54400014 */  bnel    $v0, $zero, .L80922DC0     
/* 07270 80922D70 C60801BC */  lwc1    $f8, 0x01BC($s0)           ## 000001BC
/* 07274 80922D74 C60601BC */  lwc1    $f6, 0x01BC($s0)           ## 000001BC
/* 07278 80922D78 3C0F8092 */  lui     $t7, %hi(D_80925CD4)       ## $t7 = 80920000
/* 0727C 80922D7C 8DEF5CD4 */  lw      $t7, %lo(D_80925CD4)($t7)  
/* 07280 80922D80 4600320D */  trunc.w.s $f8, $f6                   
/* 07284 80922D84 8E2C07C0 */  lw      $t4, 0x07C0($s1)           ## 000007C0
/* 07288 80922D88 C5E401C8 */  lwc1    $f4, 0x01C8($t7)           ## 809201C8
/* 0728C 80922D8C 44194000 */  mfc1    $t9, $f8                   
/* 07290 80922D90 8D8D0028 */  lw      $t5, 0x0028($t4)           ## 00000028
/* 07294 80922D94 00194400 */  sll     $t0, $t9, 16               
/* 07298 80922D98 00084C03 */  sra     $t1, $t0, 16               
/* 0729C 80922D9C 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 072A0 80922DA0 00000000 */  nop
/* 072A4 80922DA4 46805420 */  cvt.s.w $f16, $f10                 
/* 072A8 80922DA8 46102480 */  add.s   $f18, $f4, $f16            
/* 072AC 80922DAC 4600918D */  trunc.w.s $f6, $f18                  
/* 072B0 80922DB0 440B3000 */  mfc1    $t3, $f6                   
/* 072B4 80922DB4 10000015 */  beq     $zero, $zero, .L80922E0C   
/* 072B8 80922DB8 A5AB0002 */  sh      $t3, 0x0002($t5)           ## 00000002
/* 072BC 80922DBC C60801BC */  lwc1    $f8, 0x01BC($s0)           ## 000001BC
.L80922DC0:
/* 072C0 80922DC0 3C088092 */  lui     $t0, %hi(D_80925CD4)       ## $t0 = 80920000
/* 072C4 80922DC4 8D085CD4 */  lw      $t0, %lo(D_80925CD4)($t0)  
/* 072C8 80922DC8 4600428D */  trunc.w.s $f10, $f8                  
/* 072CC 80922DCC C44801C8 */  lwc1    $f8, 0x01C8($v0)           ## 809201C8
/* 072D0 80922DD0 C51201C8 */  lwc1    $f18, 0x01C8($t0)          ## 809201C8
/* 072D4 80922DD4 8E2C07C0 */  lw      $t4, 0x07C0($s1)           ## 000007C0
/* 072D8 80922DD8 440F5000 */  mfc1    $t7, $f10                  
/* 072DC 80922DDC 8D8B0028 */  lw      $t3, 0x0028($t4)           ## 00000028
/* 072E0 80922DE0 000FC400 */  sll     $t8, $t7, 16               
/* 072E4 80922DE4 0018CC03 */  sra     $t9, $t8, 16               
/* 072E8 80922DE8 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 072EC 80922DEC 00000000 */  nop
/* 072F0 80922DF0 46802420 */  cvt.s.w $f16, $f4                  
/* 072F4 80922DF4 46128180 */  add.s   $f6, $f16, $f18            
/* 072F8 80922DF8 46064280 */  add.s   $f10, $f8, $f6             
/* 072FC 80922DFC 4600510D */  trunc.w.s $f4, $f10                  
/* 07300 80922E00 440A2000 */  mfc1    $t2, $f4                   
/* 07304 80922E04 00000000 */  nop
/* 07308 80922E08 A56A0002 */  sh      $t2, 0x0002($t3)           ## 00000002
.L80922E0C:
/* 0730C 80922E0C 8E180024 */  lw      $t8, 0x0024($s0)           ## 00000024
/* 07310 80922E10 8E0D0004 */  lw      $t5, 0x0004($s0)           ## 00000004
/* 07314 80922E14 8619015C */  lh      $t9, 0x015C($s0)           ## 0000015C
/* 07318 80922E18 8602015E */  lh      $v0, 0x015E($s0)           ## 0000015E
/* 0731C 80922E1C AE180038 */  sw      $t8, 0x0038($s0)           ## 00000038
/* 07320 80922E20 8E18002C */  lw      $t8, 0x002C($s0)           ## 0000002C
/* 07324 80922E24 8E0F0028 */  lw      $t7, 0x0028($s0)           ## 00000028
/* 07328 80922E28 35AE0200 */  ori     $t6, $t5, 0x0200           ## $t6 = 00000200
/* 0732C 80922E2C 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 07330 80922E30 AE0E0004 */  sw      $t6, 0x0004($s0)           ## 00000004
/* 07334 80922E34 A608015C */  sh      $t0, 0x015C($s0)           ## 0000015C
/* 07338 80922E38 AE180040 */  sw      $t8, 0x0040($s0)           ## 00000040
/* 0733C 80922E3C 10400003 */  beq     $v0, $zero, .L80922E4C     
/* 07340 80922E40 AE0F003C */  sw      $t7, 0x003C($s0)           ## 0000003C
/* 07344 80922E44 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = 8091FFFF
/* 07348 80922E48 A609015E */  sh      $t1, 0x015E($s0)           ## 0000015E
.L80922E4C:
/* 0734C 80922E4C 86020160 */  lh      $v0, 0x0160($s0)           ## 00000160
/* 07350 80922E50 10400002 */  beq     $v0, $zero, .L80922E5C     
/* 07354 80922E54 244CFFFF */  addiu   $t4, $v0, 0xFFFF           ## $t4 = 8091FFFF
/* 07358 80922E58 A60C0160 */  sh      $t4, 0x0160($s0)           ## 00000160
.L80922E5C:
/* 0735C 80922E5C 860A015A */  lh      $t2, 0x015A($s0)           ## 0000015A
/* 07360 80922E60 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 07364 80922E64 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 07368 80922E68 A60B015A */  sh      $t3, 0x015A($s0)           ## 0000015A
/* 0736C 80922E6C 00026840 */  sll     $t5, $v0,  1               
.L80922E70:
/* 07370 80922E70 020D1821 */  addu    $v1, $s0, $t5              
/* 07374 80922E74 8464017E */  lh      $a0, 0x017E($v1)           ## 0000017E
/* 07378 80922E78 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 0737C 80922E7C 00021400 */  sll     $v0, $v0, 16               
/* 07380 80922E80 10800003 */  beq     $a0, $zero, .L80922E90     
/* 07384 80922E84 00021403 */  sra     $v0, $v0, 16               
/* 07388 80922E88 248EFFFF */  addiu   $t6, $a0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0738C 80922E8C A46E017E */  sh      $t6, 0x017E($v1)           ## 0000017E
.L80922E90:
/* 07390 80922E90 28410005 */  slti    $at, $v0, 0x0005           
/* 07394 80922E94 5420FFF6 */  bnel    $at, $zero, .L80922E70     
/* 07398 80922E98 00026840 */  sll     $t5, $v0,  1               
/* 0739C 80922E9C 0C2485B4 */  jal     func_809216D0              
/* 073A0 80922EA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 073A4 80922EA4 260614FC */  addiu   $a2, $s0, 0x14FC           ## $a2 = 000014FC
/* 073A8 80922EA8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000014FC
/* 073AC 80922EAC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 073B0 80922EB0 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 073B4 80922EB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 073B8 80922EB8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 073BC 80922EBC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 073C0 80922EC0 02212821 */  addu    $a1, $s1, $at              
/* 073C4 80922EC4 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 073C8 80922EC8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 073CC 80922ECC 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 073D0 80922ED0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 073D4 80922ED4 860F0158 */  lh      $t7, 0x0158($s0)           ## 00000158
/* 073D8 80922ED8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 073DC 80922EDC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 073E0 80922EE0 15E1000C */  bne     $t7, $at, .L80922F14       
/* 073E4 80922EE4 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 073E8 80922EE8 8E3807C0 */  lw      $t8, 0x07C0($s1)           ## 000007C0
/* 073EC 80922EEC C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 073F0 80922EF0 8F190028 */  lw      $t9, 0x0028($t8)           ## 00000028
/* 073F4 80922EF4 87280002 */  lh      $t0, 0x0002($t9)           ## 00000002
/* 073F8 80922EF8 44889000 */  mtc1    $t0, $f18                  ## $f18 = 0.00
/* 073FC 80922EFC 00000000 */  nop
/* 07400 80922F00 46809220 */  cvt.s.w $f8, $f18                  
/* 07404 80922F04 4608803C */  c.lt.s  $f16, $f8                  
/* 07408 80922F08 00000000 */  nop
/* 0740C 80922F0C 45000005 */  bc1f    .L80922F24                 
/* 07410 80922F10 00000000 */  nop
.L80922F14:
/* 07414 80922F14 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 07418 80922F18 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0741C 80922F1C 10000004 */  beq     $zero, $zero, .L80922F30   
/* 07420 80922F20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80922F24:
/* 07424 80922F24 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 07428 80922F28 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0742C 80922F2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80922F30:
/* 07430 80922F30 0C24935C */  jal     func_80924D70              
/* 07434 80922F34 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 07438 80922F38 8FA90028 */  lw      $t1, 0x0028($sp)           
/* 0743C 80922F3C 8D2C0118 */  lw      $t4, 0x0118($t1)           ## 00000118
/* 07440 80922F40 11800005 */  beq     $t4, $zero, .L80922F58     
/* 07444 80922F44 00000000 */  nop
/* 07448 80922F48 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 0744C 80922F4C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 07450 80922F50 01415824 */  and     $t3, $t2, $at              
/* 07454 80922F54 AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
.L80922F58:
/* 07458 80922F58 0C249706 */  jal     func_80925C18              
/* 0745C 80922F5C 00000000 */  nop
/* 07460 80922F60 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 07464 80922F64 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 07468 80922F68 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 0746C 80922F6C 03E00008 */  jr      $ra                        
/* 07470 80922F70 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
