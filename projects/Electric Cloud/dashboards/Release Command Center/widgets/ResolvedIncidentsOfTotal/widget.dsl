
widget 'ResolvedIncidentsOfTotal', {
  description = 'Total number of resolved incidents for the release.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
  ]
  attributeDataType = [
    'metricValue': 'NUMBER',
  ]
  attributePath = [
    'metricValue': 'output_metric_current_resolved_incidents',
  ]
  column = 'Operate'
  dashboardName = 'Release Command Center'
  linkParameter = [
    'externalUrl': '${drilldown_base_url}${drilldown_release_uri}^incident_state=6^ORincident_state=7',
  ]
  linkTarget = 'External'
  orderIndex = '2'
  projectName = 'Electric Cloud'
  reportName = 'ResolvedIncidentsOfTotal'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Resolved Incidents'
  visualization = 'METRIC'
}
