
widget 'TotalSuccessfulDeployments', {
  description = 'Number of successful application deployments during the time period based on the \'Show as of\' date and the \'Time Slice\' parameter.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
    'timeSlice': '$[dashboardTimeSlice]',
  ]
  attributeDataType = [
    'total': 'NUMBER',
    'metricValue': 'NUMBER',
  ]
  attributePath = [
    'total': 'total',
    'metricValue': 'successful_deployment_count',
  ]
  column = 'Deploy'
  dashboardName = 'Release Command Center'
  linkParameter = [
    'applicationType': 'traditional',
    'deploymentDateMax': '${deployment_date_max_label}',
    'deploymentDateMin': '${deployment_date_min_label}',
  ]
  linkTarget = 'Deployments'
  orderIndex = '5'
  projectName = 'Electric Cloud'
  reportName = 'TotalSuccessfulDeployments'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Successful Application Deployments'
  visualization = 'METRIC'
}
