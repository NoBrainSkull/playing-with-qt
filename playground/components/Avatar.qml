import QtQuick 2.0
import QtGraphicalEffects 1.12

Image {
    property bool rounded: true
    property bool adapt: true
    
    id: "img"
    height: 200
    width: 200

    layer.enabled: rounded
    layer.effect: OpacityMask {
        maskSource: Item {
            width: img.width
            height: img.height
            Rectangle {
                anchors.centerIn: parent
                width: img.adapt ? img.width : Math.min(img.width, img.height)
                height: img.adapt ? img.height : width
                radius: Math.min(width, height)
            }
        }
    }
}