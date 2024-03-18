
step 'generateDSL', {
  actualParameter = [
    'childrenInDifferentFile': '$[/myJob/childrenInDifferentFile]',
    'directory': '$[/myJob/directory]',
    'includeAcls': '$[/myJob/includeAcls]',
    'includeAclsInDifferentFile': '$[/myJob/includeAclsInDifferentFile]',
    'includeAllChildren': '$[/myJob/includeAllChildren]',
    'includeChildren': '$[/myJob/includeChildren]',
    'includeChildrenInSameFile': '$[/myJob/includeChildrenInSameFile]',
    'objectName': '$[/myJob/objectName]',
    'objectType': '$[/myJob/objectType]',
    'pool': '$[/myJob/pool]',
    'suppressDefaults': '$[/myJob/suppressDefaults]',
    'suppressNulls': '$[/myJob/suppressNulls]',
    'suppressParent': '$[/myJob/suppressParent]',
  ]
  alwaysRun = '0'
  broadcast = '0'
  errorHandling = 'abortProcedureNow'
  exclusiveMode = 'none'
  parallel = '0'
  procedureName = 'GitExport'
  projectName = 'Default'
  releaseMode = 'none'
  subprocedure = 'generateDslToDirectory'
  subproject = '/plugins/EC-DslDeploy/project'
  timeLimit = '0'
  timeLimitUnits = 'seconds'

  acl {
    inheriting = '1'
  }
}
