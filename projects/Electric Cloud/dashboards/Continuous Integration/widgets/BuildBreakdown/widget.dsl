
widget 'BuildBreakdown', {
  description = 'Breakdown of total builds by outcome'
  attributeDataType = [
    'total': 'NUMBER',
    'yAxis': 'NUMBER',
    'xAxis': 'STRING',
  ]
  attributePath = [
    'total': 'total',
    'yAxis': 'buildStatus_count',
    'xAxis': 'buildStatus',
  ]
  color = [
    'SUCCESS': '#70b723',
    'NOT_BUILT': '#567b99',
    'ABORTED': '#808080',
    'FAILURE': '#eb1c24',
    'WARNING': '#DA833E',
    'UNSTABLE': '#AD5D4E',
  ]
  dashboardName = 'Continuous Integration'
  orderIndex = '2'
  projectName = 'Electric Cloud'
  reportName = 'BuildBreakdown'
  reportProjectName = 'Electric Cloud'
  title = 'Total Number of Builds'
  visualization = 'DONUT_CHART'
}
