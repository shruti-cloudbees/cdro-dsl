
pluginConfiguration 'shruti-git', {
  description = ''
  field = [
    'authType': 'password',
    'credential': 'credential',
    'debugLevel': '0',
    'ignoreSSLErrors': 'false',
    'library': 'jgit',
    'repositoryURL': 'https://github.com/shruti-cloudbees/cdro-dsl.git',
  ]
  pluginKey = 'EC-Git'
  projectName = 'Default'

  addCredential 'credential', {
    passwordRecoveryAllowed = '1'
    projectName = 'Default'
    userName = 'shruti-cloudbees'

    acl {
      inheriting = '0'

      aclEntry 'user', principalName: 'admin', {
        changePermissionsPrivilege = 'allow'
        executePrivilege = 'allow'
        modifyPrivilege = 'allow'
        readPrivilege = 'allow'
      }
    }
  }

  acl {
    inheriting = '1'
  }
}
