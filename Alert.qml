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
        visible: datapool.alertBox === datapool._Warning
    }

    Rectangle {
        width: base.width
        height: base.height
        anchors.centerIn: parent
        radius: 10
        color: "gray"

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 90
            text: "Max Speed Reached!"
            color: "black"
            font.pixelSize: 30
        }

        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -25
            source: "Images/maxspeed.png"
            scale: 0.2
        }
        visible: datapool.alertBox === datapool._MaxSpeed
    }

    Rectangle {
        width: base.width
        height: base.height
        anchors.centerIn: parent
        radius: 10
        color: "red"

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 90
            text: "Fuel Low!"
            color: "black"
            font.pixelSize: 30
        }

        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -25
            source: "Images/FuelLow.png"
            scale: 0.2
        }
        visible: datapool.alertBox === datapool._FuelLow
    }

    Rectangle {
        width: base.width
        height: base.height
        anchors.centerIn: parent
        radius: 10
        color: "red"

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 90
            text: "High Temp!"
            color: "black"
            font.pixelSize: 30
        }

        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -25
            source: "Images/TempHigh.png"
            scale: 0.2
        }
        visible: datapool.alertBox === datapool._TempHigh
    }

    Rectangle {
        width: base.width
        height: base.height
        anchors.centerIn: parent
        radius: 10
        color: "lightgray"

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 50
            text: "Sending data to console"
            color: "black"
            font.pixelSize: 30
        }

        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -25
            source: "Images/console.png"
            scale: 0.2
        }
        visible: datapool.alertBox === datapool._Rtt
    }

    Rectangle {
        width: base.width
        height: base.height
        anchors.centerIn: parent
        radius: 10
        color: "brown"

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 45
            text: "Uploading Suspension \n Please Check Manual"
            color: "black"
            font.pixelSize: 30
        }

        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: -40
            source: "Images/suspension.png"
            scale: 0.2
        }
        visible: datapool.alertBox === datapool._RockActivated
    }
}
