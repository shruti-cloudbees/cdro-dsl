
procedure 'sendNotification', {
  description = ''
  jobNameTemplate = ''
  projectName = 'Default'
  resourceName = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'taskOutcome', defaultValue: '', {
    expansionDeferred = '0'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  acl {
    inheriting = '1'
  }
}
