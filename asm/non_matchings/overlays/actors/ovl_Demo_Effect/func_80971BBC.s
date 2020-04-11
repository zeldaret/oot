.late_rodata
glabel D_80976CE0
    .float 0.1

.text
glabel func_80971BBC
/* 00C6C 80971BBC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00C70 80971BC0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C74 80971BC4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C78 80971BC8 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00C7C 80971BCC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C80 80971BD0 51C00086 */  beql    $t6, $zero, .L80971DEC     
/* 00C84 80971BD4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C88 80971BD8 8486018C */  lh      $a2, 0x018C($a0)           ## 0000018C
/* 00C8C 80971BDC 00067880 */  sll     $t7, $a2,  2               
/* 00C90 80971BE0 00AFC021 */  addu    $t8, $a1, $t7              
/* 00C94 80971BE4 8F191D8C */  lw      $t9, 0x1D8C($t8)           ## 00001D8C
/* 00C98 80971BE8 53200080 */  beql    $t9, $zero, .L80971DEC     
/* 00C9C 80971BEC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00CA0 80971BF0 90880184 */  lbu     $t0, 0x0184($a0)           ## 00000184
/* 00CA4 80971BF4 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 00CA8 80971BF8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 00CAC 80971BFC 51000006 */  beql    $t0, $zero, .L80971C18     
/* 00CB0 80971C00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CB4 80971C04 0C25D9C3 */  jal     func_8097670C              
/* 00CB8 80971C08 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00CBC 80971C0C 10000007 */  beq     $zero, $zero, .L80971C2C   
/* 00CC0 80971C10 920A0186 */  lbu     $t2, 0x0186($s0)           ## 00000186
/* 00CC4 80971C14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80971C18:
/* 00CC8 80971C18 0C25D9EC */  jal     func_809767B0              
/* 00CCC 80971C1C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00CD0 80971C20 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00CD4 80971C24 A2090184 */  sb      $t1, 0x0184($s0)           ## 00000184
/* 00CD8 80971C28 920A0186 */  lbu     $t2, 0x0186($s0)           ## 00000186
.L80971C2C:
/* 00CDC 80971C2C 24010061 */  addiu   $at, $zero, 0x0061         ## $at = 00000061
/* 00CE0 80971C30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CE4 80971C34 11410004 */  beq     $t2, $at, .L80971C48       
/* 00CE8 80971C38 3C053E4C */  lui     $a1, 0x3E4C                ## $a1 = 3E4C0000
/* 00CEC 80971C3C 240BE0C0 */  addiu   $t3, $zero, 0xE0C0         ## $t3 = FFFFE0C0
/* 00CF0 80971C40 10000004 */  beq     $zero, $zero, .L80971C54   
/* 00CF4 80971C44 A60B00B4 */  sh      $t3, 0x00B4($s0)           ## 000000B4
.L80971C48:
/* 00CF8 80971C48 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 00CFC 80971C4C 258D0400 */  addiu   $t5, $t4, 0x0400           ## $t5 = 00000400
/* 00D00 80971C50 A60D00B6 */  sh      $t5, 0x00B6($s0)           ## 000000B6
.L80971C54:
/* 00D04 80971C54 0C00B58B */  jal     Actor_SetScale
              
