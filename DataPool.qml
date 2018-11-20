import QtQuick 2.0

Item {

    property double odometerValue: 523
    property int tachometerValue: 1000
    property double speedometerValue: 0
    property bool units: true
    property int compass: enums._North
    property int levelposition: _Park

    //Shifter
    readonly property int _Park: 5
    readonly property int _Reverse: 42
    readonly property int _Neutro: 79
    readonly property int _Drive: 116
    readonly property int _Sport: 148

    QtObject {
        id: enums
        //Compass
        readonly property int _North: 0
        readonly property int _South: 1
        readonly property int _East: 2
        readonly property int _West: 3
    }
}
