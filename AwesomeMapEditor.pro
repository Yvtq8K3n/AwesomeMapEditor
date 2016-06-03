#
# AwesomeMapEditor: A map editor for GBA Pokémon games.
# Copyright (C) 2016 diegoisawesome, Pokedude
# License: General Public License 3.0
#


#
# QMake Settings, 1
#
QT         += core gui opengl widgets
TARGET      = AwesomeMapEditor
TEMPLATE    = app
CONFIG     += c++11
DEFINES    += AME_EDITOR


#
# QMake Settings, 2
#
VERSION = 1.0
win:QMAKE_TARGET_COMPANY     = <placeholder>
win:QMAKE_TARGET_PRODUCT     = AwesomeMapEditor
win:QMAKE_TARGET_DESCRIPTION = A map editor for GBA Pokémon games.
win:QMAKE_TARGET_COPYRIGHT   = (C) 2016 diegoisawesome, Pokedude


#
# QMake Settings, 3
#
INCLUDEPATH += include
INCLUDEPATH += include/AME/Forms
INCLUDEPATH += $$PWD/../QBoy/include
DEPENDPATH  += $$PWD/../QBoy/include


#
# QMake Settings, 4
#
unix|win32: LIBS += -L$$PWD/../QBoy/bin/debug/ -lQBoy


#
# Source Files
#
SOURCES += \
        src/main.cpp \
        src/Forms/MainWindow.cpp \
    src/System/WriteEntry.cpp \
    src/System/ErrorStack.cpp \
    src/Structures/WildPokemonTable.cpp


#
# Header Files
#
HEADERS  += \
        include/AME/Forms/MainWindow.h \
    include/AME/Structures/WildPokemonTable.hpp \
    include/AME/System/ErrorStack.hpp \
    include/AME/System/WriteEntry.hpp \
    include/AME/System/IUndoable.hpp \
    include/AME/Structures/WildPokemonSubTable.hpp \
    include/AME/Structures/StructureErrors.hpp


#
# Forms
#
FORMS    += resources/UI/MainWindow.ui


