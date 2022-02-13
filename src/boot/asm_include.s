__asm__("                                   \n\
    .set push                               \n\
    .set noat                               \n\
    .set noreorder                          \n\
    .set gp=64                              \n\
                                            \n\
.global __umoddi3                           \n\
__umoddi3:                                  \n\
    .type __umoddi3, @function              \n\
    .ent __umoddi3                          \n\
    sw    $a0, ($sp)                        \n\
    sw    $a1, 4($sp)                       \n\
    sw    $a2, 8($sp)                       \n\
    sw    $a3, 0xc($sp)                     \n\
    ld    $t7, 8($sp)                       \n\
    ld    $t6, ($sp)                        \n\
    ddivu $zero, $t6, $t7                   \n\
    bnez  $t7, 1f                           \n\
     nop                                    \n\
    break 7                                 \n\
1:                                          \n\
    mfhi  $v0                               \n\
    dsll32 $v1, $v0, 0                      \n\
    dsra32 $v1, $v1, 0                      \n\
    jr    $ra                               \n\
     dsra32 $v0, $v0, 0                     \n\
    .end __umoddi3                          \n\
    .size __umoddi3, . - __umoddi3          \n\
                                            \n\
.global __udivdi3                           \n\
__udivdi3:                                  \n\
    .type __udivdi3, @function              \n\
    .ent __udivdi3                          \n\
    sw    $a0, ($sp)                        \n\
    sw    $a1, 4($sp)                       \n\
    sw    $a2, 8($sp)                       \n\
    sw    $a3, 0xc($sp)                     \n\
    ld    $t7, 8($sp)                       \n\
    ld    $t6, ($sp)                        \n\
    ddivu $zero, $t6, $t7                   \n\
    bnez  $t7, 1f                           \n\
     nop                                    \n\
    break 7                                 \n\
1:                                          \n\
    mflo  $v0                               \n\
    dsll32 $v1, $v0, 0                      \n\
    dsra32 $v1, $v1, 0                      \n\
    jr    $ra                               \n\
     dsra32 $v0, $v0, 0                     \n\
    .end __udivdi3                          \n\
    .size __udivdi3, . - __udivdi3          \n\
                                            \n\
.global __moddi3                            \n\
__moddi3:                                   \n\
    .type __moddi3, @function               \n\
    .ent __moddi3                           \n\
    sw    $a0, ($sp)                        \n\
    sw    $a1, 4($sp)                       \n\
    sw    $a2, 8($sp)                       \n\
    sw    $a3, 0xc($sp)                     \n\
    ld    $t7, 8($sp)                       \n\
    ld    $t6, ($sp)                        \n\
    ddivu $zero, $t6, $t7                   \n\
    bnez  $t7, 1f                           \n\
     nop                                    \n\
    break 7                                 \n\
1:                                          \n\
    mfhi  $v0                               \n\
    dsll32 $v1, $v0, 0                      \n\
    dsra32 $v1, $v1, 0                      \n\
    jr    $ra                               \n\
     dsra32 $v0, $v0, 0                     \n\
    .end __moddi3                           \n\
    .size __moddi3, . - __moddi3            \n\
                                            \n\
.global __divdi3                            \n\
__divdi3:                                   \n\
    .type __divdi3, @function               \n\
    .ent __divdi3                           \n\
    sw    $a0, ($sp)                        \n\
    sw    $a1, 4($sp)                       \n\
    sw    $a2, 8($sp)                       \n\
    sw    $a3, 0xc($sp)                     \n\
    ld    $t7, 8($sp)                       \n\
    ld    $t6, ($sp)                        \n\
    ddiv  $zero, $t6, $t7                   \n\
    nop                                     \n\
    bnez  $t7, 1f                           \n\
     nop                                    \n\
    break 7                                 \n\
1:                                          \n\
    daddiu $at, $zero, -1                   \n\
    bne   $t7, $at, 2f                      \n\
     daddiu $at, $zero, 1                   \n\
    dsll32 $at, $at, 0x1f                   \n\
    bne   $t6, $at, 2f                      \n\
     nop                                    \n\
    break 6                                 \n\
2:                                          \n\
    mflo  $v0                               \n\
    dsll32 $v1, $v0, 0                      \n\
    dsra32 $v1, $v1, 0                      \n\
    jr    $ra                               \n\
     dsra32 $v0, $v0, 0                     \n\
    .end __divdi3                           \n\
    .size __divdi3, . - __divdi3            \n\
                                            \n\
    .set pop                                \n\
                                            \n");
