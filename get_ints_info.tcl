# set all_ints [get_tiles * -filter {TYPE==INT_L || TYPE==INT_R}]

set ints_l [get_tiles * -filter {TYPE==INT_L}]
set ints_r [get_tiles * -filter {TYPE==INT_R}]

set fp [open /media/brookz/Storage/Research/FPGA-RE/int_conn_map4.json w]
# set fp [open F:/Research/FPGA-RE/int_conn_map2.json w]
set int_l_wires  [list BYP_BOUNCE0 BYP_BOUNCE1 BYP_BOUNCE2 BYP_BOUNCE3 BYP_BOUNCE4 BYP_BOUNCE5 BYP_BOUNCE6 BYP_BOUNCE_N3_2 BYP_BOUNCE_N3_3 BYP_BOUNCE_N3_6 BYP_BOUNCE_N3_7 EE2END0 EE2END1 EE2END2 EE2END3 EE4END0 EE4END1 EE4END2 EE4END3 EL1END0 EL1END1 EL1END2 EL1END3 EL1END_S3_0 ER1END0 ER1END1 ER1END2 ER1END3 ER1END_N3_3 FAN_BOUNCE1 FAN_BOUNCE2 FAN_BOUNCE3 FAN_BOUNCE4 FAN_BOUNCE5 FAN_BOUNCE6 FAN_BOUNCE7 FAN_BOUNCE_S3_0 FAN_BOUNCE_S3_2 FAN_BOUNCE_S3_4 FAN_BOUNCE_S3_6 GCLK_L_B0 GCLK_L_B1 GCLK_L_B10_WEST GCLK_L_B11_WEST GCLK_L_B2 GCLK_L_B3 GCLK_L_B4 GCLK_L_B5 GCLK_L_B6_WEST GCLK_L_B7_WEST GCLK_L_B8_WEST GCLK_L_B9_WEST GFAN0 GFAN1 GND_WIRE LH0 LH12 LH6 LOGIC_OUTS_L0 LOGIC_OUTS_L1 LOGIC_OUTS_L10 LOGIC_OUTS_L11 LOGIC_OUTS_L12 LOGIC_OUTS_L13 LOGIC_OUTS_L14 LOGIC_OUTS_L15 LOGIC_OUTS_L16 LOGIC_OUTS_L17 LOGIC_OUTS_L18 LOGIC_OUTS_L19 LOGIC_OUTS_L2 LOGIC_OUTS_L20 LOGIC_OUTS_L21 LOGIC_OUTS_L22 LOGIC_OUTS_L23 LOGIC_OUTS_L3 LOGIC_OUTS_L4 LOGIC_OUTS_L5 LOGIC_OUTS_L6 LOGIC_OUTS_L7 LOGIC_OUTS_L8 LOGIC_OUTS_L9 LVB_L0 LVB_L12 LV_L0 LV_L18 LV_L9 NE2END0 NE2END1 NE2END2 NE2END3 NE2END_S3_0 NE6END0 NE6END1 NE6END2 NE6END3 NL1BEG_N3 NL1END0 NL1END1 NL1END2 NL1END_S3_0 NN2END0 NN2END1 NN2END2 NN2END3 NN2END_S2_0 NN6END0 NN6END1 NN6END2 NN6END3 NN6END_S1_0 NR1END0 NR1END1 NR1END2 NR1END3 NW2END0 NW2END1 NW2END2 NW2END3 NW2END_S0_0 NW6END0 NW6END1 NW6END2 NW6END3 NW6END_S0_0 SE2END0 SE2END1 SE2END2 SE2END3 SE6END0 SE6END1 SE6END2 SE6END3 SL1END0 SL1END1 SL1END2 SL1END3 SR1BEG_S0 SR1END1 SR1END2 SR1END3 SR1END_N3_3 SS2END0 SS2END1 SS2END2 SS2END3 SS2END_N0_3 SS6END0 SS6END1 SS6END2 SS6END3 SS6END_N0_3 SW2END0 SW2END1 SW2END2 SW2END3 SW2END_N0_3 SW6END0 SW6END1 SW6END2 SW6END3 SW6END_N0_3 WL1END0 WL1END1 WL1END2 WL1END3 WL1END_N1_3 WR1END0 WR1END1 WR1END2 WR1END3 WR1END_S1_0 WW2END0 WW2END1 WW2END2 WW2END3 WW2END_N0_3 WW4END0 WW4END1 WW4END2 WW4END3 WW4END_S0_0]
set int_r_wires  [list BYP_BOUNCE0 BYP_BOUNCE1 BYP_BOUNCE2 BYP_BOUNCE3 BYP_BOUNCE4 BYP_BOUNCE5 BYP_BOUNCE6 BYP_BOUNCE_N3_2 BYP_BOUNCE_N3_3 BYP_BOUNCE_N3_6 BYP_BOUNCE_N3_7 EE2END0 EE2END1 EE2END2 EE2END3 EE4END0 EE4END1 EE4END2 EE4END3 EL1END0 EL1END1 EL1END2 EL1END3 EL1END_S3_0 ER1END0 ER1END1 ER1END2 ER1END3 ER1END_N3_3 FAN_BOUNCE1 FAN_BOUNCE2 FAN_BOUNCE3 FAN_BOUNCE4 FAN_BOUNCE5 FAN_BOUNCE6 FAN_BOUNCE7 FAN_BOUNCE_S3_0 FAN_BOUNCE_S3_2 FAN_BOUNCE_S3_4 FAN_BOUNCE_S3_6 GCLK_B0_EAST GCLK_B10 GCLK_B11 GCLK_B1_EAST GCLK_B2_EAST GCLK_B3_EAST GCLK_B4_EAST GCLK_B5_EAST GCLK_B6 GCLK_B7 GCLK_B8 GCLK_B9 GFAN0 GFAN1 GND_WIRE LH0 LH12 LH6 LOGIC_OUTS0 LOGIC_OUTS1 LOGIC_OUTS10 LOGIC_OUTS11 LOGIC_OUTS12 LOGIC_OUTS13 LOGIC_OUTS14 LOGIC_OUTS15 LOGIC_OUTS16 LOGIC_OUTS17 LOGIC_OUTS18 LOGIC_OUTS19 LOGIC_OUTS2 LOGIC_OUTS20 LOGIC_OUTS21 LOGIC_OUTS22 LOGIC_OUTS23 LOGIC_OUTS3 LOGIC_OUTS4 LOGIC_OUTS5 LOGIC_OUTS6 LOGIC_OUTS7 LOGIC_OUTS8 LOGIC_OUTS9 LV0 LV18 LV9 LVB0 LVB12 NE2END0 NE2END1 NE2END2 NE2END3 NE2END_S3_0 NE6END0 NE6END1 NE6END2 NE6END3 NL1BEG_N3 NL1END0 NL1END1 NL1END2 NL1END_S3_0 NN2END0 NN2END1 NN2END2 NN2END3 NN2END_S2_0 NN6END0 NN6END1 NN6END2 NN6END3 NN6END_S1_0 NR1END0 NR1END1 NR1END2 NR1END3 NW2END0 NW2END1 NW2END2 NW2END3 NW2END_S0_0 NW6END0 NW6END1 NW6END2 NW6END3 NW6END_S0_0 SE2END0 SE2END1 SE2END2 SE2END3 SE6END0 SE6END1 SE6END2 SE6END3 SL1END0 SL1END1 SL1END2 SL1END3 SR1BEG_S0 SR1END1 SR1END2 SR1END3 SR1END_N3_3 SS2END0 SS2END1 SS2END2 SS2END3 SS2END_N0_3 SS6END0 SS6END1 SS6END2 SS6END3 SS6END_N0_3 SW2END0 SW2END1 SW2END2 SW2END3 SW2END_N0_3 SW6END0 SW6END1 SW6END2 SW6END3 SW6END_N0_3 WL1END0 WL1END1 WL1END2 WL1END3 WL1END_N1_3 WR1END0 WR1END1 WR1END2 WR1END3 WR1END_S1_0 WW2END0 WW2END1 WW2END2 WW2END3 WW2END_N0_3 WW4END0 WW4END1 WW4END2 WW4END3 WW4END_S0_0]

