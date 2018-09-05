import QtQuick 2.7
import QtQuick.Window 2.2

MouseArea{
    property var clickPos
    property int type:1
    property int minHeight: 1
    property int minWidth: 1
    property int maxHeight: Screen.desktopAvailableHeight
    property int maxWidth: Screen.desktopAvailableWidth
    property QtObject parentObj

    property var thisCursorShape: {
        switch(type){
        case 1:
        case 2:
            return Qt.SizeVerCursor;
        case 3:
        case 4:
            return Qt.SizeHorCursor;
        case 5:
        case 8:
            return Qt.SizeFDiagCursor;
        case 6:
        case 7:
            return Qt.SizeBDiagCursor;
        }
    }

    width: 5
    height: 5
    cursorShape: thisCursorShape
    onPressed: {
        clickPos = Qt.point(mouse.x,mouse.y);
    }

    onPositionChanged: {
        cursorShape = thisCursorShape
        resizeWindow(Qt.point(mouse.x-clickPos.x,mouse.y-clickPos.y),type);
    }

    function resizeWindow(spacing,type){
        switch(type){
        case 1:
            //上
            if (parentObj.y + spacing.y < 0) {
                // 判断y坐标是否超出父窗口
                spacing.y = 0 - parentObj.y
            }
            else if (parentObj.height - spacing.y > maxHeight) {
                // 判断是否大于最大高度
                spacing.y =  parentObj.height - maxHeight
            }
            else if (parentObj.height - spacing.y < minHeight) {
                // 判断是否小于最小高度
                spacing.y = parentObj.height - minHeight
            }
            parentObj.y = parentObj.y + spacing.y
            parentObj.height = parentObj.height-spacing.y
            break;
        case 2:
            //下
            if (parentObj.y + parentObj.height + spacing.y > parentObj.parent.height) {
                // 判断y坐标是否超出父窗口
                spacing.y = parentObj.parent.height - parentObj.y - parentObj.height
            }
            else if (parentObj.height + spacing.y > maxHeight) {
                // 判断是否大于最大高度
                spacing.y = maxHeight - parentObj.height
            }
            else if (parentObj.height + spacing.y < minHeight) {
                // 判断是否小于最小高度
                spacing.y = minHeight - parentObj.height
            }
            parentObj.height = parentObj.height+spacing.y
            break;
        case 3:
            //左
            if (parentObj.x + spacing.x < 0) {
                // 判断x坐标是否超出父窗口
                spacing.x = 0 - parentObj.x
            }
            else if (parentObj.width - spacing.x > maxWidth) {
                // 判断是否大于最大宽度
                spacing.x = parentObj.width - maxWidth
            }
            else if (parentObj.width - spacing.x < minWidth) {
                // 判断是否小于最小宽度
                spacing.x = parentObj.width - minWidth
            }
            parentObj.x = parentObj.x + spacing.x
            parentObj.width = parentObj.width-spacing.x
            break;
        case 4:
            //右
            if (parentObj.x + parentObj.width + spacing.x > parentObj.parent.width) {
                // 判断x坐标是否超出父窗口
                spacing.x = parentObj.parent.width - parentObj.x - parentObj.width
            }
            else if (parentObj.width + spacing.x > maxWidth) {
                // 判断是否大于最大宽度
                spacing.x = maxWidth - parentObj.width
            }
            else if (parentObj.width + spacing.x < minWidth) {
                // 判断是否小于最小宽度
                spacing.x = minWidth - parentObj.width
            }
            parentObj.width = parentObj.width+spacing.x
            break;
        case 5:
            //左上
            if (parentObj.y + spacing.y < 0) {
                // 判断y坐标是否超出父窗口
                spacing.y = 0 - parentObj.y
            }
            else if (parentObj.height - spacing.y > maxHeight) {
                // 判断是否大于最大高度
                spacing.y =  parentObj.height - maxHeight
            }
            else if (parentObj.height - spacing.y < minHeight) {
                // 判断是否小于最小高度
                spacing.y = parentObj.height - minHeight
            }
            if (parentObj.x + spacing.x < 0) {
                // 判断x坐标是否超出父窗口
                spacing.x = 0 - parentObj.x
            }
            else if (parentObj.width - spacing.x > maxWidth) {
                // 判断是否大于最大宽度
                spacing.x = parentObj.width - maxWidth
            }
            else if (parentObj.width - spacing.x < minWidth) {
                // 判断是否小于最小宽度
                spacing.x = parentObj.width - minWidth
            }
            parentObj.x = parentObj.x + spacing.x
            parentObj.y = parentObj.y + spacing.y
            parentObj.width = parentObj.width-spacing.x
            parentObj.height = parentObj.height-spacing.y
            break;
        case 6:
            //右上
            if (parentObj.y + spacing.y < 0) {
                // 判断y坐标是否超出父窗口
                spacing.y = 0 - parentObj.y
            }
            else if (parentObj.height - spacing.y > maxHeight) {
                // 判断是否大于最大高度
                spacing.y =  parentObj.height - maxHeight
            }
            else if (parentObj.height - spacing.y < minHeight) {
                // 判断是否小于最小高度
                spacing.y = parentObj.height - minHeight
            }
            if (parentObj.x + parentObj.width + spacing.x > parentObj.parent.width) {
                // 判断x坐标是否超出父窗口
                spacing.x = parentObj.parent.width - parentObj.x - parentObj.width
            }
            else if (parentObj.width + spacing.x > maxWidth) {
                // 判断是否大于最大宽度
                spacing.x = maxWidth - parentObj.width
            }
            else if (parentObj.width + spacing.x < minWidth) {
                // 判断是否小于最小宽度
                spacing.x = minWidth - parentObj.width
            }
            parentObj.y = parentObj.y + spacing.y
            parentObj.width = parentObj.width+spacing.x
            parentObj.height = parentObj.height-spacing.y
            break;
        case 7:
            //左下
            if (parentObj.y + parentObj.height + spacing.y > parentObj.parent.height) {
                // 判断x坐标是否超出父窗口
                spacing.y = parentObj.parent.height - parentObj.y - parentObj.height
            }
            else if (parentObj.height + spacing.y > maxHeight) {
                // 判断是否大于最大高度
                spacing.y = maxHeight - parentObj.height
            }
            else if (parentObj.height + spacing.y < minHeight) {
                // 判断是否小于最小高度
                spacing.y = minHeight - parentObj.height
            }
            if (parentObj.x + spacing.x < 0) {
                // 判断y坐标是否超出父窗口
                spacing.x = 0 - parentObj.x
            }
            else if (parentObj.width - spacing.x > maxWidth) {
                // 判断是否大于最大宽度
                spacing.x = parentObj.width - maxWidth
            }
            else if (parentObj.width - spacing.x < minWidth) {
                // 判断是否小于最小宽度
                spacing.x = parentObj.width - minWidth
            }
            parentObj.x = parentObj.x + spacing.x
            parentObj.width = parentObj.width-spacing.x
            parentObj.height = parentObj.height+spacing.y
            break;
        case 8:
            //右下
            if (parentObj.y + parentObj.height + spacing.y > parentObj.parent.height) {
                // 判断y坐标是否超出父窗口
                spacing.y = parentObj.parent.height - parentObj.y - parentObj.height
            }
            else if (parentObj.height + spacing.y > maxHeight) {
                // 判断是否大于最大高度
                spacing.y = maxHeight - parentObj.height
            }
            else if (parentObj.height + spacing.y < minHeight) {
                // 判断是否小于最小高度
                spacing.y = minHeight - parentObj.height
            }
            if (parentObj.x + parentObj.width + spacing.x > parentObj.parent.width) {
                // 判断x坐标是否超出父窗口
                spacing.x = parentObj.parent.width - parentObj.x - parentObj.width
            }
            else if (parentObj.width + spacing.x > maxWidth) {
                // 判断是否大于最大宽度
                spacing.x = maxWidth - parentObj.width
            }
            else if (parentObj.width + spacing.x < minWidth) {
                // 判断是否小于最小宽度
                spacing.x = minWidth - parentObj.width
            }
            parentObj.width = parentObj.width+spacing.x
            parentObj.height = parentObj.height+spacing.y
            break;
        }
    }
}
