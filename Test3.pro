TEMPLATE = app

QT += qml quick charts svg
QTPLUGIN += qsvg
CONFIG += c++11
SOURCES += main.cpp \
    datacharts.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES +=

HEADERS += \
    datacharts.h
