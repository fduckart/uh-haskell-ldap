uh-haskell-ldap
===========

LDAP Haskell Demonstration Program

**Overview**

The program demonstrates how to do a simple LDAP search
of the University of Hawaii LDAP service.

Note: You must specify your special DN and its password.<br/>
The example run of the program uses the 'filedrop' special DN,
but the value of the password has been removed from the
checked-in code. The use of the special DN will also require
the ability to pass through the UH firewall.

**Technology**

The program was developed on Apple Mac OS X 10.10.2,
using ghc version 7.8.3 and the LDAP module version 0.6.10.

The program was subsequently verified to run on Apple Mac OS X 10.11.6,
using ghc version 8.0.1 and the LDAP module version 0.6.11.

**Verify you have Haskell Compiler and Linker installed**

    $ ghc --version
    The Glorious Glasgow Haskell Compilation System, version 8.10.3

**Verify you have cabal installed**

    $ cabal --version
    cabal-install version 3.2.0.0
    compiled using version 3.2.0.0 of the Cabal library

    $ cabal update
    Downloading the latest package list from hackage.haskell.org

**Install the LDAP module**

    $ cabal install LDAP
    Build profile: -w ghc-8.10.3 -O1
    In order, the following will be built (use -v for more details):
     - LDAP-0.6.11 (lib) (requires download & build)
    Downloading  LDAP-0.6.11
    Downloaded   LDAP-0.6.11
    Starting     LDAP-0.6.11 (lib)
    Building     LDAP-0.6.11 (lib)
    Installing   LDAP-0.6.11 (lib)
    Completed    LDAP-0.6.11 (lib)

**Compile and Build Program**

    $ ghc -o ldaprunner ldaprunner.hs
    [1 of 1] Compiling Main             ( ldaprunner.hs, ldaprunner.o )
    Linking ldaprunner ...

**Running the Program**

Run the program from the command line:

    $ ./ldaprunner
    [LDAPEntry {
        ledn = "uhEntry=16d4fd0bffd6c91a4e8af1b6642c2cea7dddcc707,ou=People,dc=hawaii,dc=edu",
        leattrs = [("objectClass",["eduPerson","inetOrgPerson","organizationalPerson","person","top","uhEduPerson"]),
                   ("uhUuid",["12345678"]),
                   ("cn",["Frank R Duckart"]),
                   ("eduPersonAffiliation",["staff"]),
                   ("eduPersonOrgDN",["uhsystem"]),
                   ("givenName",["Frank"]),
                   ("mail",["duckart@hawaii.edu","frank.duckart@hawaii.edu"]),
                   ("sn",["Duckart"]),
                   ("uhAcknowledgement",["generalConfidentialityNotice=20060101T000000"]),
                   ("uhOrgAffiliation",["eduPersonOrgDN=uhsystem,eduPersonAffiliation=staff"]),
                   ("uid",["duckart"]),
                   ("displayName",["Frank Duckart"]),
                   ("facsimileTelephoneNumber",["(808) 555-1212"]),
                   ("ou",["University of Hawaii System","Information Technology Services, Management Information Systems"]),
                   ("physicalDeliveryOfficeName",["Info Tech Ctr, 6th Fl"]),
                   ("telephoneNumber",["(808) 555-1212"]),
                   ("title",["Info Tech Spec"])]}
                  ]

**For More Information**

Contact me via email at duckart@hawaii.edu
