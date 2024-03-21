
widget 'AverageTimeToResolveIncident', {
  description = 'Average time taken to resolve incidents logged against the release.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
  ]
  attributeDataType = [
    'metricValue': 'DURATION',
  ]
  attributePath = [
    'metricValue': 'output_metric_average_incident_resolution_duration',
  ]
  column = 'Operate'
  dashboardName = 'Release Command Center'
  linkParameter = [
    'externalUrl': '${drilldown_base_url}${drilldown_release_uri}^incident_state=6^ORincident_state=7',
  ]
  linkTarget = 'External'
  orderIndex = '3'
  projectName = 'Electric Cloud'
  reportName = 'AverageTimeToResolveIncident'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Average Time to Resolve'
  visualization = 'METRIC'
}