puts $fp "{"
set i 0
set len1 [llength $ints_l]
set len [llength $int_l_wires]

foreach int $ints_l {
    incr i
    puts $fp [format "\t\"%s\" : \{" $int]
    set j 0
    foreach wire $int_l_wires {
        incr j
        puts -nonewline $fp [format "\t\t\"%s\" : " $wire]
        set wireStr [format "%s/%s" $int $wire]
        set conns [get_wires -downhill -of_objects [get_nodes $wireStr] -filter {IS_CONNECTED}]
                
        if {[llength $conns] == 1 && [lindex $conns 0] == $wireStr && [string first "GFAN" $wireStr] == -1 && [string first "BEG" $wireStr] == -1} {
            set conns [get_nodes -uphill -of_objects [get_nodes $wireStr]]
        } elseif {[llength $conns] > 1} {
            set conns [lrange $conns 1 end]
        } else {
            set conns [get_nodes -downhill -of_objects [get_wires [format "%s/%s" $int $wire]]]
        }
        if {[llength $conns] <= 1} {
            set fmt "\"%s\""
        } else {
            set conns [join $conns "\",\""]
            set fmt "\[\"%s\"\]"
        }

        if {$j != $len} {
            set fmt "$fmt,"
        } 
        puts $fp [format $fmt $conns]
    } 
    puts $fp "\t\},"
}

set i 0
set len1 [llength $ints_l]
set len [llength $int_l_wires]

foreach int $ints_r {
    incr i
    puts $fp [format "\t\"%s\" : \{" $int]
    set j 0
    foreach wire $int_r_wires {
        incr j
        puts -nonewline $fp [format "\t\t\"%s\" : " $wire]
        set wireStr [format "%s/%s" $int $wire]
        set conns [get_wires -downhill -of_objects [get_nodes $wireStr] -filter {IS_CONNECTED}]
        
        if {[llength $conns] == 1 && [lindex $conns 0] == $wireStr && [string first "GFAN" $wireStr] == -1 && [string first "BEG" $wireStr] == -1} {
            set conns [get_nodes -uphill -of_objects [get_nodes $wireStr]]
        } elseif {[llength $conns] > 1} {
            set conns [lrange $conns 1 end]
        } else {
            set conns [get_nodes -downhill -of_objects [get_wires [format "%s/%s" $int $wire]]]
        }
        if {[llength $conns] <= 1} {
            set fmt "\"%s\""
        } else {
            set conns [join $conns "\",\""]
            set fmt "\[\"%s\"\]"
        }

        if {$j != $len} {
            set fmt "$fmt,"
        } 
        puts $fp [format $fmt $conns]
    } 
    # puts $fp "\t\},"
    
    if {$i == $len1} {
        puts $fp "\t\}"

    } else {
        puts $fp "\t\},"
    }
}

puts $fp "}"
close $fp