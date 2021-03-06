client.directories.create(
  name: 'ruby ldap directory',
  description: 'ruby ldap directory description',
  provider: {
    provider_id: 'ldap',
    agent: {
      config: {
        directory_host: 'ldap.local',
        directory_port: '636',
        ssl_required: true,
        agent_user_dn: 'tom@stormpath.com',
        agent_user_dn_password: 'StormpathRulez',
        base_dn: 'dc=example,dc=com',
        poll_interval: 60,
        account_config: {
          dn_suffix: 'ou=employees',
          object_class: 'person',
          object_filter: '(cn=finance)',
          email_rdn: 'email',
          given_name_rdn: 'givenName',
          middle_name_rdn: 'middleName',
          surname_rdn: 'sn',
          username_rdn: 'uid',
          password_rdn: 'userPassword'
        },
        group_config: {
          dn_suffix: 'ou=groups',
          object_class: 'groupOfUniqueNames',
          object_filter: '(ou=*-group)',
          name_rdn: 'cn',
          description_rdn: 'description',
          members_rdn: 'uniqueMember'
        }
      }
    }
  }
)
