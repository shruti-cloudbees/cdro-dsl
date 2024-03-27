
resource 'cd-flow-agent-0', {
  hostName = 'cd-flow-agent-flow-agent-0.cd-flow-agent-flow-agents.cd'
  description = 'we created this description'
  hostType = 'CONCURRENT'
  resourceDisabled = '0'
  trusted = '0'
  useSSL = '1'
  workspaceName = 'cdro-workspace-123'
  zoneName = 'default'

  acl {
    inheriting = '0'

    aclEntry 'user', principalName: 'project: InnerProj', {
      changePermissionsPrivilege = 'inherit'
      executePrivilege = 'allow'
      modifyPrivilege = 'inherit'
      readPrivilege = 'allow'
    }
  }
}
