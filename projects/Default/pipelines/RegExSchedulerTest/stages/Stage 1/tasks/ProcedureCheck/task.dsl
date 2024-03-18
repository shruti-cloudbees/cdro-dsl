
task 'ProcedureCheck', {
  actualParameter = [
    'greetings': '$[/myPipelineRuntime/greetings]',
    'runtimeName': '$[/myPipelineRuntime/name]',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'Default'
  resourceName = ''
  skippable = '0'
  subprocedure = 'RegExProcTest'
  subproject = 'Default'
  taskType = 'PROCEDURE'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'

  acl {
    inheriting = '1'
  }
}
