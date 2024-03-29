import QtQuick 2.0

Item {
    visible: true
    clip: false

    Image {
        anchors.fill: parent
        source: if (datapool.mode === datapool._Normal) {
                    "Images/background.jpg"
                } else if (datapool.mode === datapool._Rock) {
                    "Images/rock.jpg"
                }
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

    Shifter {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -20
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 40
    }

    MusicBox {
        x: 215
        y: 90
    }

    Alert {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 17
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -120
        visible: datapool.alert
    }

    FuelGauge {
        x: 100
        y: 200
    }

    TempGauge {
        x: 1050
        y: 200
    }

    CheckEngine {
        x: 250
        y: 180
    }

    Image {
        source: "Images/4x4.png"
        x: 800
        y: 263
        width: 174
        height: 199
        scale: 0.3
        visible: datapool.mode === datapool._Rock
    }
}
