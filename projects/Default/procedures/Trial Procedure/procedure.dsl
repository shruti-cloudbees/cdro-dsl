
procedure 'Trial Procedure', {
  description = ''
  jobNameTemplate = '$[/myProcedure]-$[/increment /myProcedure/count]'
  projectName = 'Default'
  resourceName = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalOutputParameter 'whoRanMe'

  formalParameter 'greetName', defaultValue: '', {
    description = 'Name to use for the "Hello" greeting'
    expansionDeferred = '0'
    label = 'Greet Name'
    orderIndex = '1'
    required = '1'
    type = 'entry'
    validationDsl = '''if(args.parameters[\'greetName\']?.contains(" "))
    return "No spaces allowed!"
else
    return null'''
  }

  formalParameter 'cdUser', defaultValue: '', {
    description = 'A list of users from CloudBees CD'
    expansionDeferred = '0'
    label = 'CD User'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

def options = new FormalParameterOptionsResult()
getUsers().users.each { aUser -> options.add(aUser.userName, aUser.fullUserName)}
return options'''
    orderIndex = '2'
    required = '1'
    type = 'select'
  }

  acl {
    inheriting = '1'
  }
}
