/*
 * Texts for Authorization module.
 *
 * This file is part of PjS Project.
 * All rights reserved , distributed under GPLv3+ ,
 * if not explicitly stated otherwise (see www.gnu.org for details).
 */


pragma Singleton

import QtQuick


QtObject {

    property string titlebar: qsTr("PjS Passport")

    property QtObject systemTray: QtObject {
        property string open: qsTr("Open")
        property string quit: qsTr("Quit")
    }
    
    property QtObject toolbar: QtObject {
        property string titleName: qsTr("Pass")
        property string searchText: qsTr("Find document...")
    }

    property QtObject welcomePage: QtObject {
        property string text: qsTr("Welcome to Pass")
    }

    property QtObject loginPage: QtObject {
        property string nameInputPlaceholder: qsTr("your login name")
        property string passInputPlaceholder: qsTr("your password")
        property string loginButton: qsTr("login")
        property string registerButton: qsTr("register")
    }

    property QtObject registerPage: QtObject {
        property string registerNameInput: qsTr("enter your name")
        property string registerPassInput: qsTr("enter your password")
        property string registerAccountButton: qsTr("register account")
        property string cancelRegisterButton: qsTr("cancel")

    }
}
