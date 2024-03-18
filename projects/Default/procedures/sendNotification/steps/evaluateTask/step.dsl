import java.io.File


step 'evaluateTask', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/sendNotification/steps/evaluateTask.cmd").text
  condition = ''
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  procedureName = 'sendNotification'
  projectName = 'Default'
  releaseMode = 'none'
  resourceName = ''
  shell = ''
  subprocedure = ''
  subproject = ''
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  workingDirectory = ''
  workspaceName = ''

  acl {
    inheriting = '1'
  }
}
