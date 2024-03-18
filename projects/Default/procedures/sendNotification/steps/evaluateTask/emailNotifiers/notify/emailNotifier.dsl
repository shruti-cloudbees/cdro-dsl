
emailNotifier 'notify', {
  description = ''
  condition = '$[/javascript myJob.taskOutcome == "error"]'
  configName = 'ssharma@gmail.com'
  destinations = 'ssharma@gmail.com'
  eventType = 'onCompletion'
  formattingTemplate = '''Subject: CloudBees CD notification

Message body goes here.'''

  acl {
    inheriting = '1'

    aclEntry 'user', principalName: 'admin', {
      changePermissionsPrivilege = 'allow'
      executePrivilege = 'allow'
      modifyPrivilege = 'allow'
      readPrivilege = 'allow'
    }
  }
}
