
widget 'UnitTestSuccessRate', {
  description = 'Percentage of successful unit tests out of the total unit tests that ran in the release builds during the time period based on the \'Show as of\' date and the \'Time Slice\' parameter.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
    'timeSlice': '$[dashboardTimeSlice]',
  ]
  attributeDataType = [
    'metricValue': 'PERCENT',
  ]
  attributePath = [
    'metricValue': 'success_percentage',
  ]
  column = 'Dev'
  dashboardName = 'Release Command Center'
  linkParameter = [
    'externalUrl': '${drilldown_base_url}',
  ]
  linkTarget = 'External'
  orderIndex = '3'
  projectName = 'Electric Cloud'
  reportName = 'UnitTestSuccessRate'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Unit Test Success Rate'
  visualization = 'METRIC'
}
