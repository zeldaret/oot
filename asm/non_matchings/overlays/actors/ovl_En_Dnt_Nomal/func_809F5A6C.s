.rdata
glabel D_809F5FBC
    .asciz "../z_en_dnt_nomal.c"
    .balign 4

glabel D_809F5FD0
    .asciz "../z_en_dnt_nomal.c"
    .balign 4

glabel D_809F5FE4
    .asciz "../z_en_dnt_nomal.c"
    .balign 4

.late_rodata
glabel D_809F6088
    .float 0.01

.text
glabel func_809F5A6C
/* 027AC 809F5A6C 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 027B0 809F5A70 3C0F809F */  lui     $t7, %hi(D_809F5E94)       ## $t7 = 809F0000
/* 027B4 809F5A74 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 027B8 809F5A78 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 027BC 809F5A7C AFB10024 */  sw      $s1, 0x0024($sp)           
/* 027C0 809F5A80 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 027C4 809F5A84 25EF5E94 */  addiu   $t7, $t7, %lo(D_809F5E94)  ## $t7 = 809F5E94
/* 027C8 809F5A88 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809F5E94
/* 027CC 809F5A8C 27AE0060 */  addiu   $t6, $sp, 0x0060           ## $t6 = FFFFFFF0
/* 027D0 809F5A90 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809F5E98
/* 027D4 809F5A94 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 027D8 809F5A98 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809F5E9C
/* 027DC 809F5A9C 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 027E0 809F5AA0 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 027E4 809F5AA4 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 027E8 809F5AA8 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 027EC 809F5AAC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 027F0 809F5AB0 3C06809F */  lui     $a2, %hi(D_809F5FBC)       ## $a2 = 809F0000
/* 027F4 809F5AB4 24C65FBC */  addiu   $a2, $a2, %lo(D_809F5FBC)  ## $a2 = 809F5FBC
/* 027F8 809F5AB8 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFD8
/* 027FC 809F5ABC 240706FE */  addiu   $a3, $zero, 0x06FE         ## $a3 = 000006FE
/* 02800 809F5AC0 0C031AB1 */  jal     Graph_OpenDisps              
/* 02804 809F5AC4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 02808 809F5AC8 0C024F46 */  jal     func_80093D18              
/* 0280C 809F5ACC 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 02810 809F5AD0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 02814 809F5AD4 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 02818 809F5AD8 35290020 */  ori     $t1, $t1, 0x0020           ## $t1 = DB060020
/* 0281C 809F5ADC 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 02820 809F5AE0 AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 02824 809F5AE4 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 02828 809F5AE8 862A0268 */  lh      $t2, 0x0268($s1)           ## 00000268
/* 0282C 809F5AEC 3C04809F */  lui     $a0, %hi(D_809F5EA0)       ## $a0 = 809F0000
/* 02830 809F5AF0 3C188016 */  lui     $t8, %hi(gSegments)
/* 02834 809F5AF4 000A5880 */  sll     $t3, $t2,  2               
/* 02838 809F5AF8 008B2021 */  addu    $a0, $a0, $t3              
/* 0283C 809F5AFC 8C845EA0 */  lw      $a0, %lo(D_809F5EA0)($a0)  
/* 02840 809F5B00 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 02844 809F5B04 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 02848 809F5B08 00046900 */  sll     $t5, $a0,  4               
/* 0284C 809F5B0C 000D7702 */  srl     $t6, $t5, 28               
/* 02850 809F5B10 000E7880 */  sll     $t7, $t6,  2               
/* 02854 809F5B14 030FC021 */  addu    $t8, $t8, $t7              
/* 02858 809F5B18 8F186FA8 */  lw      $t8, %lo(gSegments)($t8)
/* 0285C 809F5B1C 00816024 */  and     $t4, $a0, $at              
/* 02860 809F5B20 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02864 809F5B24 0198C821 */  addu    $t9, $t4, $t8              
/* 02868 809F5B28 03214021 */  addu    $t0, $t9, $at              
/* 0286C 809F5B2C AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 02870 809F5B30 3C09809F */  lui     $t1, %hi(func_809F59E4)    ## $t1 = 809F0000
/* 02874 809F5B34 252959E4 */  addiu   $t1, $t1, %lo(func_809F59E4) ## $t1 = 809F59E4
/* 02878 809F5B38 8E26016C */  lw      $a2, 0x016C($s1)           ## 0000016C
/* 0287C 809F5B3C 8E250150 */  lw      $a1, 0x0150($s1)           ## 00000150
/* 02880 809F5B40 3C07809F */  lui     $a3, %hi(func_809F58E4)    ## $a3 = 809F0000
/* 02884 809F5B44 24E758E4 */  addiu   $a3, $a3, %lo(func_809F58E4) ## $a3 = 809F58E4
/* 02888 809F5B48 AFB10014 */  sw      $s1, 0x0014($sp)           
/* 0288C 809F5B4C AFA90010 */  sw      $t1, 0x0010($sp)           
/* 02890 809F5B50 0C028572 */  jal     Skeleton_DrawOpa
              
