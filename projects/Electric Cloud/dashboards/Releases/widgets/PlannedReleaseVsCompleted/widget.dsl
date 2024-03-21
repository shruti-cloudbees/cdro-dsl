
widget 'PlannedReleaseVsCompleted', {
  description = 'Number of planned vs. actual releases closed by month'
  attributeDataType = [
    'yAxis': 'NUMBER',
    'xAxis': 'DATE',
    'groups': 'STRING',
  ]
  attributePath = [
    'yAxis': 'release_date_count',
    'xAxis': 'release_date_label',
    'groups': 'planned_or_completed',
  ]
  color = [
    'Completed': '#00ADF1',
    'Planned': '#223F9B',
  ]
  dashboardName = 'Releases'
  linkParameter = [
    'actualEndTimeMax': '${actual_end_date_max_label}',
    'actualEndTimeMin': '${actual_end_date_min_label}',
    'plannedEndTimeMax': '${planned_end_date_max_label}',
    'plannedEndTimeMin': '${planned_end_date_min_label}',
  ]
  linkTarget = 'Releases'
  orderIndex = '5'
  projectName = 'Electric Cloud'
  reportName = 'PlannedReleaseVsCompleted'
  reportProjectName = 'Electric Cloud'
  visualization = 'GROUPED_VERTICAL_BAR_CHART'
}
