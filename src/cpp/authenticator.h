/*
 * Authenticator.
 *
 * This file is part of PjS Project.
 * All rights reserved , distributed under GPLv3+ ,
 * if not explicitly stated otherwise (see www.gnu.org for details).
 */


#ifndef AUTHENTICATOR_H
#define AUTHENTICATOR_H

using HASH = int;
class Authenticator {
public:

    Authenticator();

    HASH authenticate(HASH loginPass);
};


#endif // AUTHENTICATOR_H
