
widget 'ReleaseAutomationOverTime', {
  description = 'Release automation broken down by time'
  attributeDataType = [
    'yAxis': 'PERCENT',
    'xAxis': 'DATE',
  ]
  attributePath = [
    'yAxis': 'automation_percentage',
    'xAxis': 'release_date_label',
  ]
  dashboardName = 'Releases'
  orderIndex = '2'
  projectName = 'Electric Cloud'
  reportName = 'ReleaseAutomationOverTime'
  reportProjectName = 'Electric Cloud'
  visualization = 'AREA_CHART'
  visualizationProperty = [
    'defaultColor': '#00ADF1',
  ]
}
