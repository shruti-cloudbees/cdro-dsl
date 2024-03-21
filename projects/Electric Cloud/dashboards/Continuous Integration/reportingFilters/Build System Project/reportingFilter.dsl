
reportingFilter 'Build System Project', {
  description = 'Filter builds by build system project name.'
  dashboardName = 'Continuous Integration'
  operator = 'IN'
  orderIndex = '3'
  parameterName = 'projectName'
  projectName = 'Electric Cloud'
  reportObjectTypeName = 'build'
  required = '0'
  type = 'CUSTOM'
}
