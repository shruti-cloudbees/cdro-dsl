
widget 'Top10CodeCommitersByLinesOfCode', {
  description = 'Top 10 code commiters with the most number of lines of code added, removed and updated.'
  attributeDataType = [
    'column1': 'STRING',
    'column2': 'NUMBER',
  ]
  attributePath = [
    'column1': 'commitAuthor',
    'column2Label': 'Total Lines of Code',
    'column2': 'totalLinesOfCode',
    'column1Label': 'Code Commiter',
  ]
  dashboardName = 'Code Commit Trends'
  orderIndex = '5'
  projectName = 'Electric Cloud'
  reportName = 'Top10CodeCommitersByLinesOfCode'
  reportProjectName = 'Electric Cloud'
  title = 'Top Code Commiters by Lines of Code'
  visualization = 'TABLE'
}
