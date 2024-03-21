
widget 'AverageBuildDuration', {
  description = 'Daily average build duration over time'
  attributeDataType = [
    'yAxis': 'DURATION',
    'xAxis': 'DATE',
  ]
  attributePath = [
    'yAxis': 'average_duration',
    'xAxis': 'buildDate_label',
  ]
  dashboardName = 'Continuous Integration'
  orderIndex = '6'
  projectName = 'Electric Cloud'
  reportName = 'AverageBuildDuration'
  reportProjectName = 'Electric Cloud'
  title = 'Average Build Duration'
  visualization = 'LINE_CHART'
}
