
widget 'TopLongestReleases', {
  description = 'The top 10 longest running releases'
  attributeDataType = [
    'column1': 'STRING',
    'column2': 'DURATION',
  ]
  attributePath = [
    'column1': 'releaseName',
    'column2': 'duration',
  ]
  dashboardName = 'Releases'
  iconUrl = 'icon-release.svg'
  linkParameter = [
    'releaseName': '${releaseName}',
    'projectName': '${releaseProjectName}',
  ]
  linkTarget = 'Releases'
  orderIndex = '6'
  projectName = 'Electric Cloud'
  reportName = 'TopLongestReleases'
  reportProjectName = 'Electric Cloud'
  visualization = 'TABLE'
}
