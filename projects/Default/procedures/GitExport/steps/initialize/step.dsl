import java.io.File


step 'initialize', {
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/GitExport/steps/initialize.groovy").text
  errorHandling = 'abortJobNow'
  exclusiveMode = 'none'
  parallel = '0'
  procedureName = 'GitExport'
  projectName = 'Default'
  releaseMode = 'none'
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'seconds'

  acl {
    inheriting = '1'
  }
}
