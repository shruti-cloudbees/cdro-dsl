
widget 'TotalDeployments', {
  description = 'Breakdown of total deployments by outcome'
  attributeDataType = [
    'total': 'NUMBER',
    'yAxis': 'NUMBER',
    'xAxis': 'STRING',
  ]
  attributePath = [
    'total': 'total',
    'yAxis': 'deployment_count',
    'xAxis': 'deployment',
  ]
  color = [
    'rollback': '#567b99',
    'aborted': '#808080',
    'success': '#70b723',
    'warning': '#DA833E',
    'error': '#eb1c24',
  ]
  dashboardName = 'Application Deployments'
  linkParameter = [
    'deploymentOutcome': '${deployment}',
  ]
  linkTarget = 'Deployments'
  orderIndex = '1'
  projectName = 'Electric Cloud'
  reportName = 'TotalDeployments'
  reportProjectName = 'Electric Cloud'
  visualization = 'DONUT_CHART'
}
