import QtQuick 2.0

Item {

    property double odometerValue: 523
    property int tachometerValue: 1000
    property double speedometerValue: 0
    property bool units: true
    property int compass: enums._North

    QtObject {
        id: enums
        readonly property int _North: 0
        readonly property int _South: 1
        readonly property int _East: 2
        readonly property int _West: 3
    }
}
