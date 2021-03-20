import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    id: page
    width: 1320
    height: 670
    clip: true
    antialiasing: true
    enabled: true
    transformOrigin: Item.Center

    header: Label {
        text: qsTr("Welcome @Guest")
        font.pixelSize: Qt.application.font.pixelSize * 2
        horizontalAlignment: Text.AlignHCenter
        padding: 10

        BusyIndicator {
            id: busyIndicator1
            x: 638
            y: 229
            width: 53
            height: 29
        }
    }



    Label {
        anchors.centerIn: parent
    }


    Pane {
        id: pane1
        x: 58
        y: 379
        width: 1224
        height: 148
    }


    Frame {
        id: frame
        x: 58
        y: 107
        width: 1224
        height: 162

        Pane {
            id: pane
            x: -12
            y: -12
            width: 1224
            height: 162
        }
    }


    Text {
        id: text1
        x: 59
        y: 65
        width: 191
        height: 36
        color: "#dfd7d7"
        text: qsTr("@Global notifications ")
        font.pixelSize: 12
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: text2
        x: 59
        y: 338
        width: 191
        height: 35
        color: "#dfd7d7"
        text: qsTr("@User notifications ")
        font.pixelSize: 12
        verticalAlignment: Text.AlignVCenter
    }


    RoundButton {
        id: roundButton
        x: 971
        y: -44
        width: 50
        height: 44
        text: "+"
    }

    states: [
        State {
            name: "State1"

            PropertyChanges {
                target: text3
                text: qsTr(" view the messages ")
            }

            PropertyChanges {
                target: pane1
                x: 58
                y: 379
                width: 1224
                height: 148
            }
        }
    ]
    Frame {
        id: frame1
        x: 59
        y: 379
        width: 1223
        height: 148

        Text {
            id: text3
            x: 299
            y: 43
            width: 333
            height: 54
            color: "#e6e1e1"
            text: qsTr("Log in to view the messages ")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenterOffset: 14
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:5}D{i:8}D{i:14}D{i:13}
}
##^##*/

