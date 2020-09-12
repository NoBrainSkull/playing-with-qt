#!/bin/python

import sys
import options
from PySide2.QtWidgets import QApplication, QPushButton
from PySide2.QtCore import Slot, QUrl
from PySide2.QtQuick import QQuickView

app = QApplication([])
view = QQuickView()
url = QUrl("components/quote_view.qml")
options = options.extract_options(" ".join(sys.argv))

view.setResizeMode(QQuickView.SizeRootObjectToView)
view.setSource(url)

rootElement = view.rootObject()

print(options.items())
for (optName, optValue) in options.items():
    rootElement.setProperty(optName, optValue)

view.show()

app.exec_()
