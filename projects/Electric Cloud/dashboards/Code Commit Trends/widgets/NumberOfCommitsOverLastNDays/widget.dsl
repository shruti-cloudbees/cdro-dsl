
widget 'NumberOfCommitsOverLastNDays', {
  description = 'Total number of commits in the last 14 days, the last 7 days and today.'
  attributeDataType = [
    'yAxis': 'NUMBER',
    'xAxis': 'STRING',
  ]
  attributePath = [
    'yAxis': 'commits_count',
    'xAxis': 'commits',
  ]
  dashboardName = 'Code Commit Trends'
  orderIndex = '1'
  projectName = 'Electric Cloud'
  reportName = 'NumberOfCommitsOverLastNDays'
  reportProjectName = 'Electric Cloud'
  title = 'Number of Commits'
  visualization = 'VERTICAL_BAR_CHART'
  visualizationProperty = [
    'defaultColor': '#00ADEE',
  ]
}
