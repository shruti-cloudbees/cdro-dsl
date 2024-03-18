
credential 'credential-1', userName: 'admin', {
  description = ''
  credentialType = 'LOCAL'
  projectName = 'Default'

  acl {
    inheriting = '0'

    aclEntry 'user', principalName: 'admin', {
      changePermissionsPrivilege = 'allow'
      executePrivilege = 'allow'
      modifyPrivilege = 'allow'
      readPrivilege = 'allow'
    }

    aclEntry 'user', principalName: 'project: ProjectA', {
      changePermissionsPrivilege = 'inherit'
      executePrivilege = 'allow'
      modifyPrivilege = 'inherit'
      readPrivilege = 'allow'
    }
  }
}
