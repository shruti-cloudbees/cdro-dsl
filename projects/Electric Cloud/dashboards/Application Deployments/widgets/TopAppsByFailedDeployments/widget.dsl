
widget 'TopAppsByFailedDeployments', {
  description = 'The top 5 applications with the most number of failed deployments'
  attributeDataType = [
    'column1': 'STRING',
    'column2': 'NUMBER',
  ]
  attributePath = [
    'column1': 'applicationName',
    'column2': 'application_count',
  ]
  dashboardName = 'Application Deployments'
  iconUrl = 'icon-application.svg'
  linkParameter = [
    'deploymentOutcome': 'error',
    'applicationProjectName': '${applicationProjectName}',
    'applicationName': '${applicationName}',
  ]
  linkTarget = 'Deployments'
  orderIndex = '5'
  projectName = 'Electric Cloud'
  reportName = 'TopAppsByFailedDeployments'
  reportProjectName = 'Electric Cloud'
  visualization = 'TABLE'
}
