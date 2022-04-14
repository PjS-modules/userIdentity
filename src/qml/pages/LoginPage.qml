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

    signal authorizationAccepted

    signal returnFromAuthentication

    // local signals

    signal authorizationFailedWrongName
    signal authorizationFailedWrongPass

    signal authorizationRegistrationCompleted
    signal authorizationRegistrationWrongName
    signal authorizationRegistrationWrongPass

    signal goToRegisterPage

    //

    authorizationLoginButton.onClicked: {
        // TO-DO:
        if (authorizationNameInput.text === ""){
            authorizationFailedWrongName()}
        if (authorizationPassInput.text === ""){
            authorizationFailedWrongPass()}

        var id_token = Authenticator.authenticate(authorizationNameInput.text,authorizationPassInput.text);
        if (id_token !== 0){
            loginAccepted()
            //

        }

    }

    authorizationRegisterButton.onClicked: {
        goToRegisterPage()
    }

    Keys.onEscapePressed: {
        returnFromAuthentication()
    }
}
