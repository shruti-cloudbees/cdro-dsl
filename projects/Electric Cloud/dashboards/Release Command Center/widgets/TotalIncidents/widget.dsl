
widget 'TotalIncidents', {
  description = 'Total incidents logged for a release. This information is collected from incident management products such as ServiceNow.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
  ]
  attributeDataType = [
    'icon': 'STRING',
    'metricValue': 'NUMBER',
  ]
  attributePath = [
    'icon': 'iconUrl',
    'metricValue': 'total_count',
  ]
  column = 'Operate'
  dashboardName = 'Release Command Center'
  linkParameter = [
    'externalUrl': '${drilldown_base_url}${drilldown_release_uri}',
  ]
  linkTarget = 'External'
  orderIndex = '1'
  projectName = 'Electric Cloud'
  reportName = 'TotalIncidents'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Total Incidents'
  visualization = 'METRIC'
}
