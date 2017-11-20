import QtQuick 2.7

Image {
    property string color: "red"
    id: grs
    objectName: "grs"
    states: [
        State { name: "VALID"; when: color=="green"
        PropertyChanges { target: grs; source: "/media/sf_Share/Triangle_Green.png"}},
        State { name: "FORCED"; when: color=="white"
        PropertyChanges {target: grs; source: "/media/sf_Share/Triangle_White.png"}},
        State { name: "INVALID"; when: color=="red"
        PropertyChanges {target: grs; source: "/media/sf_Share/Triangle_Red.png"}}
    ]
}
