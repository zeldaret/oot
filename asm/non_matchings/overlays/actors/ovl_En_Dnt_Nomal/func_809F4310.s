glabel func_809F4310
/* 01050 809F4310 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01054 809F4314 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01058 809F4318 AFB00028 */  sw      $s0, 0x0028($sp)
/* 0105C 809F431C AFA50034 */  sw      $a1, 0x0034($sp)
/* 01060 809F4320 848E0264 */  lh      $t6, 0x0264($a0)           ## 00000264
/* 01064 809F4324 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01068 809F4328 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0106C 809F432C 55C00022 */  bnel    $t6, $zero, .L809F43B8
/* 01070 809F4330 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01074 809F4334 0C028800 */  jal     Animation_GetLastFrame

/* 01078 809F4338 24840430 */  addiu   $a0, $a0, 0x0430           ## $a0 = 06000430
/* 0107C 809F433C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01080 809F4340 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01084 809F4344 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 01088 809F4348 468021A0 */  cvt.s.w $f6, $f4
/* 0108C 809F434C 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 01090 809F4350 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01094 809F4354 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 01098 809F4358 44060000 */  mfc1    $a2, $f0
/* 0109C 809F435C 44070000 */  mfc1    $a3, $f0
/* 010A0 809F4360 4600320D */  trunc.w.s $f8, $f6
/* 010A4 809F4364 24A50430 */  addiu   $a1, $a1, 0x0430           ## $a1 = 06000430
/* 010A8 809F4368 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 010AC 809F436C 44184000 */  mfc1    $t8, $f8
/* 010B0 809F4370 00000000 */  nop
/* 010B4 809F4374 A618026E */  sh      $t8, 0x026E($s0)           ## 0000026E
/* 010B8 809F4378 8619026E */  lh      $t9, 0x026E($s0)           ## 0000026E
/* 010BC 809F437C AFA80014 */  sw      $t0, 0x0014($sp)
/* 010C0 809F4380 E7B20018 */  swc1    $f18, 0x0018($sp)
/* 010C4 809F4384 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 010C8 809F4388 00000000 */  nop
/* 010CC 809F438C 46805420 */  cvt.s.w $f16, $f10
/* 010D0 809F4390 0C029468 */  jal     Animation_Change

/* 010D4 809F4394 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 010D8 809F4398 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 010DC 809F439C 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 010E0 809F43A0 3C09809F */  lui     $t1, %hi(func_809F43C8)    ## $t1 = 809F0000
/* 010E4 809F43A4 252943C8 */  addiu   $t1, $t1, %lo(func_809F43C8) ## $t1 = 809F43C8
/* 010E8 809F43A8 A2000218 */  sb      $zero, 0x0218($s0)         ## 00000218
/* 010EC 809F43AC AE090214 */  sw      $t1, 0x0214($s0)           ## 00000214
/* 010F0 809F43B0 E6040164 */  swc1    $f4, 0x0164($s0)           ## 00000164
/* 010F4 809F43B4 8FBF002C */  lw      $ra, 0x002C($sp)
.L809F43B8:
/* 010F8 809F43B8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 010FC 809F43BC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01100 809F43C0 03E00008 */  jr      $ra
/* 01104 809F43C4 00000000 */  nop
