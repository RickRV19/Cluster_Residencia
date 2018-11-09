import QtQuick 2.0

Item {
    visible: true
    clip: false

    Image {
        anchors.fill: parent
        source: "Images/background.jpeg"
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
        x: 210
        y: 350
    }

    Rectangle {
        width: 800
        height: 5
        radius: 3
        x: 200
        y: 390
        color: "black"
    }

    Image {
        source: "Images/abs.png"
        x: 872
        y: 263
        width: 174
        height: 199
        scale: 0.3
    }
}
