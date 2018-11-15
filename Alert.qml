import QtQuick 2.0

Item {
    id: base
    width: 370
    height: 240

    Rectangle {
        width: base.width
        height: base.height
        anchors.centerIn: parent
        radius: 10
        color: "yellow"
        z: 12

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 90
            text: "Warning"
            color: "black"
            font.pixelSize: 30
        }

        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -25
            source: "Images/alert.png"
            scale: 0.1
        }
    }
}
