glabel func_8093D3D8
/* 04708 8093D3D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0470C 8093D3DC AFA5001C */  sw      $a1, 0x001C($sp)
/* 04710 8093D3E0 3C0E8094 */  lui     $t6, %hi(func_8093D444)    ## $t6 = 80940000
/* 04714 8093D3E4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 04718 8093D3E8 25CED444 */  addiu   $t6, $t6, %lo(func_8093D444) ## $t6 = 8093D444
/* 0471C 8093D3EC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 04720 8093D3F0 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 04724 8093D3F4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 04728 8093D3F8 24A504A4 */  addiu   $a1, $a1, 0x04A4           ## $a1 = 060004A4
/* 0472C 8093D3FC AFA70018 */  sw      $a3, 0x0018($sp)
/* 04730 8093D400 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 04734 8093D404 0C0294D3 */  jal     Animation_MorphToLoop
/* 04738 8093D408 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 0473C 8093D40C 8FAF0018 */  lw      $t7, 0x0018($sp)
/* 04740 8093D410 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 04744 8093D414 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 04748 8093D418 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 0474C 8093D41C A1E005F8 */  sb      $zero, 0x05F8($t7)         ## 000005F8
/* 04750 8093D420 4600010D */  trunc.w.s $f4, $f0
/* 04754 8093D424 8FA80018 */  lw      $t0, 0x0018($sp)
/* 04758 8093D428 44192000 */  mfc1    $t9, $f4
/* 0475C 8093D42C 00000000 */  nop
/* 04760 8093D430 A5190152 */  sh      $t9, 0x0152($t0)           ## 00000152
/* 04764 8093D434 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 04768 8093D438 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0476C 8093D43C 03E00008 */  jr      $ra
/* 04770 8093D440 00000000 */  nop
