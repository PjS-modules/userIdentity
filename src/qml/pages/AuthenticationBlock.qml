/*
 * Authentication block.
 *
 * This file is part of PjS Project.
 * All rights reserved , distributed under GPLv3+ ,
 * if not explicitly stated otherwise (see www.gnu.org for details).
 */


import QtQuick
import QtQuick.Controls


Item {

    id: authenticationBlock

    anchors.fill: parent

    StackView {
        id: authorizationStack

        initialItem: loginPage
        anchors.fill: parent

        LoginPage{
            id: loginPage
        }
        
        RegisterPage{
            id: registerPage
        }
    }

    Connections {
        target: loginPage

        function onGoToRegisterPage() {
            authorizationStack.push(registerPage)
        }
    }

    Connections {
        target: registerPage

        function onReturnFromRegister() {
            authorizationStack.pop()
        }
    }

}
