.table_ocarina:
entry .ocarina_ocarina
entry .ocarina_voidout
entry .env_door_open_oca
entry .ocarina_warp_in
entry .ocarina_warp_out
entry .env_grotto_exit
entry .ocarina_respawn
entry .ocarina_ocarina

.ocarina_ocarina:
chan_setval 80
chan_iowriteval 1
chan_ioreadval 7
chan_bitand 7
chan_readseq .addr_5F30
chan_writeseq 0, .chan_5F0C+1
chan_ioreadval 7
chan_bitand 7
chan_readseq .addr_5F38
chan_writeseq 0, .layer_5F2B+3
.chan_5F0C:
chan_setinstr F0_I_OCARINA_0
chan_ioreadval 5
chan_bltzrel .chan_5F15
chan_writeseq 0, .layer_5F29+1
.chan_5F15:
chan_setlayer 0, .layer_5F28
.chan_5F18:
chan_ioreadval 6
chan_bltzrel .chan_5F21
chan_writeseq_nextinstr 0, 1
chan_setvibratoextent 0
.chan_5F21:
chan_setval 1
chan_call .delay_varyingvol
chan_jumprel .chan_5F18

.layer_5F28:
layer_enablelegato
.layer_5F29:
layer_transpose 0
.layer_5F2B:
layer_note1 PITCH_C4, 0x1e0, 127
layer_end

.addr_5F30:
.byte 0x34
.byte 0x55
.byte 0x56
.byte 0x59
.byte 0x53
.byte 0x52
.byte 0x34
.byte 0x34

.addr_5F38:
.byte 115
.byte 115
.byte 100
.byte 115
.byte 100
.byte 115
.byte 115
.byte 115

.ocarina_warp_out:
chan_setval 129
.chan_5F42:
chan_setvibratorate 64
chan_setvibratoextentlinear 4, 8, 8
chan_writeseq 0, .layer_5F5C+1
chan_setinstr F0_I_FAIRY
chan_setenvelope .envelope_66FC
chan_setdecayrelease 240
chan_setlayer 0, .layer_5F5A
chan_setlayer 1, .layer_5F5C
chan_end

.layer_5F5A:
layer_transpose 24

.layer_5F5C:
layer_portamento 0x81, 15, 255
layer_note1 PITCH_G3, 0x8c, 80
layer_end

.ocarina_warp_in:
chan_setval 130
chan_jumprel .chan_5F42

.ocarina_voidout:
chan_setval 80
chan_writeseq 0, .layer_5F90+1
chan_setval 129
.chan_5F71:
chan_writeseq 0, .layer_5F8C+1
chan_setval 20
chan_iowriteval 1
chan_sethilogain 15
chan_setlayer 0, .layer_5F84
chan_setvibratorate 8
chan_setvibratoextentlinear 4, 40, 8
chan_end

.layer_5F84:
layer_setinstr F0_I_SHIMMER
layer_transpose 48
layer_setenvelope .envelope_6740, 251
.layer_5F8C:
layer_portamento 0x81, 32, 224
.layer_5F90:
layer_note1 PITCH_DF2, 0x50, 105
layer_delay 0x60
layer_end

.ocarina_respawn:
chan_setval 40
chan_writeseq 0, .layer_5F90+1
chan_setval 130
chan_jumprel .chan_5F71