/* 02894 809F5B54 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 02898 809F5B58 C62C021C */  lwc1    $f12, 0x021C($s1)          ## 0000021C
/* 0289C 809F5B5C C62E0220 */  lwc1    $f14, 0x0220($s1)          ## 00000220
/* 028A0 809F5B60 8E260224 */  lw      $a2, 0x0224($s1)           ## 00000224
/* 028A4 809F5B64 0C034261 */  jal     Matrix_Translate              
/* 028A8 809F5B68 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 028AC 809F5B6C 3C01809F */  lui     $at, %hi(D_809F6088)       ## $at = 809F0000
/* 028B0 809F5B70 C42C6088 */  lwc1    $f12, %lo(D_809F6088)($at) 
/* 028B4 809F5B74 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 028B8 809F5B78 44066000 */  mfc1    $a2, $f12                  
/* 028BC 809F5B7C 0C0342A3 */  jal     Matrix_Scale              
/* 028C0 809F5B80 46006386 */  mov.s   $f14, $f12                 
/* 028C4 809F5B84 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 028C8 809F5B88 3C0BE700 */  lui     $t3, 0xE700                ## $t3 = E7000000
/* 028CC 809F5B8C 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 028D0 809F5B90 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 028D4 809F5B94 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 028D8 809F5B98 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 028DC 809F5B9C AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 028E0 809F5BA0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 028E4 809F5BA4 3C18809F */  lui     $t8, %hi(D_809F5E4C)       ## $t8 = 809F0000
/* 028E8 809F5BA8 27185E4C */  addiu   $t8, $t8, %lo(D_809F5E4C)  ## $t8 = 809F5E4C
/* 028EC 809F5BAC 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 028F0 809F5BB0 AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 028F4 809F5BB4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 028F8 809F5BB8 862F026A */  lh      $t7, 0x026A($s1)           ## 0000026A
/* 028FC 809F5BBC 3C05809F */  lui     $a1, %hi(D_809F5FD0)       ## $a1 = 809F0000
/* 02900 809F5BC0 24A55FD0 */  addiu   $a1, $a1, %lo(D_809F5FD0)  ## $a1 = 809F5FD0
/* 02904 809F5BC4 000F6080 */  sll     $t4, $t7,  2               
/* 02908 809F5BC8 01981821 */  addu    $v1, $t4, $t8              
/* 0290C 809F5BCC 9068FFFE */  lbu     $t0, -0x0002($v1)          ## FFFFFFFE
/* 02910 809F5BD0 906BFFFC */  lbu     $t3, -0x0004($v1)          ## FFFFFFFC
/* 02914 809F5BD4 906CFFFD */  lbu     $t4, -0x0003($v1)          ## FFFFFFFD
/* 02918 809F5BD8 00084A00 */  sll     $t1, $t0,  8               
/* 0291C 809F5BDC 000B6E00 */  sll     $t5, $t3, 24               
/* 02920 809F5BE0 012D7025 */  or      $t6, $t1, $t5              ## $t6 = 00000008
/* 02924 809F5BE4 000CC400 */  sll     $t8, $t4, 16               
/* 02928 809F5BE8 01D8C825 */  or      $t9, $t6, $t8              ## $t9 = 809F5E4C
/* 0292C 809F5BEC 372800FF */  ori     $t0, $t9, 0x00FF           ## $t0 = 809F5EFF
/* 02930 809F5BF0 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 02934 809F5BF4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 02938 809F5BF8 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 0293C 809F5BFC 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 02940 809F5C00 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 02944 809F5C04 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 02948 809F5C08 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 0294C 809F5C0C 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 02950 809F5C10 24060716 */  addiu   $a2, $zero, 0x0716         ## $a2 = 00000716
/* 02954 809F5C14 0C0346A2 */  jal     Matrix_NewMtx              
/* 02958 809F5C18 AFA20038 */  sw      $v0, 0x0038($sp)           
/* 0295C 809F5C1C 8FA30038 */  lw      $v1, 0x0038($sp)           
/* 02960 809F5C20 3C0F0600 */  lui     $t7, 0x0600                ## $t7 = 06000000
/* 02964 809F5C24 25EF1B00 */  addiu   $t7, $t7, 0x1B00           ## $t7 = 06001B00
/* 02968 809F5C28 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0296C 809F5C2C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 02970 809F5C30 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 02974 809F5C34 3C06809F */  lui     $a2, %hi(D_809F5FE4)       ## $a2 = 809F0000
/* 02978 809F5C38 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 0297C 809F5C3C AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 02980 809F5C40 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 02984 809F5C44 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 02988 809F5C48 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 0298C 809F5C4C 24C65FE4 */  addiu   $a2, $a2, %lo(D_809F5FE4)  ## $a2 = 809F5FE4
/* 02990 809F5C50 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFD8
/* 02994 809F5C54 0C031AD5 */  jal     Graph_CloseDisps              
/* 02998 809F5C58 24070719 */  addiu   $a3, $zero, 0x0719         ## $a3 = 00000719
/* 0299C 809F5C5C 8E2E0214 */  lw      $t6, 0x0214($s1)           ## 00000214
/* 029A0 809F5C60 3C0C809F */  lui     $t4, %hi(func_809F49A4)    ## $t4 = 809F0000
/* 029A4 809F5C64 258C49A4 */  addiu   $t4, $t4, %lo(func_809F49A4) ## $t4 = 809F49A4
/* 029A8 809F5C68 158E0005 */  bne     $t4, $t6, .L809F5C80       
/* 029AC 809F5C6C 26240024 */  addiu   $a0, $s1, 0x0024           ## $a0 = 00000024
/* 029B0 809F5C70 27A50060 */  addiu   $a1, $sp, 0x0060           ## $a1 = FFFFFFF0
/* 029B4 809F5C74 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 029B8 809F5C78 0C00CF0C */  jal     func_80033C30              
/* 029BC 809F5C7C 02403825 */  or      $a3, $s2, $zero            ## $a3 = 00000000
.L809F5C80:
/* 029C0 809F5C80 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 029C4 809F5C84 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 029C8 809F5C88 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 029CC 809F5C8C 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 029D0 809F5C90 03E00008 */  jr      $ra                        
/* 029D4 809F5C94 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
