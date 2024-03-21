
widget 'AvgBuildDuration', {
  description = 'Average time taken by builds to complete during the time period based on the \'Show as of\' date and the \'Time Slice\' parameter.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
    'timeSlice': '$[dashboardTimeSlice]',
  ]
  attributeDataType = [
    'metricValue': 'DURATION',
  ]
  attributePath = [
    'metricValue': 'output_metric_avg_build_duration',
  ]
  column = 'Build'
  dashboardName = 'Release Command Center'
  linkParameter = [
    'externalUrl': '${drilldown_base_url}',
  ]
  linkTarget = 'External'
  orderIndex = '3'
  projectName = 'Electric Cloud'
  reportName = 'AvgBuildDuration'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Time to Build'
  visualization = 'METRIC'
}
