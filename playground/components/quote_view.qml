import QtQuick 2.0

Rectangle {
  id: "window"
  color: "#263238"

  property alias windowColor: window.color
  property alias authorText: quoteItem.authorText
  property alias authorTextSize:  quoteItem.authorTextSize
  property alias authorTextColor: quoteItem.authorTextColor
  property alias quoteText: quoteItem.quoteText
  property alias quoteTextSize:  quoteItem.quoteTextSize
  property alias quoteTextColor: quoteItem.quoteTextColor
  property int margins: quoteItem.margins

  Quote {
    id: "quoteItem"
    anchors.centerIn: parent
  }
}
