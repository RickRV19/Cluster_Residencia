import QtQuick 2.0

Rectangle {

    width: 200
    height: 100
    color: "blue"
    radius: 5

    Text {
        anchors.centerIn: parent
        text: datapool.odometerValue.toFixed(1) + " km"
        color: "white"
        font.pixelSize: 30
    }
}
