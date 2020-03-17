glabel EnRu1_Init
/* 05500 80AF0110 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 05504 80AF0114 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 05508 80AF0118 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 0550C 80AF011C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05510 80AF0120 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 05514 80AF0124 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 05518 80AF0128 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 0551C 80AF012C 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 05520 80AF0130 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 05524 80AF0134 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 05528 80AF0138 0C00AC78 */  jal     ActorShape_Init
              
/* 0552C 80AF013C 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 05530 80AF0140 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 05534 80AF0144 260E0190 */  addiu   $t6, $s0, 0x0190           ## $t6 = 00000190
/* 05538 80AF0148 260F01F6 */  addiu   $t7, $s0, 0x01F6           ## $t7 = 000001F6
/* 0553C 80AF014C 24180011 */  addiu   $t8, $zero, 0x0011         ## $t8 = 00000011
/* 05540 80AF0150 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 05544 80AF0154 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 05548 80AF0158 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0554C 80AF015C 24C62700 */  addiu   $a2, $a2, 0x2700           ## $a2 = 06012700
/* 05550 80AF0160 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 05554 80AF0164 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 05558 80AF0168 0C0291BE */  jal     func_800A46F8              
/* 0555C 80AF016C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 05560 80AF0170 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05564 80AF0174 0C2BAB48 */  jal     func_80AEAD20              
/* 05568 80AF0178 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0556C 80AF017C 0C2BAB7C */  jal     func_80AEADF0              
/* 05570 80AF0180 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05574 80AF0184 2C41000B */  sltiu   $at, $v0, 0x000B           
/* 05578 80AF0188 1020002E */  beq     $at, $zero, .L80AF0244     
/* 0557C 80AF018C 0002C880 */  sll     $t9, $v0,  2               
/* 05580 80AF0190 3C0180AF */  lui     $at, %hi(jtbl_80AF1C60)       ## $at = 80AF0000
/* 05584 80AF0194 00390821 */  addu    $at, $at, $t9              
/* 05588 80AF0198 8C391C60 */  lw      $t9, %lo(jtbl_80AF1C60)($at)  
/* 0558C 80AF019C 03200008 */  jr      $t9                        
/* 05590 80AF01A0 00000000 */  nop
glabel L80AF01A4
/* 05594 80AF01A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05598 80AF01A8 0C2BB368 */  jal     func_80AECDA0              
/* 0559C 80AF01AC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 055A0 80AF01B0 1000002D */  beq     $zero, $zero, .L80AF0268   
/* 055A4 80AF01B4 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L80AF01B8
/* 055A8 80AF01B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 055AC 80AF01BC 0C2BACF7 */  jal     func_80AEB3DC              
/* 055B0 80AF01C0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 055B4 80AF01C4 10000028 */  beq     $zero, $zero, .L80AF0268   
/* 055B8 80AF01C8 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L80AF01CC
/* 055BC 80AF01CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 055C0 80AF01D0 0C2BB0C8 */  jal     func_80AEC320              
/* 055C4 80AF01D4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 055C8 80AF01D8 10000023 */  beq     $zero, $zero, .L80AF0268   
/* 055CC 80AF01DC 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L80AF01E0
/* 055D0 80AF01E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 055D4 80AF01E4 0C2BB513 */  jal     func_80AED44C              
/* 055D8 80AF01E8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 055DC 80AF01EC 1000001E */  beq     $zero, $zero, .L80AF0268   
/* 055E0 80AF01F0 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L80AF01F4
/* 055E4 80AF01F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 055E8 80AF01F8 0C2BBF15 */  jal     func_80AEFC54              
/* 055EC 80AF01FC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 055F0 80AF0200 10000019 */  beq     $zero, $zero, .L80AF0268   
/* 055F4 80AF0204 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L80AF0208
/* 055F8 80AF0208 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 055FC 80AF020C 0C2BBF4E */  jal     func_80AEFD38              
/* 05600 80AF0210 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05604 80AF0214 10000014 */  beq     $zero, $zero, .L80AF0268   
/* 05608 80AF0218 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L80AF021C
/* 0560C 80AF021C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05610 80AF0220 0C2BBFE5 */  jal     func_80AEFF94              
/* 05614 80AF0224 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05618 80AF0228 1000000F */  beq     $zero, $zero, .L80AF0268   
/* 0561C 80AF022C 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L80AF0230
/* 05620 80AF0230 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05624 80AF0234 0C2BC014 */  jal     func_80AF0050              
/* 05628 80AF0238 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0562C 80AF023C 1000000A */  beq     $zero, $zero, .L80AF0268   
/* 05630 80AF0240 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L80AF0244
.L80AF0244:
/* 05634 80AF0244 0C00B55C */  jal     Actor_Kill
              
/* 05638 80AF0248 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0563C 80AF024C 0C2BAB7C */  jal     func_80AEADF0              
/* 05640 80AF0250 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05644 80AF0254 3C0480AF */  lui     $a0, %hi(D_80AF1AFC)       ## $a0 = 80AF0000
/* 05648 80AF0258 24841AFC */  addiu   $a0, $a0, %lo(D_80AF1AFC)  ## $a0 = 80AF1AFC
/* 0564C 80AF025C 0C00084C */  jal     osSyncPrintf
              
/* 05650 80AF0260 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 05654 80AF0264 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AF0268:
/* 05658 80AF0268 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 0565C 80AF026C 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 05660 80AF0270 03E00008 */  jr      $ra                        
/* 05664 80AF0274 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


