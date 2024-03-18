
step 'commit', {
  actualParameter = [
    'authorEmail': '$[/myJob/authorEmail]',
    'authorName': '$[/myJob/authorName]',
    'committerEmail': '$[/myJob/committerEmail]',
    'committerName': '$[/myJob/committerName]',
    'config': '$[/myJob/config]',
    'failOnEmptyCommit': '$[/myJob/failOnEmptyCommit]',
    'files': '$[/myJob/files]',
    'gitRepoFolder': '$[/myJob/directory]',
    'message': 'Backing up $[/myJob/objectType] $[/myJob/objectName]',
    'push': '$[/myJob/push]',
    'remote': '$[/myJob/remote]',
    'removeMissing': '$[/myJob/removeMissing]',
    'resultPropertySheet': '/myJob/commit',
  ]
  alwaysRun = '0'
  broadcast = '0'
  errorHandling = 'abortProcedureNow'
  exclusiveMode = 'none'
  parallel = '0'
  procedureName = 'GitExport'
  projectName = 'Default'
  releaseMode = 'none'
  subprocedure = 'Commit'
  subproject = '/plugins/EC-Git/project'
  timeLimit = '0'
  timeLimitUnits = 'seconds'

  acl {
    inheriting = '1'
  }
}
