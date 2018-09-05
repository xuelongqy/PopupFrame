import QtQuick 2.0

/**
 * @Title: 弹出层主干
 * @FileName: PopupFrameContentItem.qml
 * @Description: 弹出框主干区域布局
 * @author XueLong xuelongqy@foxmail.com
 * @date 2018-04-08 14:30:23
 * @update_author
 * @update_time
 * @version V1.0
*/
Rectangle {
    // 标题栏高度
    property int titleBarHeight: 35

    width: parent.width - 10
    height: parent.height - titleBarHeight - 6
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.topMargin: titleBarHeight + 1
    anchors.leftMargin: 5
    anchors.rightMargin: 5
    anchors.bottomMargin: 5
}
