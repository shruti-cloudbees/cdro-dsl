
widget 'DailyJobs', {
  description = 'Breakdown of jobs started daily by outcome'
  attributeDataType = [
    'yAxis': 'NUMBER',
    'xAxis': 'DATE',
    'stacks': 'STRING',
  ]
  attributePath = [
    'yAxis': 'combinedStatus_count',
    'xAxis': 'jobStartDate_label',
    'stacks': 'combinedStatus',
  ]
  color = [
    'Warning': '#DA833E',
    'Skipped': '#567b99',
    'Error': '#eb1c24',
    'Aborted': '#808080',
    'Success': '#70b723',
  ]
  dashboardName = 'Job Metrics'
  orderIndex = '2'
  projectName = 'Electric Cloud'
  reportName = 'DailyJobs'
  reportProjectName = 'Electric Cloud'
  title = 'Daily Jobs'
  visualization = 'STACKED_VERTICAL_BAR_CHART'
}
