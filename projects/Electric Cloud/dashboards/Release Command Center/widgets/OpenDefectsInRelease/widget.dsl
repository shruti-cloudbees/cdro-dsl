
widget 'OpenDefectsInRelease', {
  description = 'The number of open defects in the release.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
    'timeSlice': '$[dashboardTimeSlice]',
  ]
  attributeDataType = [
    'trend': 'PERCENT',
    'metricValue': 'NUMBER',
  ]
  attributePath = [
    'trend': 'output_metric_trend',
    'metricValue': 'output_metric_current_unresolved_defects',
  ]
  dashboardName = 'Release Command Center'
  linkParameter = [
    'externalUrl': '${drilldown_base_url}%20${drilldown_release_uri}%20AND%20resolution%20IS%20EMPTY',
  ]
  linkTarget = 'External'
  orderIndex = '2'
  projectName = 'Electric Cloud'
  reportName = 'OpenDefectsInRelease'
  reportProjectName = 'Electric Cloud'
  section = 'SUMMARY'
  title = 'Open Defects'
  visualization = 'METRIC'
  visualizationProperty = [
    'showTrendValue': 'true',
  ]
}
