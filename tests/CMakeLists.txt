cmake_minimum_required(VERSION 3.10)

project(userIdentityTest LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)


#set(QML_IMPORT_PATH ${CMAKE_SOURCE_DIR}/src/qml ${CMAKE_BINARY_DIR}/imports CACHE STRING "" FORCE)
get_filename_component(DIR_ONE_ABOVE ../ ABSOLUTE)
set(QML_IMPORT_PATH ${DIR_ONE_ABOVE}/src/qml ${CMAKE_BINARY_DIR}/imports CACHE STRING "" FORCE)


# Libraries
find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick REQUIRED)

set(PROJECT_SOURCES
    main.cpp
    tests.h

    qml.qrc
    ../src/cpp/authenticator.h
    ../src/cpp/authenticator.cpp
    ../src/cpp/qauthenticator.h
    ../src/cpp/qauthenticator.cpp
    ../src/cpp/login.h
    ../src/cpp/registration.h

    ../src/qml/qml.qrc
)

# Compilation
qt_add_executable(userIdentityTest
    MANUAL_FINALIZATION
    ${PROJECT_SOURCES}
)

qt_import_qml_plugins(userIdentityTest)

qt_finalize_executable(userIdentityTest)

target_compile_definitions(userIdentityTest
  PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)

target_link_libraries(userIdentityTest
  PRIVATE Qt${QT_VERSION_MAJOR}::Core Qt${QT_VERSION_MAJOR}::Quick)
