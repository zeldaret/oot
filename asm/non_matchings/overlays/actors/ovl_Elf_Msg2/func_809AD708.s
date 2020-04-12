.rdata
glabel D_809ADD40
    .asciz "../z_elf_msg2.c"
    .balign 4

glabel D_809ADD50
    .asciz "\"共倒れ\" = %s\n"
    .balign 4

glabel D_809ADD60
    .asciz "共倒れ"
    .balign 4

glabel D_809ADD68
    .asciz "../z_elf_msg2.c"
    .balign 4

glabel D_809ADD78
    .asciz "\"共倒れ２\" = %s\n"
    .balign 4

glabel D_809ADD8C
    .asciz "共倒れ２"
    .balign 4

glabel D_809ADD98
    .asciz "../z_elf_msg2.c"
    .balign 4

glabel D_809ADDA8
    .asciz "\"共倒れ\" = %s\n"
    .balign 4

glabel D_809ADDB8
    .asciz "共倒れ"
    .balign 4

.text
glabel func_809AD708
/* 00008 809AD708 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0000C 809AD70C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00010 809AD710 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00014 809AD714 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00018 809AD718 84820032 */  lh      $v0, 0x0032($a0)           ## 00000032
/* 0001C 809AD71C 1840001C */  blez    $v0, .L809AD790            
/* 00020 809AD720 28410041 */  slti    $at, $v0, 0x0041           
/* 00024 809AD724 1020001A */  beq     $at, $zero, .L809AD790     
/* 00028 809AD728 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0002C 809AD72C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00030 809AD730 2445FFFF */  addiu   $a1, $v0, 0xFFFF           ## $a1 = FFFFFFFF
/* 00034 809AD734 10400016 */  beq     $v0, $zero, .L809AD790     
/* 00038 809AD738 3C04809B */  lui     $a0, %hi(D_809ADD40)       ## $a0 = 809B0000
/* 0003C 809AD73C 2484DD40 */  addiu   $a0, $a0, %lo(D_809ADD40)  ## $a0 = 809ADD40
/* 00040 809AD740 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 00044 809AD744 240500AB */  addiu   $a1, $zero, 0x00AB         ## $a1 = 000000AB
/* 00048 809AD748 3C04809B */  lui     $a0, %hi(D_809ADD50)       ## $a0 = 809B0000
/* 0004C 809AD74C 3C05809B */  lui     $a1, %hi(D_809ADD60)       ## $a1 = 809B0000
/* 00050 809AD750 24A5DD60 */  addiu   $a1, $a1, %lo(D_809ADD60)  ## $a1 = 809ADD60
/* 00054 809AD754 0C00084C */  jal     osSyncPrintf
              
/* 00058 809AD758 2484DD50 */  addiu   $a0, $a0, %lo(D_809ADD50)  ## $a0 = 809ADD50
/* 0005C 809AD75C 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00060 809AD760 2401003F */  addiu   $at, $zero, 0x003F         ## $at = 0000003F
/* 00064 809AD764 85E5001C */  lh      $a1, 0x001C($t7)           ## 0000001C
/* 00068 809AD768 00052A03 */  sra     $a1, $a1,  8               
/* 0006C 809AD76C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00070 809AD770 10A10003 */  beq     $a1, $at, .L809AD780       
/* 00074 809AD774 00000000 */  nop
/* 00078 809AD778 0C00B2DD */  jal     Flags_SetSwitch
              
/* 0007C 809AD77C 8FA4001C */  lw      $a0, 0x001C($sp)           
.L809AD780:
/* 00080 809AD780 0C00B55C */  jal     Actor_Kill
              
/* 00084 809AD784 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00088 809AD788 1000003A */  beq     $zero, $zero, .L809AD874   
/* 0008C 809AD78C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L809AD790:
/* 00090 809AD790 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 00094 809AD794 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00098 809AD798 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0009C 809AD79C 87190032 */  lh      $t9, 0x0032($t8)           ## 00000032
/* 000A0 809AD7A0 5721001B */  bnel    $t9, $at, .L809AD810       
/* 000A4 809AD7A4 8FA90018 */  lw      $t1, 0x0018($sp)           
/* 000A8 809AD7A8 0C00B337 */  jal     Flags_GetClear
              
