
widget 'AverageJobDuration', {
  description = 'Average daily job duration'
  attributeDataType = [
    'yAxis': 'DURATION',
    'xAxis': 'DATE',
  ]
  attributePath = [
    'yAxis': 'average_elapsedTime',
    'xAxis': 'jobStartDate_label',
  ]
  dashboardName = 'Job Metrics'
  orderIndex = '3'
  projectName = 'Electric Cloud'
  reportName = 'AverageJobDuration'
  reportProjectName = 'Electric Cloud'
  title = 'Average Job Duration'
  visualization = 'LINE_CHART'
  visualizationProperty = [
    'lineStyle': 'straightLine',
  ]
}
