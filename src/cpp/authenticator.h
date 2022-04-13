/*
 * Authenticator.
 *
 * This file is part of PjS Project.
 * All rights reserved , distributed under GPLv3+ ,
 * if not explicitly stated otherwise (see www.gnu.org for details).
 */


#ifndef AUTHENTICATOR_H
#define AUTHENTICATOR_H

#include <string>

using ID_TOKEN = int;
using ROSTRING = const std::string;


class Authenticator {
public:

    Authenticator();

    ID_TOKEN authenticate(ROSTRING login, ROSTRING pass);
};


#endif // AUTHENTICATOR_H
