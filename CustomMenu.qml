import QtQuick 2.7
import QtQuick.Controls 1.0

ContextMenu {
    id: custommenu
     MenuItem{
         MenuItem {
                 text: "Passport"
                 //shortcut: "Ctrl+X"
                 //onTriggered: ...
             }

             MenuItem {
                 text: "Copy"
                 shortcut: "Ctrl+C"
                 //onTriggered: ...
             }
     }

}
