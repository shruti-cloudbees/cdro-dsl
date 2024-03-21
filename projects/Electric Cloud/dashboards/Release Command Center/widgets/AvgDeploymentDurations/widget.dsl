
widget 'AvgDeploymentDurations', {
  description = 'Average deployment duration for successful deployments during the time period based on the \'Show as of\' date and the \'Time Slice\' parameter.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
    'timeSlice': '$[dashboardTimeSlice]',
  ]
  attributeDataType = [
    'metricValue': 'DURATION',
  ]
  attributePath = [
    'metricValue': 'avg_deployment_duration',
  ]
  column = 'Deploy'
  dashboardName = 'Release Command Center'
  orderIndex = '8'
  projectName = 'Electric Cloud'
  reportName = 'AvgDeploymentDurations'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Average Time to Deploy'
  visualization = 'METRIC'
}
