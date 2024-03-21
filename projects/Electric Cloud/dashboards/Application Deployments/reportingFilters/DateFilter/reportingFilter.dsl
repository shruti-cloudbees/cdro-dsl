
reportingFilter 'DateFilter', {
  description = 'Filter deployments by job finish.'
  dashboardName = 'Application Deployments'
  operator = 'BETWEEN'
  orderIndex = '1'
  parameterName = 'jobFinish'
  projectName = 'Electric Cloud'
  required = '1'
  type = 'DATE'
}
