import LDAP

main :: IO () 
main = do 
    ldap <- ldapInitialize "ldaps://ldap.hawaii.edu:636"
    ldapSimpleBind ldap "cn=filedrop,ou=Specials,dc=hawaii,dc=edu" "<password>" 
    r <- ldapSearch ldap (Just "dc=hawaii,dc=edu") LdapScopeSubtree 
    				     (Just ("uid=duckart")) LDAPAllUserAttrs False
    print r
