
widget 'RemainingDaysInTheRelease', {
  description = 'Display the number of days remaining in the release.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
  ]
  attributeDataType = [
    'metricValue': 'NUMBER',
  ]
  attributePath = [
    'metricValue': 'number_of_days',
  ]
  colorRanges = '[{"color":"#00adee","greaterThanOrEquals":0},{"color":"#ed1c24","lessThan":0}]'
  dashboardName = 'Release Command Center'
  orderIndex = '3'
  projectName = 'Electric Cloud'
  reportName = 'RemainingDaysInTheRelease'
  reportProjectName = 'Electric Cloud'
  section = 'SUMMARY'
  title = 'Days to Delivery'
  visualization = 'METRIC'
}
