
schedule 'checkGoNoGO_FedExSchedulerTest_16_20240206185222', {
  actualParameter = [
    'runtimeName': 'FedExSchedulerTest_16_20240206185222',
  ]
  beginDate = '2024-02-06'
  endDate = ''
  interval = '2'
  intervalUnits = 'minutes'
  misfirePolicy = 'ignore'
  priority = 'normal'
  procedureName = 'RegExProcTest'
  projectName = 'Default'
  scheduleDisabled = '0'
  timeZone = 'GMT'

  acl {
    inheriting = '1'
  }
}
