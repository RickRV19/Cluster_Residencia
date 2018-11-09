import QtQuick 2.0

Item {

    Rectangle {
        anchors.fill: parent
        color: "black"
    }

    Odometer {
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 60
    }

    Tachometer {
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 60
    }

    Speedometer {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -90
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -150
    }

    Compass {
        x: 200
        y: 350
    }

}
