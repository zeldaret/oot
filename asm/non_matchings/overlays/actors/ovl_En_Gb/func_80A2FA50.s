glabel func_80A2FA50
/* 008D0 80A2FA50 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 008D4 80A2FA54 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 008D8 80A2FA58 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 008DC 80A2FA5C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 008E0 80A2FA60 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 008E4 80A2FA64 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 008E8 80A2FA68 0C042F6F */  jal     func_8010BDBC              
/* 008EC 80A2FA6C 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 008F0 80A2FA70 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 008F4 80A2FA74 5441002E */  bnel    $v0, $at, .L80A2FB30       
/* 008F8 80A2FA78 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 008FC 80A2FA7C 0C041AF2 */  jal     func_80106BC8              
/* 00900 80A2FA80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00904 80A2FA84 10400029 */  beq     $v0, $zero, .L80A2FB2C     
/* 00908 80A2FA88 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0090C 80A2FA8C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00910 80A2FA90 94430F0E */  lhu     $v1, 0x0F0E($v0)           ## 8015F56E
/* 00914 80A2FA94 306E0040 */  andi    $t6, $v1, 0x0040           ## $t6 = 00000000
/* 00918 80A2FA98 15C00002 */  bne     $t6, $zero, .L80A2FAA4     
/* 0091C 80A2FA9C 346F0040 */  ori     $t7, $v1, 0x0040           ## $t7 = 00000040
/* 00920 80A2FAA0 A44F0F0E */  sh      $t7, 0x0F0E($v0)           ## 8015F56E
.L80A2FAA4:
/* 00924 80A2FAA4 0C28BC60 */  jal     func_80A2F180              
/* 00928 80A2FAA8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0092C 80A2FAAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00930 80A2FAB0 8E051C44 */  lw      $a1, 0x1C44($s0)           ## 00001C44
/* 00934 80A2FAB4 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00938 80A2FAB8 0C023B67 */  jal     func_8008ED9C              
/* 0093C 80A2FABC 2407001E */  addiu   $a3, $zero, 0x001E         ## $a3 = 0000001E
/* 00940 80A2FAC0 0C021CC3 */  jal     Rupees_ChangeBy              
/* 00944 80A2FAC4 24040032 */  addiu   $a0, $zero, 0x0032         ## $a0 = 00000032
/* 00948 80A2FAC8 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0094C 80A2FACC 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00950 80A2FAD0 8C580EBC */  lw      $t8, 0x0EBC($v0)           ## 8015F51C
/* 00954 80A2FAD4 240103E8 */  addiu   $at, $zero, 0x03E8         ## $at = 000003E8
/* 00958 80A2FAD8 240A70F8 */  addiu   $t2, $zero, 0x70F8         ## $t2 = 000070F8
/* 0095C 80A2FADC 27190064 */  addiu   $t9, $t8, 0x0064           ## $t9 = 00000064
/* 00960 80A2FAE0 13210009 */  beq     $t9, $at, .L80A2FB08       
/* 00964 80A2FAE4 AC590EBC */  sw      $t9, 0x0EBC($v0)           ## 8015F51C
/* 00968 80A2FAE8 2B21044D */  slti    $at, $t9, 0x044D           
/* 0096C 80A2FAEC 14200003 */  bne     $at, $zero, .L80A2FAFC     
/* 00970 80A2FAF0 3C0980A3 */  lui     $t1, %hi(func_80A2F83C)    ## $t1 = 80A30000
/* 00974 80A2FAF4 2408044C */  addiu   $t0, $zero, 0x044C         ## $t0 = 0000044C
/* 00978 80A2FAF8 AC480EBC */  sw      $t0, 0x0EBC($v0)           ## 8015F51C
.L80A2FAFC:
/* 0097C 80A2FAFC 2529F83C */  addiu   $t1, $t1, %lo(func_80A2F83C) ## $t1 = 80A2F83C
/* 00980 80A2FB00 1000000A */  beq     $zero, $zero, .L80A2FB2C   
/* 00984 80A2FB04 AE290238 */  sw      $t1, 0x0238($s1)           ## 00000238
.L80A2FB08:
/* 00988 80A2FB08 8E021C44 */  lw      $v0, 0x1C44($s0)           ## 00001C44
/* 0098C 80A2FB0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00990 80A2FB10 3145FFFF */  andi    $a1, $t2, 0xFFFF           ## $a1 = 000070F8
/* 00994 80A2FB14 A0400693 */  sb      $zero, 0x0693($v0)         ## 8015ECF3
/* 00998 80A2FB18 0C042DC8 */  jal     func_8010B720              
/* 0099C 80A2FB1C A62A037E */  sh      $t2, 0x037E($s1)           ## 0000037E
/* 009A0 80A2FB20 3C0B80A3 */  lui     $t3, %hi(func_80A2FB40)    ## $t3 = 80A30000
/* 009A4 80A2FB24 256BFB40 */  addiu   $t3, $t3, %lo(func_80A2FB40) ## $t3 = 80A2FB40
/* 009A8 80A2FB28 AE2B0238 */  sw      $t3, 0x0238($s1)           ## 00000238
.L80A2FB2C:
/* 009AC 80A2FB2C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A2FB30:
/* 009B0 80A2FB30 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 009B4 80A2FB34 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 009B8 80A2FB38 03E00008 */  jr      $ra                        
/* 009BC 80A2FB3C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
