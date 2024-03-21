
widget 'BuildSuccessRate', {
  description = 'Percentage of successful builds during the time period based on the \'Show as of\' date and the \'Time Slice\' parameter.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
    'timeSlice': '$[dashboardTimeSlice]',
  ]
  attributeDataType = [
    'trend': 'NUMBER',
    'icon': 'STRING',
    'metricValue': 'PERCENT',
  ]
  attributePath = [
    'trend': 'output_metric_trend',
    'icon': 'iconUrl',
    'metricValue': 'output_metric_current_percent',
  ]
  colorRanges = '[{"color":"#a7d76e","greaterThanOrEquals":90},{"color":"#c3e8f7","greaterThanOrEquals":75,"lessThan":90},{"color":"#ffde8e","greaterThanOrEquals":50,"lessThan":75},{"color":"#ed1c24","lessThan":50}]'
  column = 'Build'
  dashboardName = 'Release Command Center'
  linkParameter = [
    'externalUrl': '${drilldown_base_url}',
  ]
  linkTarget = 'External'
  orderIndex = '1'
  projectName = 'Electric Cloud'
  reportName = 'BuildSuccessRate'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Build Success Rate'
  visualization = 'METRIC'
}