/* 000AC 809AD7AC 83050003 */  lb      $a1, 0x0003($t8)           ## 00000003
/* 000B0 809AD7B0 10400016 */  beq     $v0, $zero, .L809AD80C     
/* 000B4 809AD7B4 3C04809B */  lui     $a0, %hi(D_809ADD68)       ## $a0 = 809B0000
/* 000B8 809AD7B8 2484DD68 */  addiu   $a0, $a0, %lo(D_809ADD68)  ## $a0 = 809ADD68
/* 000BC 809AD7BC 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 000C0 809AD7C0 240500B6 */  addiu   $a1, $zero, 0x00B6         ## $a1 = 000000B6
/* 000C4 809AD7C4 3C04809B */  lui     $a0, %hi(D_809ADD78)       ## $a0 = 809B0000
/* 000C8 809AD7C8 3C05809B */  lui     $a1, %hi(D_809ADD8C)       ## $a1 = 809B0000
/* 000CC 809AD7CC 24A5DD8C */  addiu   $a1, $a1, %lo(D_809ADD8C)  ## $a1 = 809ADD8C
/* 000D0 809AD7D0 0C00084C */  jal     osSyncPrintf
              
/* 000D4 809AD7D4 2484DD78 */  addiu   $a0, $a0, %lo(D_809ADD78)  ## $a0 = 809ADD78
/* 000D8 809AD7D8 8FA80018 */  lw      $t0, 0x0018($sp)           
/* 000DC 809AD7DC 2401003F */  addiu   $at, $zero, 0x003F         ## $at = 0000003F
/* 000E0 809AD7E0 8505001C */  lh      $a1, 0x001C($t0)           ## 0000001C
/* 000E4 809AD7E4 00052A03 */  sra     $a1, $a1,  8               
/* 000E8 809AD7E8 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 000EC 809AD7EC 10A10003 */  beq     $a1, $at, .L809AD7FC       
/* 000F0 809AD7F0 00000000 */  nop
/* 000F4 809AD7F4 0C00B2DD */  jal     Flags_SetSwitch
              
/* 000F8 809AD7F8 8FA4001C */  lw      $a0, 0x001C($sp)           
.L809AD7FC:
/* 000FC 809AD7FC 0C00B55C */  jal     Actor_Kill
              
/* 00100 809AD800 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00104 809AD804 1000001B */  beq     $zero, $zero, .L809AD874   
/* 00108 809AD808 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L809AD80C:
/* 0010C 809AD80C 8FA90018 */  lw      $t1, 0x0018($sp)           
.L809AD810:
/* 00110 809AD810 2401003F */  addiu   $at, $zero, 0x003F         ## $at = 0000003F
/* 00114 809AD814 8525001C */  lh      $a1, 0x001C($t1)           ## 0000001C
/* 00118 809AD818 00052A03 */  sra     $a1, $a1,  8               
/* 0011C 809AD81C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00120 809AD820 14A10003 */  bne     $a1, $at, .L809AD830       
/* 00124 809AD824 00000000 */  nop
/* 00128 809AD828 10000012 */  beq     $zero, $zero, .L809AD874   
/* 0012C 809AD82C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809AD830:
/* 00130 809AD830 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00134 809AD834 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00138 809AD838 1040000D */  beq     $v0, $zero, .L809AD870     
/* 0013C 809AD83C 3C04809B */  lui     $a0, %hi(D_809ADD98)       ## $a0 = 809B0000
/* 00140 809AD840 2484DD98 */  addiu   $a0, $a0, %lo(D_809ADD98)  ## $a0 = 809ADD98
/* 00144 809AD844 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 00148 809AD848 240500C0 */  addiu   $a1, $zero, 0x00C0         ## $a1 = 000000C0
/* 0014C 809AD84C 3C04809B */  lui     $a0, %hi(D_809ADDA8)       ## $a0 = 809B0000
/* 00150 809AD850 3C05809B */  lui     $a1, %hi(D_809ADDB8)       ## $a1 = 809B0000
/* 00154 809AD854 24A5DDB8 */  addiu   $a1, $a1, %lo(D_809ADDB8)  ## $a1 = 809ADDB8
/* 00158 809AD858 0C00084C */  jal     osSyncPrintf
              
/* 0015C 809AD85C 2484DDA8 */  addiu   $a0, $a0, %lo(D_809ADDA8)  ## $a0 = 809ADDA8
/* 00160 809AD860 0C00B55C */  jal     Actor_Kill
              
/* 00164 809AD864 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00168 809AD868 10000002 */  beq     $zero, $zero, .L809AD874   
/* 0016C 809AD86C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L809AD870:
/* 00170 809AD870 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809AD874:
/* 00174 809AD874 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00178 809AD878 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0017C 809AD87C 03E00008 */  jr      $ra                        
/* 00180 809AD880 00000000 */  nop
