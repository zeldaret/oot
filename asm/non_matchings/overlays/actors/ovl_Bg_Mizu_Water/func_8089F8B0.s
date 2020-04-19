glabel func_8089F8B0
/* 00000 8089F8B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 8089F8B4 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00008 8089F8B8 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 0000C 8089F8BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00010 8089F8C0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00014 8089F8C4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00018 8089F8C8 844E1514 */  lh      $t6, 0x1514($v0)           ## 80161514
/* 0001C 8089F8CC 51C0001D */  beql    $t6, $zero, .L8089F944     
/* 00020 8089F8D0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00024 8089F8D4 84431516 */  lh      $v1, 0x1516($v0)           ## 80161516
/* 00028 8089F8D8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0002C 8089F8DC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00030 8089F8E0 10600008 */  beq     $v1, $zero, .L8089F904     
/* 00034 8089F8E4 00000000 */  nop
/* 00038 8089F8E8 1061000B */  beq     $v1, $at, .L8089F918       
/* 0003C 8089F8EC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00040 8089F8F0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00044 8089F8F4 1061000D */  beq     $v1, $at, .L8089F92C       
/* 00048 8089F8F8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0004C 8089F8FC 10000010 */  beq     $zero, $zero, .L8089F940   
/* 00050 8089F900 A4401514 */  sh      $zero, 0x1514($v0)         ## 80161514
.L8089F904:
/* 00054 8089F904 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00058 8089F908 2405001C */  addiu   $a1, $zero, 0x001C         ## $a1 = 0000001C
/* 0005C 8089F90C 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00060 8089F910 1000000A */  beq     $zero, $zero, .L8089F93C   
/* 00064 8089F914 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
.L8089F918:
/* 00068 8089F918 0C00B2DD */  jal     Flags_SetSwitch
              
/* 0006C 8089F91C 2405001D */  addiu   $a1, $zero, 0x001D         ## $a1 = 0000001D
/* 00070 8089F920 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00074 8089F924 10000005 */  beq     $zero, $zero, .L8089F93C   
/* 00078 8089F928 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
.L8089F92C:
/* 0007C 8089F92C 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00080 8089F930 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 00084 8089F934 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 00088 8089F938 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
.L8089F93C:
/* 0008C 8089F93C A4401514 */  sh      $zero, 0x1514($v0)         ## 80161514
.L8089F940:
/* 00090 8089F940 8FA4001C */  lw      $a0, 0x001C($sp)           
.L8089F944:
/* 00094 8089F944 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00098 8089F948 2405001C */  addiu   $a1, $zero, 0x001C         ## $a1 = 0000001C
/* 0009C 8089F94C 10400006 */  beq     $v0, $zero, .L8089F968     
/* 000A0 8089F950 87AF001A */  lh      $t7, 0x001A($sp)           
/* 000A4 8089F954 2401001C */  addiu   $at, $zero, 0x001C         ## $at = 0000001C
/* 000A8 8089F958 51E10004 */  beql    $t7, $at, .L8089F96C       
/* 000AC 8089F95C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 000B0 8089F960 10000016 */  beq     $zero, $zero, .L8089F9BC   
/* 000B4 8089F964 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
.L8089F968:
/* 000B8 8089F968 8FA4001C */  lw      $a0, 0x001C($sp)           
.L8089F96C:
/* 000BC 8089F96C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 000C0 8089F970 2405001D */  addiu   $a1, $zero, 0x001D         ## $a1 = 0000001D
/* 000C4 8089F974 10400006 */  beq     $v0, $zero, .L8089F990     
/* 000C8 8089F978 87B8001A */  lh      $t8, 0x001A($sp)           
/* 000CC 8089F97C 2401001D */  addiu   $at, $zero, 0x001D         ## $at = 0000001D
/* 000D0 8089F980 53010004 */  beql    $t8, $at, .L8089F994       
/* 000D4 8089F984 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 000D8 8089F988 1000000C */  beq     $zero, $zero, .L8089F9BC   
/* 000DC 8089F98C 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
.L8089F990:
/* 000E0 8089F990 8FA4001C */  lw      $a0, 0x001C($sp)           
.L8089F994:
/* 000E4 8089F994 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 000E8 8089F998 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 000EC 8089F99C 10400006 */  beq     $v0, $zero, .L8089F9B8     
/* 000F0 8089F9A0 87B9001A */  lh      $t9, 0x001A($sp)           
/* 000F4 8089F9A4 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 000F8 8089F9A8 53210004 */  beql    $t9, $at, .L8089F9BC       
/* 000FC 8089F9AC 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00100 8089F9B0 10000002 */  beq     $zero, $zero, .L8089F9BC   
/* 00104 8089F9B4 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L8089F9B8:
/* 00108 8089F9B8 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8089F9BC:
/* 0010C 8089F9BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00110 8089F9C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00114 8089F9C4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00118 8089F9C8 03E00008 */  jr      $ra                        
/* 0011C 8089F9CC 00000000 */  nop
