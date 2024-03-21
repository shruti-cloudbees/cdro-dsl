
widget 'EstimatedStories', {
  description = 'The total number of release stories with story points.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
  ]
  attributeDataType = [
    'metricValue': 'NUMBER',
  ]
  attributePath = [
    'metricValue': 'output_metric_current_stories_with_points',
  ]
  column = 'Planning'
  dashboardName = 'Release Command Center'
  linkParameter = [
    'externalUrl': '${drilldown_base_url}%20${drilldown_release_uri}%20AND%20"Story%20Points"%20IS%20NOT%20EMPTY',
  ]
  linkTarget = 'External'
  orderIndex = '3'
  projectName = 'Electric Cloud'
  reportName = 'EstimatedStories'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Stories Estimated'
  visualization = 'METRIC'
}
