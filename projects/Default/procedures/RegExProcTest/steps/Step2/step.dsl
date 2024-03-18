import java.io.File


step 'Step2', {
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/RegExProcTest/steps/Step2.groovy").text
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  parallel = '0'
  procedureName = 'RegExProcTest'
  projectName = 'Default'
  releaseMode = 'none'
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'seconds'

  acl {
    inheriting = '1'
  }
}
