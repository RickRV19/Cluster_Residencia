import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {

    property alias datapool: _datapool
    property alias gobutton: _gobutton

    visible: true
    width: 1200
    height: 700
    title: qsTr("Cluster XXXX")
    color: "white"

    Dashboard {
        width: 1200
        height: 500
    }

    DataPool {
        id: _datapool
    }

    Buttons {
        id: _gobutton
        x: 200
        y: 605 - 100
        buttonText.text: "Go!"
        touch.onClicked: datapool.tachometerValue ++ && datapool.speedometerValue ++
    }

    Buttons {
        id: _breakbutton
        x: 200
        y: 660 - 100
        buttonText.text: "Brake"
        touch.onClicked: datapool.tachometerValue -- && datapool.speedometerValue --
    }

    Buttons {
        x: 300
        y: 660 - 100
        buttonText.text: "Units"
        touch.onClicked: datapool.units = !datapool.units
    }

    Buttons {
        x: 300
        y: 660 - 100
        buttonText.text: "Units"
        touch.onClicked: datapool.units = !datapool.units
    }
}
