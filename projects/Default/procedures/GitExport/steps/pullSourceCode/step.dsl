
step 'pullSourceCode', {
  actualParameter = [
    'branch': '$[/myJob/branch]',
    'clean': 'not',
    'cleanKind': 'untracked',
    'config': '$[/myJob/config]',
    'gitRepoFolder': '$[/myJob/directory]',
    'repoUrl': '$[/myJob/repoUrl]',
    'resultPropertySheet': '/myJob/pull',
    'submodules': '$[/myJob/submodules]',
  ]
  alwaysRun = '0'
  broadcast = '0'
  errorHandling = 'abortProcedureNow'
  exclusiveMode = 'none'
  parallel = '0'
  procedureName = 'GitExport'
  projectName = 'Default'
  releaseMode = 'none'
  subprocedure = 'Pull'
  subproject = '/plugins/EC-Git/project'
  timeLimit = '0'
  timeLimitUnits = 'seconds'

  acl {
    inheriting = '1'
  }
}
