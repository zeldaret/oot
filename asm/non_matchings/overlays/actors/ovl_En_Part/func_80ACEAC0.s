glabel func_80ACEAC0
/* 00CF0 80ACEAC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CF4 80ACEAC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CF8 80ACEAC8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00CFC 80ACEACC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00D00 80ACEAD0 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00D04 80ACEAD4 0C031A73 */  jal     Graph_Alloc
              
/* 00D08 80ACEAD8 24050020 */  addiu   $a1, $zero, 0x0020         ## $a1 = 00000020
/* 00D0C 80ACEADC 3C0EE700 */  lui     $t6, 0xE700                ## $t6 = E7000000
/* 00D10 80ACEAE0 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00D14 80ACEAE4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 00D18 80ACEAE8 24440008 */  addiu   $a0, $v0, 0x0008           ## $a0 = 00000008
/* 00D1C 80ACEAEC AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 00D20 80ACEAF0 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000008
/* 00D24 80ACEAF4 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 00D28 80ACEAF8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000008
/* 00D2C 80ACEAFC 93AA0023 */  lbu     $t2, 0x0023($sp)           
/* 00D30 80ACEB00 93B9001F */  lbu     $t9, 0x001F($sp)           
/* 00D34 80ACEB04 93AE0027 */  lbu     $t6, 0x0027($sp)           
/* 00D38 80ACEB08 000A5C00 */  sll     $t3, $t2, 16               
/* 00D3C 80ACEB0C 00194600 */  sll     $t0, $t9, 24               
/* 00D40 80ACEB10 010B6025 */  or      $t4, $t0, $t3              ## $t4 = 00000000
/* 00D44 80ACEB14 000E7A00 */  sll     $t7, $t6,  8               
/* 00D48 80ACEB18 018FC025 */  or      $t8, $t4, $t7              ## $t8 = FA000000
/* 00D4C 80ACEB1C 371900FF */  ori     $t9, $t8, 0x00FF           ## $t9 = FA0000FF
/* 00D50 80ACEB20 AC590004 */  sw      $t9, 0x0004($v0)           ## 0000000C
/* 00D54 80ACEB24 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000010
/* 00D58 80ACEB28 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000010
/* 00D5C 80ACEB2C 3C09FB00 */  lui     $t1, 0xFB00                ## $t1 = FB000000
/* 00D60 80ACEB30 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000010
/* 00D64 80ACEB34 93AE002F */  lbu     $t6, 0x002F($sp)           
/* 00D68 80ACEB38 93A8002B */  lbu     $t0, 0x002B($sp)           
/* 00D6C 80ACEB3C 93B90033 */  lbu     $t9, 0x0033($sp)           
/* 00D70 80ACEB40 000E6400 */  sll     $t4, $t6, 16               
/* 00D74 80ACEB44 00085E00 */  sll     $t3, $t0, 24               
/* 00D78 80ACEB48 016C7825 */  or      $t7, $t3, $t4              ## $t7 = 00000000
/* 00D7C 80ACEB4C 00194A00 */  sll     $t1, $t9,  8               
/* 00D80 80ACEB50 01E95025 */  or      $t2, $t7, $t1              ## $t2 = FB000000
/* 00D84 80ACEB54 354800FF */  ori     $t0, $t2, 0x00FF           ## $t0 = FB0000FF
/* 00D88 80ACEB58 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000014
/* 00D8C 80ACEB5C 3C0DDF00 */  lui     $t5, 0xDF00                ## $t5 = DF000000
/* 00D90 80ACEB60 AC8D0008 */  sw      $t5, 0x0008($a0)           ## 00000018
/* 00D94 80ACEB64 AC80000C */  sw      $zero, 0x000C($a0)         ## 0000001C
/* 00D98 80ACEB68 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D9C 80ACEB6C 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000018
/* 00DA0 80ACEB70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DA4 80ACEB74 03E00008 */  jr      $ra                        
/* 00DA8 80ACEB78 00A01025 */  or      $v0, $a1, $zero            ## $v0 = 00000000


