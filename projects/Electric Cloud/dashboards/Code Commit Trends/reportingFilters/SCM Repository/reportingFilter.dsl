
reportingFilter 'SCM Repository', {
  description = 'Filter commits by the SCM system repository'
  dashboardName = 'Code Commit Trends'
  operator = 'IN'
  orderIndex = '2'
  parameterName = 'scmUrl'
  projectName = 'Electric Cloud'
  reportObjectTypeName = 'code_commit'
  required = '0'
  type = 'CUSTOM'
}
