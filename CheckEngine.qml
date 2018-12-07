import QtQuick 2.0

Item {
    width: 200
    height: 200

    Image {
        anchors.centerIn: parent
        source: "Images/rtt.png"
        visible: datapool.rtt
        scale: 0.2
    }
}
