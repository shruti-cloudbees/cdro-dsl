
dashboard 'Release Command Center', {
  description = 'Release Command Center'
  projectName = 'Electric Cloud'
  type = 'COMMAND_CENTER'
  column = [
    'Planning',
    'Dev',
    'Build',
    'Test',
    'Deploy',
    'Feature Flags',
    'Operate',
  ]

  formalParameter 'dashboardShowAsOfDate', defaultValue: '$[/javascript var date = new Date(); var d = \'\' + date.getDate(); var m = \'\' + (date.getMonth() + 1); \'\' + date.getFullYear() + \'-\' + (m<=9 ? \'0\' + m : m) + \'-\' + (d <= 9 ? \'0\' + d : d);]', {
    description = 'Effective date used to report the release metrics. Defaults to today\'s date.'
    expansionDeferred = '0'
    label = 'Show as of'
    required = '1'
    type = 'date'
  }

  formalParameter 'dashboardTimeSlice', defaultValue: '10', {
    description = 'Number of days relative to the \'Show as of\' date used to calculate the relative date range for reporting the release metrics. Defaults to 10 days.'
    expansionDeferred = '0'
    label = 'Time Slice (days)'
    required = '1'
    type = 'integer'
  }
}
