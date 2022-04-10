/*
 * Login page ui.
 *
 * This file is part of PjS Project.
 * All rights reserved , distributed under GPLv3+ ,
 * if not explicitly stated otherwise (see www.gnu.org for details).
 */


import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "../"


Item {

    property alias loginNameInput : loginNameInput
    property alias loginPassInput : loginPassInput
    property alias loginButton : loginButton
    property alias registerButton : registerButton

    clip: true

    ColumnLayout {

        //anchors.fill: parent
        anchors.centerIn: parent

        TextField {
            id: loginNameInput
            width: 80
            height: 20
            placeholderText: Texts_Authorization.titlebar
            font.pixelSize: 12
        }

        TextField {
            id: loginPassInput
            width: 80
            height: 20
            placeholderText: Texts_Authorization.loginPage.passInputPlaceholder
            font.pixelSize: 12
        }

        RowLayout {
            id: rowLayout
            width: 100
            height: 100

            Button {
                id: loginButton
                text: Texts_Authorization.loginPage.loginButton
            }

            Button {
                id: registerButton
                text: Texts_Authorization.loginPage.registerButton
            }
        }
    }
}
