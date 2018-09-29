import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {

    property alias datapool: _datapool
    property alias gobutton: _gobutton

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
        id: _datapool
    }

    Buttons {
        id: _gobutton
        x: 200
        y: 605
        buttonText.text: "Go!"
        touch.onClicked: datapool.tachometerValue ++
    }

    Buttons {
        id: _breakbutton
        x: 200
        y: 660
        buttonText.text: "Brake"
        touch.onClicked: datapool.tachometerValue --
    }
}
