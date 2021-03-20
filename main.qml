import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 1920
    height: 720
    visible: true
    title: qsTr("Tabs")

    header: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Notifications")
        }
        TabButton {
            text: qsTr("Live")
        }
        TabButton{
            text: qsTr("Channels")
        }
    }
    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
        }

        Page2Form {
        }

        Page3Form {
        }
    }


}
