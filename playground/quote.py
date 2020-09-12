#!/bin/python

import sys
from PySide2.QtWidgets import QApplication, QPushButton
from PySide2.QtCore import Slot, QUrl
from PySide2.QtQuick import QQuickView

app = QApplication([])
view = QQuickView()
url = QUrl("components/quote_view.qml")

view.setResizeMode(QQuickView.SizeRootObjectToView)
view.setSource(url)
view.show()

app.exec_()
