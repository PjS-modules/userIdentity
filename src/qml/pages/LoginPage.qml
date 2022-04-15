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

    function clearAuthorizationValues(){
        authorizationNameInput.text = ""
        authorizationPassInput.text = ""
    }

    authorizationLoginButton.onClicked: {
        // TO-DO: CODE REAL SOLUTION

        var id_token = Authenticator.authenticate(authorizationNameInput.text,
                                                  authorizationPassInput.text);
        if (id_token !== 0){
            clearAuthorizationValues()
            authorizationAccepted()
        }
        else {
            if (authorizationNameInput.text === ""){
                authorizationFailedWrongName()
                clearAuthorizationValues()
            }
            if (authorizationPassInput.text === ""){
                authorizationFailedWrongPass()
                clearAuthorizationValues()
            }
        }
    }

    authorizationRegisterButton.onClicked: {
        clearAuthorizationValues()
        goToRegisterPage()
    }

    Keys.onEscapePressed: {
        clearAuthorizationValues()
        returnFromAuthentication()
    }
}
