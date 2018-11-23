import QtQuick 2.0

Item {

    id: _item
    width: 50
    height: 150

    Rectangle {
        id: _rect
        anchors.fill: parent
        color: "lightgray"
        opacity: 0.7
        radius: 10

        Column {
            spacing: 30
            y: 45
            z: 2
            Repeater {
                model: 3
                Rectangle {
                    width: 20
                    height: 2
                    color: "white"
                    radius: 10
                }
            }
        }
    }

    Rectangle {
        anchors.bottom: _rect.bottom
        anchors.bottomMargin: 0
        width: 50
        height: datapool.tempPlus
        color: if(datapool.tempPlus < 37) {
                   "lightblue"
               } else if (datapool.tempPlus >= 38 && datapool.tempPlus <= 119) {
                   "lightblue"
               } else if (datapool.tempPlus > 120) {
                   "red"
               }
        radius: 10
    }

    Image {
        anchors.top: _item.bottom
        anchors.topMargin: -230
        anchors.left: _item.left
        anchors.leftMargin: -230
        source: "Images/temp.png"
        scale: 0.08
    }
}

