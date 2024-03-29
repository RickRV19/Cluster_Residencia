import QtQuick 2.0

Item {

    property bool onModel: true
    property double odometerValue: 523
    property int tachometerValue: 1000
    property double speedometerValue: 0
    property bool units: true
    property int compass: enums._North
    property int levelposition: _Park
    property bool alert
    property int alertBox: _Warning
    property int fuelPlus: 70
    property int tempPlus: 50
    property bool rtt
    property int mode: _Normal

    //Modes
    readonly property int _Normal: 1
    readonly property int _Rock: 2

    //Alerts
    readonly property int _Warning: 1
    readonly property int _MaxSpeed: 2
    readonly property int _FuelLow: 3
    readonly property int _TempHigh: 4
    readonly property int _Rtt: 5
    readonly property int _RockActivated: 6
    readonly property int _Maintenance: 7

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
