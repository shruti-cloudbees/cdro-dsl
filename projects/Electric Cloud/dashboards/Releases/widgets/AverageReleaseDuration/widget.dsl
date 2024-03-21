
widget 'AverageReleaseDuration', {
  description = 'Average duration of releases over time'
  attributeDataType = [
    'yAxis': 'DURATION',
    'xAxis': 'DATE',
  ]
  attributePath = [
    'yAxis': 'avg_duration',
    'xAxis': 'release_date_label',
  ]
  dashboardName = 'Releases'
  linkParameter = [
    'actualEndTimeMax': '${release_date_max_label}',
    'actualEndTimeMin': '${release_date_min_label}',
  ]
  linkTarget = 'Releases'
  orderIndex = '3'
  projectName = 'Electric Cloud'
  reportName = 'AverageReleaseDuration'
  reportProjectName = 'Electric Cloud'
  visualization = 'LINE_CHART'
  visualizationProperty = [
    'defaultColor': '#223F9B',
  ]
}
