import QtQuick 2.0

Item {
    width: 150
    height: 50

    Image {
        id: musicIcon
        source: "Images/Music.png"
        scale: 0.1
    }

    Text {
        anchors.left: musicIcon.right
        anchors.leftMargin: -250
        y: 258
        text: "Read My Mind"
        font.pixelSize: 35
        color: "black"
    }
}
