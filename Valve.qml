import QtQuick 2.7

Image {
    id: valve
    property string orientation: "vertical"
    objectName: "valve"
    property int valve_state: 18
    property int size: 1
    //transform: Rotation { origin.x: 30; origin.y: 30; axis { x: 0; y: 0; z: 1 } angle: 0 }
    transform: Scale { origin.x: grs.x; origin.y: grs.y; xScale: size; yScale: size}
    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.CrossCursor
    }
    states: [
        State{ name: "h_invalid"; when: orientation=="horizontal" && valve_state==1
            PropertyChanges {target: valve; source: "valve_Empty_Rasberry.svg";rotation: 90}},
        State{ name: "v_invalid"; when: orientation=="vertical" && valve_state==1
            PropertyChanges {target: valve; source: "valve_Empty_Rasberry.svg";rotation: 0}},
        State{ name: "h_valid_open"; when: orientation=="horizontal" && valve_state==17
            PropertyChanges {target: valve; source: "valve_green.svg";rotation: 90}},
        State{ name: "v_valid_open"; when: orientation=="vertical" && valve_state==17
            PropertyChanges {target: valve; source: "valve_green.svg";rotation: 0}},
        State{ name: "h_valid_close"; when: orientation=="horizontal" && valve_state==18
            PropertyChanges {target: valve; source: "valve_red.svg";rotation: 0}},
        State{ name: "v_valid_close"; when: orientation=="vertical" && valve_state==18
            PropertyChanges {target: valve; source: "valve_red.svg";rotation: 90}},
        State{ name: "h_invalid_x"; when: orientation=="horizontal" && valve_state==19
            PropertyChanges {target: valve; source: "valve_Empty.svg";rotation: 90}},
        State{ name: "v_invalid_x"; when: orientation=="vertical" && valve_state==19
            PropertyChanges {target: valve; source: "valve_Empty.svg";rotation: 0}},
        State{ name: "h_forced_open"; when: orientation=="horizontal" && valve_state==33
            PropertyChanges {target: valve; source: "valve_white.svg";rotation: 90}},
        State{ name: "v_forced_open"; when: orientation=="vertical" && valve_state==33
            PropertyChanges {target: valve; source: "valve_white.svg";rotation: 0}},
        State{ name: "h_forced_close"; when: orientation=="horizontal" && valve_state==34
            PropertyChanges {target: valve; source: "valve_white.svg";rotation: 0}},
        State{ name: "v_forced_close"; when: orientation=="vertical" && valve_state==34
            PropertyChanges {target: valve; source: "valve_white.svg";rotation: 90}}
    ]

}
