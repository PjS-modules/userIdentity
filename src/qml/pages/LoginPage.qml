/*
 * Login page.
 *
 * This file is part of PjS Project.
 * All rights reserved , distributed under GPLv3+ ,
 * if not explicitly stated otherwise (see www.gnu.org for details).
 */


import QtQuick


LoginPageUI {

    // external API signals
    signal loginAccepted
    signal loginFailedWrongName
    signal loginFailedWrongPass

    signal loginRegistrationCompleted
    signal loginRegistrationWrongName
    signal loginRegistrationWrongPass

    // local signals
    signal goToRegisterPage

    loginButton.onClicked: {
        loginAccepted()
        console.log(Authenticator.authenticate(loginNameInput.text,loginPassInput.text))
    }

    registerButton.onClicked: {
        goToRegisterPage()
    }
}
