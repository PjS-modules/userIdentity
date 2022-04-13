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
        console.log("!!")
        console.log(Authenticator.authenticate(32))
    }

    registerButton.onClicked: {
        goToRegisterPage()
    }
}
