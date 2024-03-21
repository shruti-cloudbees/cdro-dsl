
widget 'TopLongestTasks', {
  description = 'The top 10 longest running pipeline tasks across releases'
  attributeDataType = [
    'column1': 'STRING',
    'column3': 'DURATION',
    'column2': 'STRING',
  ]
  attributePath = [
    'column1': 'task_or_app',
    'column3': 'duration',
    'column2': 'manual',
  ]
  dashboardName = 'Releases'
  iconUrl = 'icon-task.svg'
  linkParameter = [
    'flowRuntimeName': '${flowRuntimeName}',
    'taskPath': '${taskPath}',
    'stageName': '${stageName}',
    'projectName': '${projectName}',
  ]
  linkTarget = 'Pipeline Runs'
  orderIndex = '7'
  projectName = 'Electric Cloud'
  reportName = 'TopLongestTasks'
  reportProjectName = 'Electric Cloud'
  visualization = 'TABLE'
}
