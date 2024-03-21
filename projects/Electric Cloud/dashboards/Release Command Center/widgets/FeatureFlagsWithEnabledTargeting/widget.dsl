
widget 'FeatureFlagsWithEnabledTargeting', {
  description = 'Number of flags with targeting enabled updated during the time period based on the \'Show as of\' date and the \'Time Slice\' parameter.'
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
  orderIndex = '9'
  projectName = 'Electric Cloud'
  reportName = 'FeatureFlagsWithEnabledTargeting'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Number of flags with targeting enabled'
  visualization = 'METRIC'
}
