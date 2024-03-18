
pluginConfiguration 'rest', {
  description = ''
  field = [
    'authType': 'basic',
    'baseUrl': 'https://cdro.ssharma.ps.beescloud.com/rest/doc/v1.0/',
    'configRequestType': 'GET',
    'credential': 'credential',
    'debugLevel': '0',
    'ignoreSSLIssues': 'false',
    'protocolCustom': 'false',
    'protocolHTTP11': 'false',
    'protocolHTTP20': 'false',
    'protocolHTTP20PK': 'false',
  ]
  pluginKey = 'EC-Rest'
  projectName = 'Default'

  addCredential 'credential', {
    passwordRecoveryAllowed = '1'
    projectName = 'Default'
    userName = 'admin'

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
