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
        height: datapool.fuelPlus
        color: if(datapool.fuelPlus < 37) {
                   "red"
               } else if (datapool.fuelPlus >= 38 && datapool.fuelPlus <= 55) {
                   "yellow"
               } else if (datapool.fuelPlus > 55) {
                   "green"
               }
        radius: 10
    }

    Image {
        anchors.top: _item.bottom
        anchors.topMargin: -330
        anchors.left: _item.left
        anchors.leftMargin: -240
        source: "Images/fuel.png"
        scale: 0.05
    }
}

