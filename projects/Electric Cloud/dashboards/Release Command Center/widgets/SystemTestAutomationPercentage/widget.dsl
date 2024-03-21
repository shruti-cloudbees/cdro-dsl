
widget 'SystemTestAutomationPercentage', {
  description = 'Percentage of automated system tests that ran as part of the release'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
    'timeSlice': '$[dashboardTimeSlice]',
  ]
  attributeDataType = [
    'metricValue': 'PERCENT',
  ]
  attributePath = [
    'metricValue': 'automation_percentage',
  ]
  column = 'Test'
  dashboardName = 'Release Command Center'
  linkParameter = [
    'externalUrl': '${drilldown_base_url}',
  ]
  linkTarget = 'External'
  orderIndex = '2'
  projectName = 'Electric Cloud'
  reportName = 'SystemTestAutomationPercentage'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Automated Tests'
  visualization = 'METRIC'
}
