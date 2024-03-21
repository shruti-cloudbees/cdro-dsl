
widget 'TopAppsByDeployments', {
  description = 'The top 5 applications with the most deployments'
  attributeDataType = [
    'yAxis': 'STRING',
    'xAxis': 'NUMBER',
    'stacks': 'STRING',
  ]
  attributePath = [
    'yAxisLabel': 'applicationName',
    'yAxis': 'application',
    'xAxis': 'deployment_outcome_count',
    'stacks': 'deployment_outcome',
  ]
  color = [
    'rollback': '#567b99',
    'aborted': '#808080',
    'success': '#70b723',
    'warning': '#DA833E',
    'error': '#eb1c24',
  ]
  dashboardName = 'Application Deployments'
  iconUrl = 'icon-application.svg'
  linkParameter = [
    'deploymentOutcome': '${deployment_outcome}',
    'applicationProjectName': '${applicationProjectName}',
    'applicationName': '${applicationName}',
  ]
  linkTarget = 'Deployments'
  orderIndex = '6'
  projectName = 'Electric Cloud'
  reportName = 'TopAppsByDeployments'
  reportProjectName = 'Electric Cloud'
  visualization = 'STACKED_HORIZONTAL_BAR_CHART'
}
