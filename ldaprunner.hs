import LDAP

main :: IO () 
main = do 
    let ldapUri      = "ldaps://ldap.hawaii.edu:636"
        bindDn       = "cn=filedrop,ou=Specials,dc=hawaii,dc=edu"
        bindPassword = "" -- <-- Your password goes here.
        baseDn       = "dc=hawaii,dc=edu"
        searchFilter = "uid=duckart"
    
    ldap <- ldapInitialize ldapUri
    ldapSimpleBind ldap bindDn bindPassword
    e <- ldapSearch ldap (Just baseDn) LdapScopeSubtree 
                         (Just searchFilter) LDAPAllUserAttrs False
    print e