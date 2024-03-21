
widget 'TotalSuccessfulBuilds', {
  description = 'Number of successful builds during the time period based on the \'Show as of\' date and the \'Time Slice\' parameter.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
    'timeSlice': '$[dashboardTimeSlice]',
  ]
  attributeDataType = [
    'total': 'NUMBER',
    'metricValue': 'NUMBER',
  ]
  attributePath = [
    'total': 'output_metric_build_count',
    'metricValue': 'output_metric_successful_build_count',
  ]
  column = 'Build'
  dashboardName = 'Release Command Center'
  linkParameter = [
    'externalUrl': '${drilldown_base_url}',
  ]
  linkTarget = 'External'
  orderIndex = '2'
  projectName = 'Electric Cloud'
  reportName = 'TotalSuccessfulBuilds'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Successful Builds'
  visualization = 'METRIC'
}
