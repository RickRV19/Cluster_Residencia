import QtQuick 2.0

Item {

    Rectangle {
        width: 200
        height: 150
        color: "transparent"
        border.color: "black"
        border.width: 3
        radius: 5

        Text {
            y: 10
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 50
            color: "black"
            text: datapool.speedometerValue.toFixed(0)

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.bottom
                anchors.topMargin: 10
                font.pixelSize: 30
                color: "black"
                text: datapool.units ? "km/h" : "mph"
            }
        }
    }
}
