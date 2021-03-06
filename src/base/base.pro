TEMPLATE = lib
DESTDIR = ../../lib
INCLUDEPATH += ..
QT += qml quick opengl network widgets
LIBS += -L../../lib -lpulse
#LIBS += -L../../lib -lpulse -lQtFeedback
CONFIG += mobility
MOBILITY += sensors feedback

unix {
    MEEGO_VERSION_MAJOR     = 1
    MEEGO_VERSION_MINOR     = 2
    MEEGO_VERSION_PATCH     = 0
    MEEGO_EDITION           = harmattan
    DEFINES += MEEGO_EDITION_HARMATTAN
}

unix {
    QMAKE_LFLAGS += -Wl,--rpath,/opt/emumaster/lib
    target.path = /opt/emumaster/lib
    INSTALLS += target
}

DEFINES += BASE_PROJECT

HEADERS += \
    hostaudio.h \
    hostinput.h \
	base_global.h \
    pathmanager.h \
    statelistmodel.h \
    configuration.h \
    hostinputdevice.h \
    touchinputdevice.h \
    keybinputdevice.h \
    crc32.h \
    emuview.h \
    emuthread.h \
    emu.h \
    emuinput.h \
    stringlistproxy.h \
    audioringbuffer.h \
    frameitem.h \
    memutils.h \
	stateimageprovider.h 
#    glpainter.h \
#    hostvideo.h \
#    accelinputdevice.h

SOURCES += \
    hostaudio.cpp \
    hostinput.cpp \
    pathmanager.cpp \
    statelistmodel.cpp \
    configuration.cpp \
    hostinputdevice.cpp \
    touchinputdevice.cpp \
    keybinputdevice.cpp \
    crc32.cpp \
    emuview.cpp \
    emuthread.cpp \
    emu.cpp \
    emuinput.cpp \
    stringlistproxy.cpp \
    frameitem.cpp \
    memutils.cpp \
	stateimageprovider.cpp 
#    glpainter.cpp \
#    hostvideo.cpp \
#    accelinputdevice.cpp

unix {
	qml.path = /opt/emumaster/qml/base
	qml.files = \
        ../../qml/base/main.qml \
        ../../qml/base/EmuView.qml \
        ../../qml/base/error.qml \
        ../../qml/base/SettingsPage.qml \
        ../../qml/base/SettingsSwitchItem.qml \
        ../../qml/base/NesSettingsPage.qml \
        ../../qml/base/NesCheats.qml \
        ../../qml/base/SnesSettingsPage.qml \
        ../../qml/base/GbaSettingsPage.qml \
		../../qml/base/GbaCheats.qml \
        ../../qml/base/PsxSettingsPage.qml \
        ../../qml/base/AmigaSettingsPage.qml \
        ../../qml/base/PicoSettingsPage.qml \
		\
        ../../qml/base/ColorDialog.qml \
        ../../qml/base/EMSwitchOption.qml \
        ../../qml/base/ImageListViewDelegate.qml \
        ../../qml/base/MySectionScroller.js \
        ../../qml/base/MySectionScroller.qml \
        ../../qml/base/SelectionItem.qml \
        ../../qml/base/SectionScrollerLabel.qml \
        ../../qml/base/SectionSeperator.qml \
        ../../qml/base/constants.js \
        ../../qml/base/utils.js

    buttons.path = /opt/emumaster/data
    buttons.files = \
        ../../data/buttons.png

    shaders.path = /opt/emumaster/data/shader
    shaders.files = \
        ../../data/shader/hq2x.vsh \
        ../../data/shader/hq2x.fsh \
        ../../data/shader/2xSal.vsh \
        ../../data/shader/2xSal.fsh \
        ../../data/shader/grayScale.vsh \
        ../../data/shader/grayScale.fsh \
        ../../data/shader/sharpen.vsh \
        ../../data/shader/sharpen.fsh \

	qmlimg.path = /opt/emumaster/qml/img
	qmlimg.files = \
        ../../qml/img/input-accel.png \
        ../../qml/img/input-keyb.png \
        ../../qml/img/input-sixaxis.png \
        ../../qml/img/input-touch.png

    INSTALLS += qml qmlimg buttons shaders
}

contains(MEEGO_EDITION, harmattan) {
#	CONFIG += qmsystem2
}
