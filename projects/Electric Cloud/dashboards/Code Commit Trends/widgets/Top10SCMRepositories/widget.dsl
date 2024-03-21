
widget 'Top10SCMRepositories', {
  description = 'Top 10 SCM repositories with the most number of files added, removed and updated.'
  attributeDataType = [
    'yAxis': 'STRING',
    'xAxis': 'NUMBER',
    'stacks': 'STRING',
  ]
  attributePath = [
    'yAxis': 'scmUrl',
    'xAxis': 'fileCount',
    'stacks': 'changeType',
  ]
  color = [
    'deleted': '#CD2400',
    'added': '#FF8500',
    'updated': '#00ADEE',
  ]
  dashboardName = 'Code Commit Trends'
  orderIndex = '3'
  projectName = 'Electric Cloud'
  reportName = 'Top10SCMRepositories'
  reportProjectName = 'Electric Cloud'
  title = 'Top 10 SCM Repositories with the most file changes'
  visualization = 'STACKED_HORIZONTAL_BAR_CHART'
}
