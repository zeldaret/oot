glabel func_809F4E18
/* 01B58 809F4E18 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01B5C 809F4E1C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01B60 809F4E20 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01B64 809F4E24 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01B68 809F4E28 84820264 */  lh      $v0, 0x0264($a0)           ## 00000264
/* 01B6C 809F4E2C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01B70 809F4E30 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 01B74 809F4E34 1040000A */  beq     $v0, $zero, .L809F4E60     
/* 01B78 809F4E38 00000000 */  nop
/* 01B7C 809F4E3C 54620029 */  bnel    $v1, $v0, .L809F4EE4       
/* 01B80 809F4E40 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01B84 809F4E44 908E0276 */  lbu     $t6, 0x0276($a0)           ## 00000276
/* 01B88 809F4E48 546E0026 */  bnel    $v1, $t6, .L809F4EE4       
/* 01B8C 809F4E4C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01B90 809F4E50 0C01E221 */  jal     func_80078884              
/* 01B94 809F4E54 24044806 */  addiu   $a0, $zero, 0x4806         ## $a0 = 00004806
/* 01B98 809F4E58 10000022 */  beq     $zero, $zero, .L809F4EE4   
/* 01B9C 809F4E5C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809F4E60:
/* 01BA0 809F4E60 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01BA4 809F4E64 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 01BA8 809F4E68 24840430 */  addiu   $a0, $a0, 0x0430           ## $a0 = 06000430
/* 01BAC 809F4E6C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01BB0 809F4E70 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 01BB4 809F4E74 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 01BB8 809F4E78 468021A0 */  cvt.s.w $f6, $f4                   
/* 01BBC 809F4E7C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01BC0 809F4E80 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 01BC4 809F4E84 24A50430 */  addiu   $a1, $a1, 0x0430           ## $a1 = 06000430
/* 01BC8 809F4E88 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01BCC 809F4E8C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01BD0 809F4E90 4600320D */  trunc.w.s $f8, $f6                   
/* 01BD4 809F4E94 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01BD8 809F4E98 44184000 */  mfc1    $t8, $f8                   
/* 01BDC 809F4E9C 00000000 */  nop
/* 01BE0 809F4EA0 A618026E */  sh      $t8, 0x026E($s0)           ## 0000026E
/* 01BE4 809F4EA4 8619026E */  lh      $t9, 0x026E($s0)           ## 0000026E
/* 01BE8 809F4EA8 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 01BEC 809F4EAC E7B20018 */  swc1    $f18, 0x0018($sp)          
/* 01BF0 809F4EB0 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 01BF4 809F4EB4 00000000 */  nop
/* 01BF8 809F4EB8 46805420 */  cvt.s.w $f16, $f10                 
/* 01BFC 809F4EBC 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 01C00 809F4EC0 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 01C04 809F4EC4 A2000218 */  sb      $zero, 0x0218($s0)         ## 00000218
/* 01C08 809F4EC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C0C 809F4ECC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01C10 809F4ED0 2405387D */  addiu   $a1, $zero, 0x387D         ## $a1 = 0000387D
/* 01C14 809F4ED4 3C09809F */  lui     $t1, %hi(func_809F4EF4)    ## $t1 = 809F0000
/* 01C18 809F4ED8 25294EF4 */  addiu   $t1, $t1, %lo(func_809F4EF4) ## $t1 = 809F4EF4
/* 01C1C 809F4EDC AE090214 */  sw      $t1, 0x0214($s0)           ## 00000214
/* 01C20 809F4EE0 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809F4EE4:
/* 01C24 809F4EE4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01C28 809F4EE8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01C2C 809F4EEC 03E00008 */  jr      $ra                        
/* 01C30 809F4EF0 00000000 */  nop


