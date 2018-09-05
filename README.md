# PopupFrame

> Popup frame for Qt[Qml] (Qml内部窗口)

![img](https://raw.githubusercontent.com/xuelongqy/PopupFrame/master/image/screencap.gif)

#### How to use(这样使用)

1、Create a Qml project(创建一个Qml项目)

```javascript
Use material theme(使用Material主题)
Or copy qtquickcontrols2.conf to your project(或者复制qtquickcontrols2.conf到你的项目中)
```

2、import PopupFrame(导入PopupFrame)

```javascript
// Copy qml/PopupFrame to your project(复制 qml/PopupFrame 到你的项目中)
// ** is relative path(**是相对路径)
import "**/PopupFrame"

Or use .pro[QML_IMPORT_PATH], copy to correct directory(或者使用.pro文件的QML_IMPORT_PATH,并复制到正确的目录下)
// **.**.** is correct path[QML_IMPORT_PATH/cn/knoyo/PopupFrame => cn.knoyo.PopupFrame]
// **.**.**是目录结构[例如QML_IMPORT_PATH/cn/knoyo/PopupFrame 就是 cn.knoyo.PopupFrame]
import **.**.** 1.0
```

3、Use PopupFrame(使用PopupFrame)

```javascript
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
```

#### You can refer to Demo, which is really very simple.(你可以参考Demo使用，这真的很简单)
