
widget 'SuccessfulDeployments', {
  description = 'Successful deployments metrics'
  attributePath = [
    'duration': 'duration',
    'total': 'total',
  ]
  dashboardName = 'Application Deployments'
  orderIndex = '2'
  projectName = 'Electric Cloud'
  reportName = 'SuccessfulDeployments'
  reportProjectName = 'Electric Cloud'
  visualization = 'CUSTOM_CHART'
}
