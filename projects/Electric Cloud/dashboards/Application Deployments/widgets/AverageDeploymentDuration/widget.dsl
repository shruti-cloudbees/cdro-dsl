
widget 'AverageDeploymentDuration', {
  description = 'Average deployments duration for successful deployments over time'
  attributeDataType = [
    'yAxis': 'DURATION',
    'xAxis': 'DATE',
  ]
  attributePath = [
    'yAxis': 'avg_duration',
    'xAxis': 'deployment_date_label',
  ]
  dashboardName = 'Application Deployments'
  linkParameter = [
    'deploymentDateMax': '${deployment_date_max_label}',
    'deploymentDateMin': '${deployment_date_min_label}',
  ]
  linkTarget = 'Deployments'
  orderIndex = '4'
  projectName = 'Electric Cloud'
  reportName = 'AverageDeploymentDuration'
  reportProjectName = 'Electric Cloud'
  visualization = 'LINE_CHART'
  visualizationProperty = [
    'defaultColor': '#00ADEE',
  ]
}
