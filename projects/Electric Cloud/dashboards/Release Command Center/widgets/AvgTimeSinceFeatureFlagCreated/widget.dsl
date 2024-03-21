
widget 'AvgTimeSinceFeatureFlagCreated', {
  description = 'Average time since flag creation updated during the time period based on the \'Show as of\' date and the \'Time Slice\' parameter.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
    'timeSlice': '$[dashboardTimeSlice]',
  ]
  attributeDataType = [
    'metricValue': 'DURATION',
  ]
  attributePath = [
    'metricValue': 'avg_duration',
  ]
  colorRanges = '[{"color":"#a7d76e","greaterThanOrEquals":1}]'
  column = 'Feature Flags'
  dashboardName = 'Release Command Center'
  orderIndex = '10'
  projectName = 'Electric Cloud'
  reportName = 'AvgTimeSinceFeatureFlagCreated'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Average time since flag creation'
  visualization = 'METRIC'
}
