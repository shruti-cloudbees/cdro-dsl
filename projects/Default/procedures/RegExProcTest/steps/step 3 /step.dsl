import java.io.File


step 'step 3 ', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/RegExProcTest/steps/step 3 .cmd").text
  condition = ''
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  procedureName = 'RegExProcTest'
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
