import QtQuick 2.0
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

ColumnLayout {
  property var entries: []
  property string iconFont: "icomoon"
  property string labelFont: "Fira Code"
  anchors.centerIn: parent

  Repeater {
    model: entries.length

    RowLayout {
      HeroSubtitle {
        text: entries[model.index].icon
        color: entries[model.index].color
        font.family: iconFont
        

        MouseArea {
          anchors.fill: parent
          onClicked: out.write(entries[model.index].action)
        }
      }
      HeroSubtitle {
        text: entries[model.index].label
        color: entries[model.index].color
        font.family: labelFont
        

        MouseArea {
          anchors.fill: parent
          onClicked: out.write(entries[model.index].action)
        }
      }
    }
  }
}