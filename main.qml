import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Cluster XXYY")
    color: "lightblue"

    Dashboard {
        anchors.left: parent.fill
    }
}
