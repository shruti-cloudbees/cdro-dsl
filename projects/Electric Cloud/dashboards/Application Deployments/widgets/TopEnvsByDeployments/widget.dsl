
widget 'TopEnvsByDeployments', {
  description = 'The top 5 environments with the most deployments'
  attributeDataType = [
    'yAxis': 'STRING',
    'xAxis': 'NUMBER',
    'stacks': 'STRING',
  ]
  attributePath = [
    'yAxisLabel': 'environmentName',
    'yAxis': 'environment',
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
  iconUrl = 'icon-environments-static.svg'
  linkParameter = [
    'deploymentOutcome': '${deployment_outcome}',
    'environmentName': '${environmentName}',
    'environmentProjectName': '${environmentProjectName}',
  ]
  linkTarget = 'Deployments'
  orderIndex = '7'
  projectName = 'Electric Cloud'
  reportName = 'TopEnvsByDeployments'
  reportProjectName = 'Electric Cloud'
  visualization = 'STACKED_HORIZONTAL_BAR_CHART'
}
