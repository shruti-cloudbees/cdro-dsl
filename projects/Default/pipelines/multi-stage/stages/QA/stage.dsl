
stage 'QA', {
  completionType = 'auto'
  pipelineName = 'multi-stage'
  projectName = 'Default'
  waitForPlannedStartDate = '0'

  acl {
    inheriting = '1'
  }
}
