
widget 'Last10Builds', {
  description = 'Details on the last 10 builds that have completed. Click on the build number to drill-down into the build details.'
  attributeDataType = [
    'column1': 'STRING',
    'column3': 'IMAGE',
    'column2': 'DATE',
  ]
  attributePath = [
    'column1': 'buildNumberOrJobName',
    'column2Label': 'Build Date',
    'column3': 'buildStatusImage',
    'column2': 'endTime_date',
    'column3Label': 'Status',
    'column1Label': 'Build',
  ]
  dashboardName = 'Continuous Integration'
  linkParameter = [
    'externalUrl': '${sourceUrl}',
  ]
  linkTarget = 'External'
  orderIndex = '3'
  projectName = 'Electric Cloud'
  reportName = 'Last10Builds'
  reportProjectName = 'Electric Cloud'
  title = 'Last 10 Builds'
  visualization = 'TABLE'
}
