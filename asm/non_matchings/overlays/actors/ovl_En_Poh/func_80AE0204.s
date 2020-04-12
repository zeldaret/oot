glabel func_80AE0204
/* 024B4 80AE0204 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 024B8 80AE0208 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 024BC 80AE020C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 024C0 80AE0210 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 024C4 80AE0214 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 024C8 80AE0218 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 024CC 80AE021C 0C00BE5D */  jal     func_8002F974              
/* 024D0 80AE0220 240531E8 */  addiu   $a1, $zero, 0x31E8         ## $a1 = 000031E8
/* 024D4 80AE0224 0C042F6F */  jal     func_8010BDBC              
/* 024D8 80AE0228 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 024DC 80AE022C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 024E0 80AE0230 1441002B */  bne     $v0, $at, .L80AE02E0       
/* 024E4 80AE0234 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 024E8 80AE0238 0C041AF2 */  jal     func_80106BC8              
/* 024EC 80AE023C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 024F0 80AE0240 10400035 */  beq     $v0, $zero, .L80AE0318     
/* 024F4 80AE0244 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 024F8 80AE0248 01D07021 */  addu    $t6, $t6, $s0              
/* 024FC 80AE024C 91CE04BD */  lbu     $t6, 0x04BD($t6)           ## 000104BD
/* 02500 80AE0250 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02504 80AE0254 55C00013 */  bnel    $t6, $zero, .L80AE02A4     
/* 02508 80AE0258 8639001C */  lh      $t9, 0x001C($s1)           ## 0000001C
/* 0250C 80AE025C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 02510 80AE0260 2405000B */  addiu   $a1, $zero, 0x000B         ## $a1 = 0000000B
/* 02514 80AE0264 14400007 */  bne     $v0, $zero, .L80AE0284     
/* 02518 80AE0268 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0251C 80AE026C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 02520 80AE0270 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 02524 80AE0274 14400003 */  bne     $v0, $zero, .L80AE0284     
/* 02528 80AE0278 240F5010 */  addiu   $t7, $zero, 0x5010         ## $t7 = 00005010
/* 0252C 80AE027C 10000003 */  beq     $zero, $zero, .L80AE028C   
/* 02530 80AE0280 A62F010E */  sh      $t7, 0x010E($s1)           ## 0000010E
.L80AE0284:
/* 02534 80AE0284 24185014 */  addiu   $t8, $zero, 0x5014         ## $t8 = 00005014
/* 02538 80AE0288 A638010E */  sh      $t8, 0x010E($s1)           ## 0000010E
.L80AE028C:
/* 0253C 80AE028C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02540 80AE0290 0C042DC8 */  jal     func_8010B720              
/* 02544 80AE0294 9625010E */  lhu     $a1, 0x010E($s1)           ## 0000010E
/* 02548 80AE0298 10000020 */  beq     $zero, $zero, .L80AE031C   
/* 0254C 80AE029C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02550 80AE02A0 8639001C */  lh      $t9, 0x001C($s1)           ## 0000001C
.L80AE02A4:
/* 02554 80AE02A4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02558 80AE02A8 2405000B */  addiu   $a1, $zero, 0x000B         ## $a1 = 0000000B
/* 0255C 80AE02AC 17210005 */  bne     $t9, $at, .L80AE02C4       
/* 02560 80AE02B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02564 80AE02B4 0C00B2DD */  jal     Flags_SetSwitch
              
/* 02568 80AE02B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0256C 80AE02BC 10000004 */  beq     $zero, $zero, .L80AE02D0   
/* 02570 80AE02C0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80AE02C4:
/* 02574 80AE02C4 0C00B2DD */  jal     Flags_SetSwitch
              
/* 02578 80AE02C8 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 0257C 80AE02CC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80AE02D0:
/* 02580 80AE02D0 0C2B7A54 */  jal     func_80ADE950              
/* 02584 80AE02D4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02588 80AE02D8 10000010 */  beq     $zero, $zero, .L80AE031C   
/* 0258C 80AE02DC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AE02E0:
/* 02590 80AE02E0 0C00BCCD */  jal     func_8002F334              
/* 02594 80AE02E4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02598 80AE02E8 5040000C */  beql    $v0, $zero, .L80AE031C     
/* 0259C 80AE02EC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 025A0 80AE02F0 9628010E */  lhu     $t0, 0x010E($s1)           ## 0000010E
/* 025A4 80AE02F4 24015000 */  addiu   $at, $zero, 0x5000         ## $at = 00005000
/* 025A8 80AE02F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025AC 80AE02FC 55010004 */  bnel    $t0, $at, .L80AE0310       
/* 025B0 80AE0300 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 025B4 80AE0304 0C00B2DD */  jal     Flags_SetSwitch
              
/* 025B8 80AE0308 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 025BC 80AE030C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80AE0310:
/* 025C0 80AE0310 0C2B7A54 */  jal     func_80ADE950              
/* 025C4 80AE0314 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
.L80AE0318:
/* 025C8 80AE0318 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AE031C:
/* 025CC 80AE031C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 025D0 80AE0320 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 025D4 80AE0324 03E00008 */  jr      $ra                        
/* 025D8 80AE0328 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
