import java.io.File


task 'Deployment', {
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  command = new File(projectDir, "./pipelines/RegExSchedulerTest/stages/Stage 2/tasks/Deployment.cmd").text
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'Default'
  skippable = '0'
  taskType = 'COMMAND'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'

  acl {
    inheriting = '1'
  }
}
