
widget 'CommitFrequency', {
  description = 'Number of code commits made per day'
  attributeDataType = [
    'yAxis': 'NUMBER',
    'xAxis': 'DATE',
  ]
  attributePath = [
    'yAxis': 'commitDate_count',
    'xAxis': 'commitDate_label',
  ]
  dashboardName = 'Code Commit Trends'
  orderIndex = '2'
  projectName = 'Electric Cloud'
  reportName = 'CommitFrequency'
  reportProjectName = 'Electric Cloud'
  title = 'Daily Code Commit Frequency'
  visualization = 'LINE_CHART'
  visualizationProperty = [
    'defaultColor': '#FF8500',
    'lineStyle': 'straightLine',
  ]
}
