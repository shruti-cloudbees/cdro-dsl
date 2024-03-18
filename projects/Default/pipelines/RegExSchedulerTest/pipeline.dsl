
pipeline 'RegExSchedulerTest', {
  description = ''
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  projectName = 'Default'
  skipStageMode = 'ENABLED'

  formalParameter 'greetings', defaultValue: 'Hello', {
    expansionDeferred = '0'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
    required = '0'
  }

  acl {
    inheriting = '1'
  }
}
