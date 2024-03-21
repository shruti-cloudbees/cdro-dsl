
widget 'Top10CodeCommiters', {
  description = 'Top 10 code commiters with the highest number of commits'
  attributeDataType = [
    'column1': 'STRING',
    'column2': 'NUMBER',
  ]
  attributePath = [
    'column1': 'commitAuthor',
    'column2Label': 'Number of Commits',
    'column2': 'commitAuthor_count',
    'column1Label': 'Code Commiter',
  ]
  dashboardName = 'Code Commit Trends'
  orderIndex = '4'
  projectName = 'Electric Cloud'
  reportName = 'Top10CodeCommiters'
  reportProjectName = 'Electric Cloud'
  title = 'Top Code Commiters by Commits'
  visualization = 'TABLE'
}
