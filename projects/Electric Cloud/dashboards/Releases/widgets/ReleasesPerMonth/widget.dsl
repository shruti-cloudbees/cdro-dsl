
widget 'ReleasesPerMonth', {
  description = 'Number of releases closed by month'
  attributeDataType = [
    'yAxis': 'NUMBER',
    'xAxis': 'DATE',
  ]
  attributePath = [
    'yAxis': 'release_date_count',
    'xAxis': 'release_date_label',
  ]
  dashboardName = 'Releases'
  linkParameter = [
    'actualEndTimeMax': '${release_date_max_label}',
    'actualEndTimeMin': '${release_date_min_label}',
  ]
  linkTarget = 'Releases'
  orderIndex = '4'
  projectName = 'Electric Cloud'
  reportName = 'ReleasesPerMonth'
  reportProjectName = 'Electric Cloud'
  visualization = 'VERTICAL_BAR_CHART'
  visualizationProperty = [
    'defaultColor': '#223F9B',
  ]
}
