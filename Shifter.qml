import QtQuick 2.0

Item {
    width: 100
    height: 50

    Row {
        spacing: 10
        anchors.fill: parent
        Repeater {
            model: ["P", "R", "N", "D", "S"]
            Text {
                text: modelData
                font.pixelSize: 40
                color: "black"
            }
        }
    }
}
