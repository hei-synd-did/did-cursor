onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {reset and clock} -color Gray60 /cursor_tb/reset
add wave -noupdate -expand -group {reset and clock} -color Gray60 /cursor_tb/clock
add wave -noupdate -expand -group {reset and clock} -color Gray60 /cursor_tb/testMode
add wave -noupdate -color Gray60 /cursor_tb/I_tester/testInfo
add wave -noupdate -expand -group {Buttons and sensors} -color Gold /cursor_tb/restart
add wave -noupdate -expand -group {Buttons and sensors} -color Gold /cursor_tb/go1
add wave -noupdate -expand -group {Buttons and sensors} -color Gold /cursor_tb/go2
add wave -noupdate -expand -group {Buttons and sensors} -color Gold /cursor_tb/sensor1
add wave -noupdate -expand -group {Buttons and sensors} -color Gold /cursor_tb/sensor2
add wave -noupdate -expand -group Encoder -color Gold /cursor_tb/encoderA
add wave -noupdate -expand -group Encoder -color Gold /cursor_tb/encoderB
add wave -noupdate -expand -group Encoder -color Gold /cursor_tb/encoderI
add wave -noupdate -clampanalog 1 -format Analog-Step -height 50 -max 255.0 -radix unsigned /cursor_tb/I_DUT/amplitude
add wave -noupdate -expand -group Internals /cursor_tb/I_DUT/I_ctrl/current_state
add wave -noupdate -expand -group Internals -radix unsigned /cursor_tb/I_DUT/selectPosition
add wave -noupdate -expand -group Internals /cursor_tb/I_DUT/zeroSpeed
add wave -noupdate -expand -group Internals /cursor_tb/I_DUT/fullSpeed
add wave -noupdate -expand -group Internals /cursor_tb/I_DUT/rampEnable
add wave -noupdate -expand -group Internals /cursor_tb/I_DUT/endReached
add wave -noupdate -expand -group Internals -clampanalog 1 -format Analog-Step -height 74 -max 262144.0 -radix unsigned /cursor_tb/I_DUT/position
add wave -noupdate -expand -group Internals -clampanalog 1 -format Analog-Step -height 74 -max 131071.00000000001 -min -131072.0 -radix decimal /cursor_tb/I_DUT/distance
add wave -noupdate -expand -group {Motor control} -color {Violet Red} /cursor_tb/motorOn
add wave -noupdate -expand -group {Motor control} -color {Violet Red} /cursor_tb/side1
add wave -noupdate -expand -group {Motor control} -color {Violet Red} /cursor_tb/side2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {7000436312 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 240
configure wave -valuecolwidth 71
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ps} {125658991790 ps}
