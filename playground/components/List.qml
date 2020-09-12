import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
  property var listItems: []

  Repeater {
    model: listItems.length
    Label {
      text: listItems[model.index].label
      color: listItems[model.index].color

      MouseArea {
        anchors.fill: parent
        onClicked: out.write('ok')
      }
    }
  }
}