import QtQuick 2.7
import QtQuick.Window 2.2
Window {
    id: mainwindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

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

    Indicator {
        id: indicator1
        x: 196
        y: 47
    }
}
