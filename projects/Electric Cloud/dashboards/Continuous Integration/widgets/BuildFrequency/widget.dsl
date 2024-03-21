
widget 'BuildFrequency', {
  description = 'Number of builds completed per day'
  attributeDataType = [
    'yAxis': 'NUMBER',
    'xAxis': 'DATE',
    'groups': 'STRING',
  ]
  attributePath = [
    'yAxis': 'buildStatus_count',
    'xAxis': 'buildDate_label',
    'groups': 'buildStatus',
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
  orderIndex = '5'
  projectName = 'Electric Cloud'
  reportName = 'BuildFrequency'
  reportProjectName = 'Electric Cloud'
  title = 'Daily Build Frequency'
  visualization = 'STACKED_AREA_CHART'
}
