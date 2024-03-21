
widget 'JobsByOutcome', {
  description = 'Breakdown of jobs by outcome'
  attributeDataType = [
    'total': 'NUMBER',
    'yAxis': 'NUMBER',
    'xAxis': 'STRING',
  ]
  attributePath = [
    'total': 'total',
    'yAxis': 'combinedStatus_count',
    'xAxis': 'combinedStatus',
  ]
  color = [
    'Warning': '#DA833E',
    'Skipped': '#567b99',
    'Error': '#eb1c24',
    'Aborted': '#808080',
    'Success': '#70b723',
  ]
  dashboardName = 'Job Metrics'
  orderIndex = '1'
  projectName = 'Electric Cloud'
  reportName = 'JobsByOutcome'
  reportProjectName = 'Electric Cloud'
  title = 'Number of Jobs'
  visualization = 'DONUT_CHART'
}
