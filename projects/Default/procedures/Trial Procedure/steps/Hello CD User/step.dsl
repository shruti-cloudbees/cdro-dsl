import java.io.File


step 'Hello CD User', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Trial Procedure/steps/Hello CD User.cmd").text
  condition = ''
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  procedureName = 'Trial Procedure'
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
