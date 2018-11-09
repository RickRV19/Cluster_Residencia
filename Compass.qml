import QtQuick 2.0

Item {

    property var compasDirections: ["N", "S", "E", "W"]

    width: 200
    height: 100

    Text {
        anchors.fill: parent
        font.pixelSize: 36
        color: "black"
        text: compasDirections[datapool.compass]
    }
}
