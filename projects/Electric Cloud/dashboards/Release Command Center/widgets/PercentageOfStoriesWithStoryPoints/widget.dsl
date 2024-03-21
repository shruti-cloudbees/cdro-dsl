
widget 'PercentageOfStoriesWithStoryPoints', {
  description = 'Percentage of release stories that have story points assigned. This information is collected from Application Lifecycle Management products such as JIRA Software.'
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
    'metricValue': 'output_metric_current_percent_stories_with_points',
  ]
  colorRanges = '[{"color":"#a7d76e","greaterThanOrEquals":90},{"color":"#c3e8f7","greaterThanOrEquals":75,"lessThan":90},{"color":"#ffde8e","greaterThanOrEquals":50,"lessThan":75},{"color":"#ed1c24","lessThan":50}]'
  column = 'Planning'
  dashboardName = 'Release Command Center'
  linkParameter = [
    'externalUrl': '${drilldown_base_url}%20${drilldown_release_uri}%20AND%20"Story%20Points"%20IS%20NOT%20EMPTY',
  ]
  linkTarget = 'External'
  orderIndex = '1'
  projectName = 'Electric Cloud'
  reportName = 'PercentageOfStoriesWithStoryPoints'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Planning Complete'
  visualization = 'METRIC'
}