/* 00D08 80971C58 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3E4CCCCD
/* 00D0C 80971C5C 3C078016 */  lui     $a3, 0x8016                ## $a3 = 80160000
/* 00D10 80971C60 24E7E660 */  addiu   $a3, $a3, 0xE660           ## $a3 = 8015E660
/* 00D14 80971C64 8CEE0000 */  lw      $t6, 0x0000($a3)           ## 8015E660
/* 00D18 80971C68 24030053 */  addiu   $v1, $zero, 0x0053         ## $v1 = 00000053
/* 00D1C 80971C6C 546E001B */  bnel    $v1, $t6, .L80971CDC       
/* 00D20 80971C70 8609018C */  lh      $t1, 0x018C($s0)           ## 0000018C
/* 00D24 80971C74 860F018C */  lh      $t7, 0x018C($s0)           ## 0000018C
/* 00D28 80971C78 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00D2C 80971C7C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00D30 80971C80 000FC080 */  sll     $t8, $t7,  2               
/* 00D34 80971C84 00B8C821 */  addu    $t9, $a1, $t8              
/* 00D38 80971C88 8F281D8C */  lw      $t0, 0x1D8C($t9)           ## 00001D8C
/* 00D3C 80971C8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D40 80971C90 95020000 */  lhu     $v0, 0x0000($t0)           ## 00000000
/* 00D44 80971C94 10410005 */  beq     $v0, $at, .L80971CAC       
/* 00D48 80971C98 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00D4C 80971C9C 10410009 */  beq     $v0, $at, .L80971CC4       
/* 00D50 80971CA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D54 80971CA4 1000000D */  beq     $zero, $zero, .L80971CDC   
/* 00D58 80971CA8 8609018C */  lh      $t1, 0x018C($s0)           ## 0000018C
.L80971CAC:
/* 00D5C 80971CAC 0C25C68A */  jal     func_80971A28              
/* 00D60 80971CB0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00D64 80971CB4 3C078016 */  lui     $a3, 0x8016                ## $a3 = 80160000
/* 00D68 80971CB8 24E7E660 */  addiu   $a3, $a3, 0xE660           ## $a3 = 8015E660
/* 00D6C 80971CBC 10000006 */  beq     $zero, $zero, .L80971CD8   
/* 00D70 80971CC0 24030053 */  addiu   $v1, $zero, 0x0053         ## $v1 = 00000053
.L80971CC4:
/* 00D74 80971CC4 0C25C68A */  jal     func_80971A28              
/* 00D78 80971CC8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00D7C 80971CCC 3C078016 */  lui     $a3, 0x8016                ## $a3 = 80160000
/* 00D80 80971CD0 24E7E660 */  addiu   $a3, $a3, 0xE660           ## $a3 = 8015E660
/* 00D84 80971CD4 24030053 */  addiu   $v1, $zero, 0x0053         ## $v1 = 00000053
.L80971CD8:
/* 00D88 80971CD8 8609018C */  lh      $t1, 0x018C($s0)           ## 0000018C
.L80971CDC:
/* 00D8C 80971CDC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00D90 80971CE0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00D94 80971CE4 00095080 */  sll     $t2, $t1,  2               
/* 00D98 80971CE8 00AA5821 */  addu    $t3, $a1, $t2              
/* 00D9C 80971CEC 8D6C1D8C */  lw      $t4, 0x1D8C($t3)           ## 00001D8C
/* 00DA0 80971CF0 95820000 */  lhu     $v0, 0x0000($t4)           ## 00000000
/* 00DA4 80971CF4 10410007 */  beq     $v0, $at, .L80971D14       
/* 00DA8 80971CF8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00DAC 80971CFC 10410019 */  beq     $v0, $at, .L80971D64       
/* 00DB0 80971D00 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00DB4 80971D04 10410036 */  beq     $v0, $at, .L80971DE0       
/* 00DB8 80971D08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DBC 80971D0C 10000037 */  beq     $zero, $zero, .L80971DEC   
/* 00DC0 80971D10 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80971D14:
/* 00DC4 80971D14 8CED0000 */  lw      $t5, 0x0000($a3)           ## 8015E660
/* 00DC8 80971D18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DCC 80971D1C 146D0005 */  bne     $v1, $t5, .L80971D34       
/* 00DD0 80971D20 00000000 */  nop
/* 00DD4 80971D24 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00DD8 80971D28 24052097 */  addiu   $a1, $zero, 0x2097         ## $a1 = 00002097
/* 00DDC 80971D2C 10000004 */  beq     $zero, $zero, .L80971D40   
/* 00DE0 80971D30 920E0186 */  lbu     $t6, 0x0186($s0)           ## 00000186
.L80971D34:
/* 00DE4 80971D34 0C01E233 */  jal     func_800788CC              
/* 00DE8 80971D38 24042095 */  addiu   $a0, $zero, 0x2095         ## $a0 = 00002095
/* 00DEC 80971D3C 920E0186 */  lbu     $t6, 0x0186($s0)           ## 00000186
.L80971D40:
/* 00DF0 80971D40 24010061 */  addiu   $at, $zero, 0x0061         ## $at = 00000061
/* 00DF4 80971D44 24193E80 */  addiu   $t9, $zero, 0x3E80         ## $t9 = 00003E80
/* 00DF8 80971D48 11C10004 */  beq     $t6, $at, .L80971D5C       
/* 00DFC 80971D4C 00000000 */  nop
/* 00E00 80971D50 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00E04 80971D54 25F83E80 */  addiu   $t8, $t7, 0x3E80           ## $t8 = 00003E80
/* 00E08 80971D58 A61800B6 */  sh      $t8, 0x00B6($s0)           ## 000000B6
.L80971D5C:
/* 00E0C 80971D5C 10000022 */  beq     $zero, $zero, .L80971DE8   
/* 00E10 80971D60 A6190188 */  sh      $t9, 0x0188($s0)           ## 00000188
.L80971D64:
/* 00E14 80971D64 86020188 */  lh      $v0, 0x0188($s0)           ## 00000188
/* 00E18 80971D68 3C018097 */  lui     $at, %hi(D_80976CE0)       ## $at = 80970000
/* 00E1C 80971D6C C4286CE0 */  lwc1    $f8, %lo(D_80976CE0)($at)  
/* 00E20 80971D70 2448FC18 */  addiu   $t0, $v0, 0xFC18           ## $t0 = FFFFFC18
/* 00E24 80971D74 44882000 */  mtc1    $t0, $f4                   ## $f4 = NaN
/* 00E28 80971D78 920E0186 */  lbu     $t6, 0x0186($s0)           ## 00000186
/* 00E2C 80971D7C 24010061 */  addiu   $at, $zero, 0x0061         ## $at = 00000061
/* 00E30 80971D80 468021A0 */  cvt.s.w $f6, $f4                   
/* 00E34 80971D84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E38 80971D88 46083282 */  mul.s   $f10, $f6, $f8             
/* 00E3C 80971D8C 4600540D */  trunc.w.s $f16, $f10                 
/* 00E40 80971D90 440C8000 */  mfc1    $t4, $f16                  
/* 00E44 80971D94 00000000 */  nop
/* 00E48 80971D98 004C6823 */  subu    $t5, $v0, $t4              
/* 00E4C 80971D9C 11C10005 */  beq     $t6, $at, .L80971DB4       
/* 00E50 80971DA0 A60D0188 */  sh      $t5, 0x0188($s0)           ## 00000188
/* 00E54 80971DA4 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00E58 80971DA8 86180188 */  lh      $t8, 0x0188($s0)           ## 00000188
/* 00E5C 80971DAC 01F8C821 */  addu    $t9, $t7, $t8              
/* 00E60 80971DB0 A61900B6 */  sh      $t9, 0x00B6($s0)           ## 000000B6
.L80971DB4:
/* 00E64 80971DB4 8CE80000 */  lw      $t0, 0x0000($a3)           ## 00000000
/* 00E68 80971DB8 14680005 */  bne     $v1, $t0, .L80971DD0       
/* 00E6C 80971DBC 00000000 */  nop
/* 00E70 80971DC0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00E74 80971DC4 24052097 */  addiu   $a1, $zero, 0x2097         ## $a1 = 00002097
/* 00E78 80971DC8 10000008 */  beq     $zero, $zero, .L80971DEC   
/* 00E7C 80971DCC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80971DD0:
/* 00E80 80971DD0 0C01E233 */  jal     func_800788CC              
/* 00E84 80971DD4 24042095 */  addiu   $a0, $zero, 0x2095         ## $a0 = 00002095
/* 00E88 80971DD8 10000004 */  beq     $zero, $zero, .L80971DEC   
/* 00E8C 80971DDC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80971DE0:
/* 00E90 80971DE0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00E94 80971DE4 24052095 */  addiu   $a1, $zero, 0x2095         ## $a1 = 00002095
.L80971DE8:
/* 00E98 80971DE8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80971DEC:
/* 00E9C 80971DEC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00EA0 80971DF0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00EA4 80971DF4 03E00008 */  jr      $ra                        
/* 00EA8 80971DF8 00000000 */  nop


