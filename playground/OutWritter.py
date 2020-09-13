import sys
from PySide2.QtCore import QObject, Slot

class OutWritter(QObject):

    @Slot(str, result=str)
    def write(self, output):
        try:
            print(output, flush=True)
        except (BrokenPipeError, IOError):
            pass
        sys.stderr.close()