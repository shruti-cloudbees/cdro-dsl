
pipeline 'test-params', {
  description = ''
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  projectName = 'Default'
  skipStageMode = 'ENABLED'

  formalParameter 'Country', defaultValue: '', {
    expansionDeferred = '0'
    options = [
      'US': 'Washington',
      'India': 'Delhi',
    ]
    orderIndex = '1'
    required = '1'
    type = 'select'
  }

  formalParameter 'capital', {
    defaultValueDsl = '''def selectedValue = args.parameters[\'Country\']

if (selectedValue == \'US\') {
  return \'Washington\'
} else if (selectedValue == \'India\') {
  return \'Delhi\'
}
return \'\''''
    dependsOn = 'Country'
    expansionDeferred = '0'
    options = [
      'US': 'Washington',
      'India': 'Delhi',
    ]
    orderIndex = '2'
    required = '1'
    type = 'radio'
  }

  formalParameter 'name', {
    defaultValueDsl = '''
def selectedValue = args.parameters[\'Country\']

if (selectedValue) {
  return selectedValue
}
return \'\''''
    dependsOn = 'Country'
    expansionDeferred = '0'
    label = 'Capital'
    orderIndex = '3'
    required = '1'
    type = 'entry'
  }

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
    required = '0'
  }

  acl {
    inheriting = '1'
  }
}
