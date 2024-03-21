
widget 'DeploymentSuccessRate', {
  description = 'Percentage of successful deployments during the time period based on the \'Show as of\' date and the \'Time Slice\' parameter.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
    'timeSlice': '$[dashboardTimeSlice]',
  ]
  attributeDataType = [
    'trend': 'NUMBER',
    'metricValue': 'PERCENT',
  ]
  attributePath = [
    'trend': 'output_metric_trend',
    'metricValue': 'output_metric_current_percent',
  ]
  colorRanges = '[{"color":"#a7d76e","greaterThanOrEquals":90},{"color":"#c3e8f7","greaterThanOrEquals":75,"lessThan":90},{"color":"#ffde8e","greaterThanOrEquals":50,"lessThan":75},{"color":"#ed1c24","lessThan":50}]'
  column = 'Deploy'
  dashboardName = 'Release Command Center'
  orderIndex = '4'
  projectName = 'Electric Cloud'
  reportName = 'DeploymentSuccessRate'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Success Rate'
  visualization = 'METRIC'
}
