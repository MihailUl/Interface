import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
Window  {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: "blue"
    /*MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }


    }*/

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }

    GRS {
        id: gRS1
        x: 0
        y: 0
        width: 100
        height: 100
    }

    Valve {
        id: valve1
        x: 427
        y: 281
        width: 100
        height: 100
    }
    /*Indicator {
        id: indicator1
        x: 196
        y: 47
    }*/
}

