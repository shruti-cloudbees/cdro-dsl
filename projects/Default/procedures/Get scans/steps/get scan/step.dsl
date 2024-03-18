
step 'get scan', {
  description = ''
  actualParameter = [
    'acceptedMimeTypes': '',
    'config': '/projects/Default/pluginConfigurations/rest',
    'contentType': '',
    'cookieHeaderValue': '',
    'filePath': '',
    'formContent': '',
    'headers': '',
    'ignoreAuth': 'false',
    'pathUrl': 'www.google.com',
    'postScriptContent': '',
    'postScriptOutput': '',
    'postScriptShell': '',
    'queryOptions': '',
    'requestTimeout': '',
    'requestType': 'GET',
    'response_outpp': '',
    'responseContentPolling': '',
    'targetFile': '',
    'writeToFile': 'false',
  ]
  alwaysRun = '0'
  broadcast = '0'
  condition = ''
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  parallel = '0'
  precondition = ''
  procedureName = 'Get scans'
  projectName = 'Default'
  releaseMode = 'none'
  resourceName = ''
  subprocedure = 'runRest'
  subproject = '/plugins/EC-Rest/project'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  workspaceName = ''

  acl {
    inheriting = '1'
  }
}
