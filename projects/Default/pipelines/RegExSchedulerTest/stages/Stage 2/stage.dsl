
stage 'Stage 2', {
  colorCode = '#ff7f0e'
  completionType = 'auto'
  pipelineName = 'RegExSchedulerTest'
  precondition = '$[/javascript myPipelineRuntime.checkGoNoGO =="True"]'
  projectName = 'Default'
  waitForPlannedStartDate = '0'

  acl {
    inheriting = '1'
  }
}
