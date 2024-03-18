import java.io.File


step 'property1', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Get scans/steps/property1.cmd").text
  condition = ''
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  procedureName = 'Get scans'
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
