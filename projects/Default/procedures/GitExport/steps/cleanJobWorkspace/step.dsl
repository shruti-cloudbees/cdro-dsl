import java.io.File


step 'cleanJobWorkspace', {
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/GitExport/steps/cleanJobWorkspace.cmd").text
  errorHandling = 'abortJobNow'
  exclusiveMode = 'none'
  parallel = '0'
  procedureName = 'GitExport'
  projectName = 'Default'
  releaseMode = 'none'
  timeLimit = '0'
  timeLimitUnits = 'seconds'

  acl {
    inheriting = '1'
  }
}
