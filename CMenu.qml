import QtQuick 2.7
import QtQuick.Controls 2.0
//import QtQuick.Controls 1.4
import QtQuick.Window 2.0
Menu {
        id: cmenu
        objectName: "cmenu"
        width: 100
        height: 100
        MenuItem { text: "Паспорт";
                    onTriggered: {
                        var component = Qt.createComponent("Passport.qml");
                        var win = component.createObject(mainwindow);
                        win.show();
                    }
        }
        MenuItem { text: "item2"; }
        MenuItem { text: "item3"; }
}
