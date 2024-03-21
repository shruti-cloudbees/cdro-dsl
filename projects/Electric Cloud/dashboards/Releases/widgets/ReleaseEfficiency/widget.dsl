
widget 'ReleaseEfficiency', {
  description = 'Release efficiency - # of Automated/Manual tasks, and the total duration for the release tasks'
  attributeDataType = [
    'total': 'DURATION',
    'yAxis': 'DURATION',
    'xAxis': 'STRING',
  ]
  attributePath = [
    'total': 'total_duration',
    'yAxis': 'duration',
    'xAxis': 'efficiency_type',
  ]
  color = [
    'Automated': '#223F9B',
    'Manual': '#00ADF1',
  ]
  dashboardName = 'Releases'
  orderIndex = '1'
  projectName = 'Electric Cloud'
  reportName = 'ReleaseEfficiency'
  reportProjectName = 'Electric Cloud'
  visualization = 'DONUT_CHART'
}
