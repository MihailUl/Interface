import QtQuick 2.7

Image {
    property string color: "green"
    property int size: 1
    id: grs
    objectName: "grs"
    transform: Scale { origin.x: grs.x; origin.y: grs.y; xScale: size; yScale: size}
    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.CrossCursor
    }
    states: [
        State { name: "VALID"; when: color=="green"
        PropertyChanges { target: grs; source: "triangle_green.svg"}},
        State { name: "FORCED"; when: color=="white"
        PropertyChanges {target: grs; source: "triangle_white.svg"}},
        State { name: "INVALID"; when: color=="red"
        PropertyChanges {target: grs; source: "triangle_red.svg"}}
    ]
}
