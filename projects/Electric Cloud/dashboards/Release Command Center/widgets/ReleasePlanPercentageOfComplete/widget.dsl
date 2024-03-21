
widget 'ReleasePlanPercentageOfComplete', {
  description = 'Percentage of release stories that have been completed. This information is collected from Application Lifecycle Management products such as JIRA Software.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
    'timeSlice': '$[dashboardTimeSlice]',
  ]
  attributeDataType = [
    'trend': 'NUMBER',
    'metricValue': 'PERCENT',
  ]
  attributePath = [
    'trend': 'output_metric_trend',
    'metricValue': 'output_metric_current_percent_complete',
  ]
  dashboardName = 'Release Command Center'
  linkParameter = [
    'externalUrl': '${drilldown_base_url}%20${drilldown_release_uri}%20AND%20status%20IN%20(Closed)',
  ]
  linkTarget = 'External'
  orderIndex = '1'
  projectName = 'Electric Cloud'
  reportName = 'ReleasePlanPercentageOfComplete'
  reportProjectName = 'Electric Cloud'
  section = 'SUMMARY'
  title = 'Release Plan'
  visualization = 'METRIC'
  visualizationProperty = [
    'showTrendValue': 'true',
  ]
}
