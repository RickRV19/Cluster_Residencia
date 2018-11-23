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

    Timer {
        id: speedPlus
        interval: 20
        onTriggered: { (datapool.tachometerValue += 100) && (datapool.speedometerValue +=2) }
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
                             } if(datapool.speedometerValue >= 140) {
                                 (datapool.alert = true)
                                         (datapool.alertBox = datapool._MaxSpeed)
                                         (_timerAlert.restart())
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
        touch.onClicked: { (datapool.alert = !datapool.alert) && (_timerAlert.restart())
                         && (datapool.alertBox = datapool._Warning) }
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

    Buttons {
        x: 850 + 50
        y: 550
        buttonRectangle.width: 60
        buttonRectangle.height: 25
        buttonText.text: "Fuel Plus"
        touch.onClicked: if(datapool.onModel === true) {
                             datapool.fuelPlus ++
                                 if (datapool.fuelPlus >= 150) {
                                     datapool.fuelPlus = 150
                                 }
                         }
    }

    Buttons {
        x: 850 + 50
        y: 530 + 50
        buttonRectangle.width: 60
        buttonRectangle.height: 25
        buttonText.text: "Fuel Minus"
        touch.onClicked: if(datapool.onModel === true) {
                             datapool.fuelPlus --
                             if (datapool.fuelPlus < 34) {
                                 datapool.fuelPlus = 34
                             } if(datapool.fuelPlus <= 34) {
                                 (datapool.alert = true)
                                         (datapool.alertBox = datapool._FuelLow)
                                         (_timerAlert.restart())
                             }
                         }
    }

    Buttons {
        x: 850 + 50 + 70
        y: 550
        buttonRectangle.width: 60
        buttonRectangle.height: 25
        buttonText.text: "Temp Plus"
        touch.onClicked: if(datapool.onModel === true) {
                             datapool.tempPlus ++
                                 if (datapool.tempPlus >= 150) {
                                     datapool.tempPlus = 150
                                 } if (datapool.tempPlus > 120) {
                                     (datapool.alert = true)
                                             (datapool.alertBox = datapool._TempHigh)
                                             (_timerAlert.restart())
                                 }
                         }
    }

    Buttons {
        x: 850 + 50 + 70
        y: 530 + 50
        buttonRectangle.width: 60
        buttonRectangle.height: 25
        buttonText.text: "Temp Minus"
        touch.onClicked: if(datapool.onModel === true) {
                             datapool.tempPlus --
                             if (datapool.tempPlus < 34) {
                                 datapool.tempPlus = 34
                             }
                         }
    }
}
