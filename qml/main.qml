import QtQuick 2.11
import QtQuick.Controls 2.3
import "./PopupFrame"

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("PopupFrame")

    Item {
        anchors.fill: parent
        Column {
            anchors.centerIn: parent
            Button {
                text: "PopupFrame1"
                onClicked: {
                    popupFrame1.open()
                }
            }
            Button {
                text: "PopupFrame2"
                onClicked: {
                    popupFrame2.open()
                }
            }
            Button {
                text: "PopupFrame3"
                onClicked: {
                    popupFrame3.open()
                }
            }
            Button {
                text: "PopupFrame4"
                onClicked: {
                    popupFrame4.open()
                }
            }
        }
    }

    PopupFrame {
        id: popupFrame1
        x: 20
        y: 20
        nowPoint: Qt.point(20,20)
        width: 200
        height: 300
        title: "PopupFrame1"
        PopupFrameContentItem {
            Text {
                anchors.centerIn: parent
                text: qsTr("PopupFrame1 content")
            }
        }
    }
    PopupFrame {
        id: popupFrame2
        x: 60
        y: 120
        nowPoint: Qt.point(60,120)
        minWidth: 200
        minHeight: 300
        width: 200
        height: 300
        title: "PopupFrame2"
        PopupFrameContentItem {
            Text {
                anchors.centerIn: parent
                text: qsTr("PopupFrame2 content")
            }
        }
    }
    PopupFrame {
        id: popupFrame3
        x: 500
        y: 20
        nowPoint: Qt.point(500,20)
        minWidth: 200
        minHeight: 300
        width: 200
        height: 300
        maxWidth: 200
        maxHeight: 300
        title: "PopupFrame3"
        PopupFrameContentItem {
            Text {
                anchors.centerIn: parent
                text: qsTr("PopupFrame3 content")
            }
        }
    }
    PopupFrame {
        id: popupFrame4
        x: 400
        y: 120
        nowPoint: Qt.point(400,120)
        width: 200
        height: 300
        title: "PopupFrame4"
        PopupFrameContentItem {
            Text {
                anchors.centerIn: parent
                text: qsTr("PopupFrame4 content")
            }
        }
    }
}
