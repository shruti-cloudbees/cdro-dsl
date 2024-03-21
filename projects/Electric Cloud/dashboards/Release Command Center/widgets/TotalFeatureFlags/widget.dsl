
widget 'TotalFeatureFlags', {
  description = 'Total number of flags that are in this release updated during the time period based on the \'Show as of\' date and the \'Time Slice\' parameter.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
    'timeSlice': '$[dashboardTimeSlice]',
  ]
  attributeDataType = [
    'metricValue': 'NUMBER',
  ]
  attributePath = [
    'metricValue': 'count',
  ]
  colorRanges = '[{"color":"#a7d76e","greaterThanOrEquals":1}]'
  column = 'Feature Flags'
  dashboardName = 'Release Command Center'
  orderIndex = '8'
  projectName = 'Electric Cloud'
  reportName = 'TotalFeatureFlags'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Total number of flags that are in this release'
  visualization = 'METRIC'
}
