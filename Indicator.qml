import QtQuick 2.7

Rectangle {
    id: indicator
    objectName: "indicator"
    width: 232
    height: 35
    color: "#453a3a"

    Text {
        id: physical_dimension
        x: value.width + value.x + indicator.width * 0.1
        y: 0
        width: indicator.width * 0.3
        height: indicator.height
        text: qsTr("кгс/см2")
        font.pointSize: 12
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
        color: "green"
    }
    Text {
        id: value
        width: indicator.width * 0.6
        height: indicator.height
        objectName: "value"
        text: qsTr("5")
        font.pointSize: 12
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
        color: "#c610b4"
    }

    MouseArea{
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            if (mouse.button == Qt.RightButton) {
                var component = Qt.createComponent("Passport.qml");
                var win = component.createObject(mainwindow);
                win.show();
            }
             else{
                parent.color = 'red';
                CustomMenu {

                }
            }
        }
    }
}
