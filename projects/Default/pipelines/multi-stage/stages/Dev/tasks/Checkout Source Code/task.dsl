import java.io.File


task 'Checkout Source Code', {
  description = '''This is a placeholder task that can be used to check out source code from a SCM system. Click the \'Requires Definition\' link to open the Task Definition dialogue. You have two options:
1. Click on \'Plugin\'. Select a \'Plugin Category\' where you can then select \'Source Code Management\'. From there you can choose the Plugin that is needed for the SCM system to select the \'Checkout Code\' Procedure. You will then supply values for the required parameters.
2. Click on \'Procedure\'. Select the \'Project\' in which you have \'Checkout Code\' Procedures, and next select the appropriate one.
'''
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  command = new File(projectDir, "./pipelines/multi-stage/stages/Dev/tasks/Checkout Source Code.cmd").text
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'Default'
  resourceName = 'cd-flow-agent-0'
  skippable = '0'
  taskType = 'COMMAND'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'

  acl {
    inheriting = '1'
  }
}
