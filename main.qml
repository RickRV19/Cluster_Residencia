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
        touch.onClicked: if(datapool.levelposition === datapool._Drive) {
                             (datapool.tachometerValue += 100) && (datapool.speedometerValue +=2)
                             && (datapool.odometerValue += 0.2)
                             if(datapool.speedometerValue >= 140) {
                                 datapool.speedometerValue = 140
                             } if(datapool.tachometerValue >= 8000) {
                                 datapool.tachometerValue = 8000
                             }
                         }
    }

    Buttons {
        id: _breakbutton
        x: 200
        y: 660 - 100
        buttonText.text: "Brake"
        touch.onClicked: if(datapool.levelposition !== datapool._Neutro) {
                             (datapool.tachometerValue -= 100) && (datapool.speedometerValue -=2)
                             if (datapool.speedometerValue < 0) {
                                 datapool.speedometerValue = 0
                             } if (datapool.tachometerValue < 1000) {
                                 datapool.tachometerValue = 1000
                             }
                         }
    }

    Buttons {
        x: 300
        y: 660 - 100
        buttonText.text: "Units"
        touch.onClicked: datapool.units = !datapool.units
    }

    Buttons {
        x: 300 + 500
        y: 660 - 100
        buttonText.text: "Alert"
        touch.onClicked: (datapool.alert = !datapool.alert) && (_timerAlert.restart())
    }

    Timer {
        id: _timerAlert
        interval: 3000
        onTriggered: datapool.alert = false
    }

    Buttons {
        x: 700
        y: 510
        buttonRectangle.width: 50
        buttonRectangle.height: 25
        buttonText.text: "P"
        touch.onClicked: datapool.levelposition = datapool._Park
    }

    Buttons {
        x: 700
        y: 540
        buttonRectangle.width: 50
        buttonRectangle.height: 25
        buttonText.text: "R"
        touch.onClicked: datapool.levelposition = datapool._Reverse
    }

    Buttons {
        x: 700
        y: 570
        buttonRectangle.width: 50
        buttonRectangle.height: 25
        buttonText.text: "N"
        touch.onClicked: datapool.levelposition = datapool._Neutro
    }

    Buttons {
        x: 700
        y: 600
        buttonRectangle.width: 50
        buttonRectangle.height: 25
        buttonText.text: "D"
        touch.onClicked: datapool.levelposition = datapool._Drive
    }

    Buttons {
        x: 700
        y: 630
        buttonRectangle.width: 50
        buttonRectangle.height: 25
        buttonText.text: "S"
        touch.onClicked: datapool.levelposition = datapool._Sport
    }
}
