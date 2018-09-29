import QtQuick 2.9
import QtQuick.Window 2.2

Window {

    property alias datapool : datapool

    visible: true
    width: 1200
    height: 700
    title: qsTr("Cluster XXYY")
    color: "white"

    Dashboard {
        width: 1200
        height: 600
    }

    DataPool {
        id: datapool
    }
}
