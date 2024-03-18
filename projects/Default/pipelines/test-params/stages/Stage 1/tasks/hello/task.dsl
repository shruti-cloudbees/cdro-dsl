import java.io.File


task 'hello', {
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  command = new File(projectDir, "./pipelines/test-params/stages/Stage 1/tasks/hello.cmd").text
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'Default'
  resourceName = ''
  skippable = '0'
  taskType = 'COMMAND'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'

  acl {
    inheriting = '1'
  }
}
