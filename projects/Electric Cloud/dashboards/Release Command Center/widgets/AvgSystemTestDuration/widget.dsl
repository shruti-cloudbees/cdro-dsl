
widget 'AvgSystemTestDuration', {
  description = 'Average time taken by system tests during the time period based on the \'Show as of\' date and the \'Time Slice\' parameter.'
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
  column = 'Test'
  dashboardName = 'Release Command Center'
  linkParameter = [
    'externalUrl': '${drilldown_base_url}',
  ]
  linkTarget = 'External'
  orderIndex = '3'
  projectName = 'Electric Cloud'
  reportName = 'AvgSystemTestDuration'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Time to Test'
  visualization = 'METRIC'
}
