import icons
from PySide2.QtWidgets import QApplication
from PySide2.QtGui import QIcon, QKeySequence, QPixmap

app = QApplication([])
playIcon = QIcon(QPixmap(":/img/card.jpg"))
playIcon.show()
app.exec_()

