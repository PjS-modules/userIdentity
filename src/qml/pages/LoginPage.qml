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
        // TO-DO:
        var id_token = Authenticator.authenticate(loginNameInput.text,loginPassInput.text);
        if (id_token !== 0){
            loginAccepted()
            console.log(id_token);
        }

    }

    registerButton.onClicked: {
        goToRegisterPage()
    }
}
