glabel EnArrow_Update
/* 00D88 809B46A8 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00D8C 809B46AC AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00D90 809B46B0 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00D94 809B46B4 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00D98 809B46B8 908E024B */  lbu     $t6, 0x024B($a0)           ## 0000024B
/* 00D9C 809B46BC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00DA0 809B46C0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00DA4 809B46C4 15C0000C */  bne     $t6, $zero, .L809B46F8     
/* 00DA8 809B46C8 8CA61C44 */  lw      $a2, 0x1C44($a1)           ## 00001C44
/* 00DAC 809B46CC 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 00DB0 809B46D0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DB4 809B46D4 05E00004 */  bltz    $t7, .L809B46E8            
/* 00DB8 809B46D8 00000000 */  nop
/* 00DBC 809B46DC 90D80A73 */  lbu     $t8, 0x0A73($a2)           ## 00000A73
/* 00DC0 809B46E0 57000006 */  bnel    $t8, $zero, .L809B46FC     
/* 00DC4 809B46E4 8E19025C */  lw      $t9, 0x025C($s0)           ## 0000025C
.L809B46E8:
/* 00DC8 809B46E8 0C023A37 */  jal     Player_InBlockingCsMode              
/* 00DCC 809B46EC 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 00DD0 809B46F0 54400007 */  bnel    $v0, $zero, .L809B4710     
/* 00DD4 809B46F4 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L809B46F8:
/* 00DD8 809B46F8 8E19025C */  lw      $t9, 0x025C($s0)           ## 0000025C
.L809B46FC:
/* 00DDC 809B46FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DE0 809B4700 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00DE4 809B4704 0320F809 */  jalr    $ra, $t9                   
/* 00DE8 809B4708 00000000 */  nop
/* 00DEC 809B470C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L809B4710:
/* 00DF0 809B4710 28410003 */  slti    $at, $v0, 0x0003           
/* 00DF4 809B4714 14200022 */  bne     $at, $zero, .L809B47A0     
/* 00DF8 809B4718 28410009 */  slti    $at, $v0, 0x0009           
/* 00DFC 809B471C 10200020 */  beq     $at, $zero, .L809B47A0     
/* 00E00 809B4720 3C08809B */  lui     $t0, %hi(D_809B4E5C)       ## $t0 = 809B0000
/* 00E04 809B4724 25084E5C */  addiu   $t0, $t0, %lo(D_809B4E5C)  ## $t0 = 809B4E5C
/* 00E08 809B4728 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 809B4E5C
/* 00E0C 809B472C 27A20048 */  addiu   $v0, $sp, 0x0048           ## $v0 = FFFFFFE8
/* 00E10 809B4730 AC4A0000 */  sw      $t2, 0x0000($v0)           ## FFFFFFE8
/* 00E14 809B4734 8D090004 */  lw      $t1, 0x0004($t0)           ## 809B4E60
/* 00E18 809B4738 AC490004 */  sw      $t1, 0x0004($v0)           ## FFFFFFEC
/* 00E1C 809B473C 8D0A0008 */  lw      $t2, 0x0008($t0)           ## 809B4E64
/* 00E20 809B4740 AC4A0008 */  sw      $t2, 0x0008($v0)           ## FFFFFFF0
/* 00E24 809B4744 8E0B011C */  lw      $t3, 0x011C($s0)           ## 0000011C
/* 00E28 809B4748 55600029 */  bnel    $t3, $zero, .L809B47F0     
/* 00E2C 809B474C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00E30 809B4750 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 00E34 809B4754 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00E38 809B4758 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 00E3C 809B475C 000C6840 */  sll     $t5, $t4,  1               
/* 00E40 809B4760 004D7021 */  addu    $t6, $v0, $t5              
/* 00E44 809B4764 85C7FFFA */  lh      $a3, -0x0006($t6)          ## FFFFFFFA
/* 00E48 809B4768 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00E4C 809B476C C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00E50 809B4770 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00E54 809B4774 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 00E58 809B4778 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00E5C 809B477C C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00E60 809B4780 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00E64 809B4784 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00E68 809B4788 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00E6C 809B478C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00E70 809B4790 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 00E74 809B4794 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00E78 809B4798 10000015 */  beq     $zero, $zero, .L809B47F0   
/* 00E7C 809B479C 8FBF003C */  lw      $ra, 0x003C($sp)           
.L809B47A0:
/* 00E80 809B47A0 14400012 */  bne     $v0, $zero, .L809B47EC     
/* 00E84 809B47A4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E88 809B47A8 3C0F809B */  lui     $t7, %hi(D_809B4E80)       ## $t7 = 809B0000
/* 00E8C 809B47AC 3C18809B */  lui     $t8, %hi(D_809B4E84)       ## $t8 = 809B0000
/* 00E90 809B47B0 27184E84 */  addiu   $t8, $t8, %lo(D_809B4E84)  ## $t8 = 809B4E84
/* 00E94 809B47B4 25EF4E80 */  addiu   $t7, $t7, %lo(D_809B4E80)  ## $t7 = 809B4E80
/* 00E98 809B47B8 3C06809B */  lui     $a2, %hi(D_809B4E68)       ## $a2 = 809B0000
/* 00E9C 809B47BC 3C07809B */  lui     $a3, %hi(D_809B4E74)       ## $a3 = 809B0000
/* 00EA0 809B47C0 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 00EA4 809B47C4 24080008 */  addiu   $t0, $zero, 0x0008         ## $t0 = 00000008
/* 00EA8 809B47C8 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 00EAC 809B47CC AFB90018 */  sw      $t9, 0x0018($sp)           
/* 00EB0 809B47D0 24E74E74 */  addiu   $a3, $a3, %lo(D_809B4E74)  ## $a3 = 809B4E74
/* 00EB4 809B47D4 24C64E68 */  addiu   $a2, $a2, %lo(D_809B4E68)  ## $a2 = 809B4E68
/* 00EB8 809B47D8 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00EBC 809B47DC AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00EC0 809B47E0 2605021C */  addiu   $a1, $s0, 0x021C           ## $a1 = 0000021C
/* 00EC4 809B47E4 0C00A0DB */  jal     func_8002836C              
/* 00EC8 809B47E8 AFA0001C */  sw      $zero, 0x001C($sp)         
.L809B47EC:
/* 00ECC 809B47EC 8FBF003C */  lw      $ra, 0x003C($sp)           
.L809B47F0:
/* 00ED0 809B47F0 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00ED4 809B47F4 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 00ED8 809B47F8 03E00008 */  jr      $ra                        
/* 00EDC 809B47FC 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
