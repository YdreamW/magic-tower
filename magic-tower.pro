QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    view/magicmap.cpp \
    model/data/gamemap.cpp \
    model/gamemodel.cpp \
    main.cpp \
    view/mainwindow.cpp \
    model/data/player.cpp \
    viewModel/gameviewmodel.cpp

HEADERS += \
    common/common.h \
    view/magicmap.h \
    model/data/gamemap.h \
    model/gamemodel.h \
    view/mainwindow.h \
    model/data/player.h \
    viewModel/gameviewmodel.h

FORMS += \
    view/magicmap.ui \
    view/mainwindow.ui

TRANSLATIONS += \
    magic-tower_zh_CN.ts

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    assets/Images/878.jpg

RESOURCES += \
    magic-tower.qrc

QMAKE_INCDIR += view
