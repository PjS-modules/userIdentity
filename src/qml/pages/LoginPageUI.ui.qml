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

    property alias authorizationNameInput : authorizationNameInput
    property alias authorizationPassInput : authorizationPassInput
    property alias authorizationLoginButton : authorizationLoginButton
    property alias authorizationRegisterButton : authorizationRegisterButton

    clip: true

    ColumnLayout {

        anchors.centerIn: parent

        TextField {
            id: authorizationNameInput
            width: 80
            height: 20
            placeholderText: Texts_UserIdentity.titlebar
            font.pixelSize: 12
        }

        TextField {
            id: authorizationPassInput
            width: 80
            height: 20
            placeholderText: Texts_UserIdentity.loginPage.passInputPlaceholder
            font.pixelSize: 12
        }

        RowLayout {
            id: rowLayout
            width: 100
            height: 100

            Button {
                id: authorizationLoginButton
                text: Texts_UserIdentity.loginPage.loginButton
            }

            Button {
                id: authorizationRegisterButton
                text: Texts_UserIdentity.loginPage.registerButton
            }
        }
    }
}
