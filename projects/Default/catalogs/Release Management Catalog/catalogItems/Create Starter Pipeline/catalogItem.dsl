
catalogItem 'Create Starter Pipeline', {
  description = '''<xml>
  <title>
    
  </title>

  <htmlData>
    <![CDATA[
      Create an example template pipeline in a project of your choosing.<br>
    ]]>
  </htmlData>
</xml>'''
  allowScheduling = '0'
  buttonLabel = 'Create'
  catalogName = 'Release Management Catalog'
  dslString = '''def myProject = args.existingProject

def pipelineName = args.pipelineName

def group = args.group

clone(path: \'/projects/Default/pipelines/multi-stage\', cloneName: "/projects/${myProject}/pipelines/${pipelineName}")

createAclEntry(
  principalType: \'group\',
  principalName: group,
  objectType: \'gate\',
  projectName: myProject,
  pipelineName: pipelineName,
  stageName: \'Production\',
  gateType: \'PRE\',
  readPrivilege: \'inherit\',
  modifyPrivilege: \'deny\',
  executePrivilege: \'inherit\',
  changePermissionsPrivilege: \'inherit\'
)

createAclEntry(
  principalType: \'group\',
  principalName: group,
  objectType: \'pipeline\',
  projectName: myProject,
  pipelineName: pipelineName,
  readPrivilege: \'inherit\',
  modifyPrivilege: \'allow\',
  executePrivilege: \'inherit\',
  changePermissionsPrivilege: \'inherit\'
)

createAclEntry(
  principalType: \'group\',
  principalName: group,
  objectType: \'gate\',
  projectName: myProject,
  pipelineName: pipelineName,
  stageName: \'QA\',
  gateType: \'POST\',
  readPrivilege: \'inherit\',
  modifyPrivilege: \'deny\',
  executePrivilege: \'inherit\',
  changePermissionsPrivilege: \'inherit\'
)'''
  iconUrl = 'logo-cloudbees.svg'
  projectName = 'Default'
  templateObjectType = 'none'
  useFormalParameter = '1'

  formalParameter 'existingProject', {
    description = 'Project to place the pipeline in.'
    expansionDeferred = '0'
    label = 'Project'
    orderIndex = '1'
    required = '1'
    type = 'project'
  }

  formalParameter 'group', {
    description = 'Group who is developing the pipeline.'
    expansionDeferred = '0'
    label = 'Group'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

def options = new FormalParameterOptionsResult()

def groups = getGroups()

if (groups) {
 groups.each { group ->
   options.add(/*value*/ group.groupName, /*displayString*/ group.groupName)
 }

}
return options'''
    orderIndex = '2'
    required = '1'
    type = 'select'
  }

  formalParameter 'pipelineName', defaultValue: '', {
    expansionDeferred = '0'
    label = 'Pipeline Name'
    orderIndex = '3'
    required = '1'
    type = 'entry'
  }

  acl {
    inheriting = '1'
  }
}
