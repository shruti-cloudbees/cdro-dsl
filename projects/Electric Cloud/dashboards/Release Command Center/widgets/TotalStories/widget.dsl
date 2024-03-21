
widget 'TotalStories', {
  description = 'The total number of release stories.'
  actualParameter = [
    'showAsOfDate': '$[dashboardShowAsOfDate]',
  ]
  attributeDataType = [
    'metricValue': 'NUMBER',
  ]
  attributePath = [
    'metricValue': 'total_count',
  ]
  column = 'Planning'
  dashboardName = 'Release Command Center'
  linkParameter = [
    'externalUrl': '${drilldown_base_url}%20${drilldown_release_uri}',
  ]
  linkTarget = 'External'
  orderIndex = '2'
  projectName = 'Electric Cloud'
  reportName = 'TotalStories'
  reportProjectName = 'Electric Cloud'
  section = 'PHASE_DETAIL'
  title = 'Stories'
  visualization = 'METRIC'
}
