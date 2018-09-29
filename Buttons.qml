import QtQuick 2.0
import QtQuick.Controls 1.4

Item {

    property alias buttonText: _buttonText
    property alias buttonRectangle: _buttonRectangle
    property alias touch: _touch

    Rectangle {
        id: _buttonRectangle
        width: 75
        height: 50
        color: "black"
        radius: 5

        Text {
            id: _buttonText
            anchors.centerIn: parent
            color: "white"
            font.pixelSize: 10
        }

        Button {
            id: _touch
            anchors.fill: parent
            visible: true
            opacity: 0
        }
    }
}
