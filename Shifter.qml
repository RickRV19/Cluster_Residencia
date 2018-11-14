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

    Rectangle {
        x: 5
        y: 50
        width: 5
        height: 20
        radius: 5
        color: "red"

        Behavior on x { NumberAnimation { duration: 150 } }
    }
}
