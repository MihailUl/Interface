import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
Window  {
    id: root
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
