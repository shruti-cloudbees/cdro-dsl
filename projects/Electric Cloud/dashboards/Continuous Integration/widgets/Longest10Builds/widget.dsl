
widget 'Longest10Builds', {
  description = 'The top 10 longest running builds. Click on the build number to drill-down into the build details.'
  attributeDataType = [
    'column1': 'STRING',
    'column4': 'IMAGE',
    'column3': 'DATE',
    'column2': 'DURATION',
  ]
  attributePath = [
    'column1': 'buildNumberOrJobName',
    'column2Label': 'Build Duration',
    'column4Label': 'Status',
    'column4': 'buildStatusImage',
    'column3': 'endTime_date',
    'column2': 'duration',
    'column3Label': 'Build Date',
    'column1Label': 'Build',
  ]
  dashboardName = 'Continuous Integration'
  linkParameter = [
    'externalUrl': '${sourceUrl}',
  ]
  linkTarget = 'External'
  orderIndex = '7'
  projectName = 'Electric Cloud'
  reportName = 'Longest10Builds'
  reportProjectName = 'Electric Cloud'
  title = 'Longest 10 Builds'
  visualization = 'TABLE'
}
