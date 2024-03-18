
procedure 'RegExProcTest', {
  description = ''
  jobNameTemplate = ''
  projectName = 'Default'
  resourceName = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'runtimeName', {
    expansionDeferred = '0'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'greetings', defaultValue: '', {
    expansionDeferred = '0'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }

  acl {
    inheriting = '1'
  }
}
