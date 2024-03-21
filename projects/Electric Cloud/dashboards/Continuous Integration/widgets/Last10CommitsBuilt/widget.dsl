
widget 'Last10CommitsBuilt', {
  description = 'Details on the last 10 commits that have been built. Click on the build number to drill-down into the build details.'
  attributeDataType = [
    'column1': 'STRING',
    'column4': 'IMAGE',
    'column3': 'STRING',
    'column2': 'STRING',
  ]
  attributePath = [
    'column1': 'buildNumberOrJobName',
    'column2Label': 'Commit ID',
    'column4Label': 'Status',
    'column4': 'buildStatusImage',
    'column3': 'commitAuthor',
    'column2': 'commitId',
    'column3Label': 'Commiter',
    'column1Label': 'Build',
  ]
  dashboardName = 'Continuous Integration'
  linkParameter = [
    'externalUrl': '${buildUrl}',
  ]
  linkTarget = 'External'
  orderIndex = '4'
  projectName = 'Electric Cloud'
  reportName = 'Last10CommitsBuilt'
  reportProjectName = 'Electric Cloud'
  title = 'Last 10 Commits Built'
  visualization = 'TABLE'
}
