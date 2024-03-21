
reportingFilter 'DateFilter', {
  description = 'Filter releases and tasks by @timestamp field which is mapped from release actual end date and task finish date.'
  dashboardName = 'Releases'
  operator = 'BETWEEN'
  orderIndex = '1'
  parameterName = '@timestamp'
  projectName = 'Electric Cloud'
  required = '1'
  type = 'DATE'
}
