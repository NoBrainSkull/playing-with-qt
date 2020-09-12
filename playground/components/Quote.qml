import QtQuick 2.7
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Item {
  id: "application_window"

  property alias authorText: author.text
  property alias authorTextSize: author.font.pixelSize
  property alias authorTextColor: author.color
  property alias quoteText: quote.text
  property alias quoteTextSize: quote.font.pixelSize
  property alias quoteTextColor: quote.color
  property int margins: 50

  anchors.fill: parent
  width: parent.width
  height: parent.height

  ColumnLayout {
    anchors.centerIn: parent
    width: parent.width-margins

    HeroSubtitle {
      id: "quote"
      Layout.preferredWidth: parent.width
      horizontalAlignment: Text.AlignRight
      text: "« Tout ce qu'on m'a enseigné, toutes les sciences humaines que j'ai étudiées et approfondies, toutes les recherches enfin que j'ai faites sur le principe et l'essence des choses, ne m'ont servi qu'à savoir que je ne sais rien. »"
      font.pixelSize: 15
      textFormat: Text.RichText
      wrapMode: Text.Wrap
    }
    HeroTitle {
      id: "author"
      Layout.preferredWidth: author.contentWidth
      Layout.alignment: Qt.AlignRight
      font.pixelSize: 20
      text: "Socrates"
    }
  }
}