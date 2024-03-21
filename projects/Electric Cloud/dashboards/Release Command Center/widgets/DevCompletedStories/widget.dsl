
widget 'DevCompletedStories', {
  description = 'The number of stories that are dev completed out of the total number of stories assigned to the release.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
  ]
  attributeDataType = [
    'total': 'NUMBER',
    'metricValue': 'NUMBER',
  ]
  attributePath = [
    'total': 'output_metric_current_dev_stories',
    'metricValue': 'output_metric_current_dev_complete_stories',
  ]
  column = 'Dev'
  dashboardName = 'Release Command Center'
  linkParameter = [
    'externalUrl': '${drilldown_base_url}%20${drilldown_release_uri}%20AND%20resolution%20IS%20NOT%20EMPTY',
  ]
  linkTarget = 'External'
  orderIndex = '2'
  projectName = 'Electric Cloud'
  reportName = 'DevCompletedStories'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Stories Resolved'
  visualization = 'METRIC'
}
