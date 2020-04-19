.late_rodata
glabel D_8095C93C
    .float 0.01

.text
glabel func_8095BBD0
/* 0C910 8095BBD0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0C914 8095BBD4 3C0F8096 */  lui     $t7, %hi(D_8095C374)       ## $t7 = 80960000
/* 0C918 8095BBD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0C91C 8095BBDC AFA40038 */  sw      $a0, 0x0038($sp)           
/* 0C920 8095BBE0 25EFC374 */  addiu   $t7, $t7, %lo(D_8095C374)  ## $t7 = 8095C374
/* 0C924 8095BBE4 8DF90000 */  lw      $t9, 0x0000($t7)           ## 8095C374
/* 0C928 8095BBE8 27AE002C */  addiu   $t6, $sp, 0x002C           ## $t6 = FFFFFFF4
/* 0C92C 8095BBEC 8DF80004 */  lw      $t8, 0x0004($t7)           ## 8095C378
/* 0C930 8095BBF0 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 0C934 8095BBF4 8DF90008 */  lw      $t9, 0x0008($t7)           ## 8095C37C
/* 0C938 8095BBF8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0C93C 8095BBFC ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 0C940 8095BC00 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
.L8095BC04:
/* 0C944 8095BC04 90A80024 */  lbu     $t0, 0x0024($a1)           ## 00000024
/* 0C948 8095BC08 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 0C94C 8095BC0C 00021400 */  sll     $v0, $v0, 16               
/* 0C950 8095BC10 1500003D */  bne     $t0, $zero, .L8095BD08     
/* 0C954 8095BC14 00021403 */  sra     $v0, $v0, 16               
/* 0C958 8095BC18 8FA30048 */  lw      $v1, 0x0048($sp)           
/* 0C95C 8095BC1C 24090005 */  addiu   $t1, $zero, 0x0005         ## $t1 = 00000005
/* 0C960 8095BC20 A0A90024 */  sb      $t1, 0x0024($a1)           ## 00000024
/* 0C964 8095BC24 ACA60054 */  sw      $a2, 0x0054($a1)           ## 00000054
/* 0C968 8095BC28 8CEB0000 */  lw      $t3, 0x0000($a3)           ## 00000000
/* 0C96C 8095BC2C 3C0C8096 */  lui     $t4, %hi(D_8095C220)       ## $t4 = 80960000
/* 0C970 8095BC30 258CC220 */  addiu   $t4, $t4, %lo(D_8095C220)  ## $t4 = 8095C220
/* 0C974 8095BC34 ACAB0000 */  sw      $t3, 0x0000($a1)           ## 00000000
/* 0C978 8095BC38 8CEA0004 */  lw      $t2, 0x0004($a3)           ## 00000004
/* 0C97C 8095BC3C 27A2001C */  addiu   $v0, $sp, 0x001C           ## $v0 = FFFFFFE4
/* 0C980 8095BC40 ACAA0004 */  sw      $t2, 0x0004($a1)           ## 00000004
/* 0C984 8095BC44 8CEB0008 */  lw      $t3, 0x0008($a3)           ## 00000008
/* 0C988 8095BC48 ACAB0008 */  sw      $t3, 0x0008($a1)           ## 00000008
/* 0C98C 8095BC4C 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 8095C220
/* 0C990 8095BC50 AC4E0000 */  sw      $t6, 0x0000($v0)           ## FFFFFFE4
/* 0C994 8095BC54 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 8095C224
/* 0C998 8095BC58 8C580000 */  lw      $t8, 0x0000($v0)           ## FFFFFFE4
/* 0C99C 8095BC5C AC4D0004 */  sw      $t5, 0x0004($v0)           ## FFFFFFE8
/* 0C9A0 8095BC60 8D8E0008 */  lw      $t6, 0x0008($t4)           ## 8095C228
/* 0C9A4 8095BC64 AC4E0008 */  sw      $t6, 0x0008($v0)           ## FFFFFFEC
/* 0C9A8 8095BC68 ACB80018 */  sw      $t8, 0x0018($a1)           ## 00000018
/* 0C9AC 8095BC6C 8C4F0004 */  lw      $t7, 0x0004($v0)           ## FFFFFFE8
/* 0C9B0 8095BC70 ACAF001C */  sw      $t7, 0x001C($a1)           ## 0000001C
/* 0C9B4 8095BC74 8C580008 */  lw      $t8, 0x0008($v0)           ## FFFFFFEC
/* 0C9B8 8095BC78 ACB80020 */  sw      $t8, 0x0020($a1)           ## 00000020
/* 0C9BC 8095BC7C 8C480000 */  lw      $t0, 0x0000($v0)           ## FFFFFFE4
/* 0C9C0 8095BC80 ACA8000C */  sw      $t0, 0x000C($a1)           ## 0000000C
/* 0C9C4 8095BC84 8C590004 */  lw      $t9, 0x0004($v0)           ## FFFFFFE8
/* 0C9C8 8095BC88 ACB90010 */  sw      $t9, 0x0010($a1)           ## 00000010
/* 0C9CC 8095BC8C 8C480008 */  lw      $t0, 0x0008($v0)           ## FFFFFFEC
/* 0C9D0 8095BC90 ACA80014 */  sw      $t0, 0x0014($a1)           ## 00000014
/* 0C9D4 8095BC94 93A90053 */  lbu     $t1, 0x0053($sp)           
/* 0C9D8 8095BC98 A4A90028 */  sh      $t1, 0x0028($a1)           ## 00000028
/* 0C9DC 8095BC9C 846A0000 */  lh      $t2, 0x0000($v1)           ## 00000000
/* 0C9E0 8095BCA0 254B4000 */  addiu   $t3, $t2, 0x4000           ## $t3 = 00004000
/* 0C9E4 8095BCA4 A4AB002A */  sh      $t3, 0x002A($a1)           ## 0000002A
/* 0C9E8 8095BCA8 846C0002 */  lh      $t4, 0x0002($v1)           ## 00000002
/* 0C9EC 8095BCAC A4AC002C */  sh      $t4, 0x002C($a1)           ## 0000002C
/* 0C9F0 8095BCB0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0C9F4 8095BCB4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 0C9F8 8095BCB8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0C9FC 8095BCBC 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 0CA00 8095BCC0 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 0CA04 8095BCC4 240800F0 */  addiu   $t0, $zero, 0x00F0         ## $t0 = 000000F0
/* 0CA08 8095BCC8 46040182 */  mul.s   $f6, $f0, $f4              
/* 0CA0C 8095BCCC A4A80036 */  sh      $t0, 0x0036($a1)           ## 00000036
/* 0CA10 8095BCD0 3C018096 */  lui     $at, %hi(D_8095C93C)       ## $at = 80960000
/* 0CA14 8095BCD4 4600320D */  trunc.w.s $f8, $f6                   
/* 0CA18 8095BCD8 44184000 */  mfc1    $t8, $f8                   
/* 0CA1C 8095BCDC 00000000 */  nop
/* 0CA20 8095BCE0 2719000A */  addiu   $t9, $t8, 0x000A           ## $t9 = 0000000A
/* 0CA24 8095BCE4 A4B90026 */  sh      $t9, 0x0026($a1)           ## 00000026
/* 0CA28 8095BCE8 87A9004E */  lh      $t1, 0x004E($sp)           
/* 0CA2C 8095BCEC C432C93C */  lwc1    $f18, %lo(D_8095C93C)($at) 
/* 0CA30 8095BCF0 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 0CA34 8095BCF4 00000000 */  nop
/* 0CA38 8095BCF8 46805420 */  cvt.s.w $f16, $f10                 
/* 0CA3C 8095BCFC 46128102 */  mul.s   $f4, $f16, $f18            
/* 0CA40 8095BD00 10000004 */  beq     $zero, $zero, .L8095BD14   
/* 0CA44 8095BD04 E4A40040 */  swc1    $f4, 0x0040($a1)           ## 00000040
.L8095BD08:
/* 0CA48 8095BD08 28410190 */  slti    $at, $v0, 0x0190           
/* 0CA4C 8095BD0C 1420FFBD */  bne     $at, $zero, .L8095BC04     
/* 0CA50 8095BD10 24A50058 */  addiu   $a1, $a1, 0x0058           ## $a1 = 00000058
.L8095BD14:
/* 0CA54 8095BD14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0CA58 8095BD18 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0CA5C 8095BD1C 03E00008 */  jr      $ra                        
/* 0CA60 8095BD20 00000000 */  nop
