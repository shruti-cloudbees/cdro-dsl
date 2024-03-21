
widget 'NumberOfBuildsOverLastNDays', {
  description = 'Total number of builds that ran in the last 14 days, the last 7 days and today.'
  attributeDataType = [
    'yAxis': 'NUMBER',
    'xAxis': 'STRING',
    'stacks': 'STRING',
  ]
  attributePath = [
    'yAxis': 'buildStatus_count',
    'xAxis': 'builds',
    'stacks': 'buildStatus',
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
  orderIndex = '1'
  projectName = 'Electric Cloud'
  reportName = 'NumberOfBuildsOverLastNDays'
  reportProjectName = 'Electric Cloud'
  title = 'Number of Builds'
  visualization = 'STACKED_VERTICAL_BAR_CHART'
}
