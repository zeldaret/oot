glabel func_80ABDBF8
/* 01048 80ABDBF8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0104C 80ABDBFC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01050 80ABDC00 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 01054 80ABDC04 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 01058 80ABDC08 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 0105C 80ABDC0C 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.25
/* 01060 80ABDC10 C48401E0 */  lwc1    $f4, 0x01E0($a0)           ## 000001E0
/* 01064 80ABDC14 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01068 80ABDC18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0106C 80ABDC1C 46062201 */  sub.s   $f8, $f4, $f6              
/* 01070 80ABDC20 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01074 80ABDC24 E7A8003C */  swc1    $f8, 0x003C($sp)           
/* 01078 80ABDC28 848E01C8 */  lh      $t6, 0x01C8($a0)           ## 000001C8
/* 0107C 80ABDC2C 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 01080 80ABDC30 0C00B56E */  jal     Actor_SetHeight
              
/* 01084 80ABDC34 A48F01C8 */  sh      $t7, 0x01C8($a0)           ## 000001C8
/* 01088 80ABDC38 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 0108C 80ABDC3C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 01090 80ABDC40 0C00B58B */  jal     Actor_SetScale
              
/* 01094 80ABDC44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01098 80ABDC48 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0109C 80ABDC4C 44811000 */  mtc1    $at, $f2                   ## $f2 = 20.00
/* 010A0 80ABDC50 3C0141C0 */  lui     $at, 0x41C0                ## $at = 41C00000
/* 010A4 80ABDC54 44815000 */  mtc1    $at, $f10                  ## $f10 = 24.00
/* 010A8 80ABDC58 C7B0003C */  lwc1    $f16, 0x003C($sp)          
/* 010AC 80ABDC5C 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 010B0 80ABDC60 44812000 */  mtc1    $at, $f4                   ## $f4 = 12.00
/* 010B4 80ABDC64 46105482 */  mul.s   $f18, $f10, $f16           
/* 010B8 80ABDC68 C6060104 */  lwc1    $f6, 0x0104($s0)           ## 00000104
/* 010BC 80ABDC6C C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 010C0 80ABDC70 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 010C4 80ABDC74 24180007 */  addiu   $t8, $zero, 0x0007         ## $t8 = 00000007
/* 010C8 80ABDC78 44061000 */  mfc1    $a2, $f2                   
/* 010CC 80ABDC7C 44071000 */  mfc1    $a3, $f2                   
/* 010D0 80ABDC80 46049000 */  add.s   $f0, $f18, $f4             
/* 010D4 80ABDC84 44819000 */  mtc1    $at, $f18                  ## $f18 = 60.00
/* 010D8 80ABDC88 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 010DC 80ABDC8C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 010E0 80ABDC90 46003201 */  sub.s   $f8, $f6, $f0              
/* 010E4 80ABDC94 46005401 */  sub.s   $f16, $f10, $f0            
/* 010E8 80ABDC98 E6080104 */  swc1    $f8, 0x0104($s0)           ## 00000104
/* 010EC 80ABDC9C E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 010F0 80ABDCA0 E7A00034 */  swc1    $f0, 0x0034($sp)           
/* 010F4 80ABDCA4 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 010F8 80ABDCA8 0C00B92D */  jal     func_8002E4B4              
/* 010FC 80ABDCAC E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 01100 80ABDCB0 C7A00034 */  lwc1    $f0, 0x0034($sp)           
/* 01104 80ABDCB4 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 01108 80ABDCB8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0110C 80ABDCBC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01110 80ABDCC0 46002180 */  add.s   $f6, $f4, $f0              
/* 01114 80ABDCC4 02212821 */  addu    $a1, $s1, $at              
/* 01118 80ABDCC8 26060150 */  addiu   $a2, $s0, 0x0150           ## $a2 = 00000150
/* 0111C 80ABDCCC E60001F0 */  swc1    $f0, 0x01F0($s0)           ## 000001F0
/* 01120 80ABDCD0 E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
/* 01124 80ABDCD4 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 01128 80ABDCD8 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 0112C 80ABDCDC 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01130 80ABDCE0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01134 80ABDCE4 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 01138 80ABDCE8 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 0113C 80ABDCEC 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01140 80ABDCF0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01144 80ABDCF4 0C00B638 */  jal     Actor_MoveForward
              
/* 01148 80ABDCF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0114C 80ABDCFC 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01150 80ABDD00 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01154 80ABDD04 260401E4 */  addiu   $a0, $s0, 0x01E4           ## $a0 = 000001E4
/* 01158 80ABDD08 0C01DE80 */  jal     Math_ApproxF
              
/* 0115C 80ABDD0C 8E0501E8 */  lw      $a1, 0x01E8($s0)           ## 000001E8
/* 01160 80ABDD10 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01164 80ABDD14 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 01168 80ABDD18 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 0116C 80ABDD1C 03E00008 */  jr      $ra                        
/* 01170 80ABDD20 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000


