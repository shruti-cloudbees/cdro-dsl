
project 'Default', {
  description = 'Default project created during installation.'
  tracked = '1'

  acl {
    inheriting = '1'

    aclEntry 'group', principalName: 'Everyone', {
      changePermissionsPrivilege = 'allow'
      executePrivilege = 'allow'
      modifyPrivilege = 'allow'
      readPrivilege = 'allow'
    }

    aclEntry 'user', principalName: 'project: Default', {
      changePermissionsPrivilege = 'allow'
      executePrivilege = 'allow'
      modifyPrivilege = 'allow'
      readPrivilege = 'allow'
    }

    aclEntry 'user', principalName: 'project: Electric Cloud', {
      changePermissionsPrivilege = 'inherit'
      executePrivilege = 'inherit'
      modifyPrivilege = 'allow'
      readPrivilege = 'inherit'
    }
  }
}
