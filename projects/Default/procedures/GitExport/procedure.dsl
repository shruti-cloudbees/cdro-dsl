
procedure 'GitExport', {
  projectName = 'Default'
  timeLimit = '0'
  timeLimitUnits = 'minutes'

  formalParameter 'Git Configuration', {
    expansionDeferred = '0'
    orderIndex = '1'
    required = '0'
    type = 'header'
  }

  formalParameter 'config', {
    expansionDeferred = '0'
    label = 'Configuration'
    orderIndex = '2'
    propertyReference = 'EC-Git'
    required = '1'
    type = 'pluginConfiguration'
  }

  formalParameter 'Pull Options', {
    expansionDeferred = '0'
    orderIndex = '3'
    required = '0'
    type = 'header'
  }

  formalParameter 'repoUrl', {
    description = 'A repository URL, e.g. <code>git://server/repo.git</code>'
    expansionDeferred = '0'
    label = 'Git Repository'
    orderIndex = '4'
    required = '1'
    type = 'entry'
  }

  formalParameter 'branch', defaultValue: 'master', {
    description = 'The name of the Git branch to use. ie: <code>experimental</code>. The default will be <code>master</code>.'
    expansionDeferred = '0'
    label = 'Branch'
    orderIndex = '5'
    required = '1'
    type = 'entry'
  }

  formalParameter 'submodules', defaultValue: 'no', {
    description = '''This option controls if new commits of populated submodules should be fetched,
and if the working trees of active submodules should be updated, too.
It can be used as a boolean option to completely disable recursion when set to *No* or
to unconditionally recurse into all populated submodules when set to *Yes*,
which is the default when this option is used without any value.
Use *On demand* to only recurse into a populated submodule when the superproject retrieves
a commit that updates the submodule\'s reference to a commit that isn\'t already in the local submodule clone.
For JGit it is no difference between *Yes* and *On demand*.'''
    expansionDeferred = '0'
    label = 'Submodules'
    options = [
      'No': 'no',
      'Yes': 'yes',
      'On demand': 'on-demand',
    ]
    orderIndex = '6'
    required = '1'
    type = 'select'
  }

  formalParameter 'Commit/Push Options', {
    expansionDeferred = '0'
    orderIndex = '7'
    required = '0'
    type = 'header'
  }

  formalParameter 'files', defaultValue: '.', {
    description = 'Files pattern (GLOB) to use to add files to the commit. Each pattern per line, e.g. README\\*.'
    expansionDeferred = '0'
    label = 'Files'
    orderIndex = '8'
    required = '1'
    type = 'textarea'
  }

  formalParameter 'authorName', {
    description = 'Commit author name'
    expansionDeferred = '0'
    label = 'Author Name'
    orderIndex = '9'
    required = '0'
    type = 'entry'
  }

  formalParameter 'authorEmail', {
    description = 'Commit author\'s email, e.g. sample@gmail.com.'
    expansionDeferred = '0'
    label = 'Author Email'
    orderIndex = '10'
    required = '0'
    type = 'entry'
  }

  formalParameter 'committerName', {
    description = 'Name of the committer. This can be the name of the project or a schedule, e.g. $[/myProject/name].'
    expansionDeferred = '0'
    label = 'Committer Name'
    orderIndex = '11'
    required = '0'
    type = 'entry'
  }

  formalParameter 'committerEmail', {
    description = 'Email of the committer, e.g. build-user@company.com.'
    expansionDeferred = '0'
    label = 'Committer Email'
    orderIndex = '12'
    required = '0'
    type = 'entry'
  }

  formalParameter 'removeMissing', defaultValue: 'false', {
    description = 'If checked, the files that are missing from the repository will be removed from SCM.'
    checkedValue = 'true'
    expansionDeferred = '0'
    label = 'Remove Missing'
    orderIndex = '13'
    required = '0'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'push', defaultValue: 'true', {
    description = 'If checked, the commit will be pushed to the remote repository.'
    checkedValue = 'true'
    expansionDeferred = '0'
    label = 'Push'
    orderIndex = '14'
    required = '0'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'remote', defaultValue: 'origin', {
    description = 'If the push is checked, provide the remote name here. Defaults to the origin.'
    expansionDeferred = '0'
    label = 'Remote'
    orderIndex = '15'
    renderCondition = '${push}==true'
    required = '0'
    type = 'entry'
  }

  formalParameter 'failOnEmptyCommit', defaultValue: 'false', {
    description = 'If checked, the procedure will fail if there is nothing to commit.'
    checkedValue = 'true'
    expansionDeferred = '0'
    label = 'Fail On Empty Commit'
    orderIndex = '16'
    required = '0'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'DSL Export Options', {
    expansionDeferred = '0'
    orderIndex = '17'
    required = '0'
    type = 'header'
  }

  formalParameter 'pool', defaultValue: 'local', {
    description = 'The resource where the DSL files will be written.'
    expansionDeferred = '0'
    label = 'Resource Name'
    orderIndex = '18'
    required = '1'
    type = 'entry'
  }

  formalParameter 'directory', {
    description = 'The directory on the resource where the DSL files will be written.'
    expansionDeferred = '0'
    label = 'Directory Path'
    orderIndex = '19'
    required = '1'
    type = 'entry'
  }

  formalParameter 'objectType', defaultValue: 'project', {
    description = 'The top-level object type for which DSL will be exported.'
    expansionDeferred = '0'
    label = 'Object Type'
    options = [
      'Group': 'group',
      'Resource': 'resource',
      'Resource Pool': 'resourcePool',
      'Service Account': 'serviceAccount',
      'Tag': 'tag',
      'User': 'user',
      'Persona': 'persona',
      'Persona Category': 'personaCategory',
      'Persona Page': 'personaPage',
      'Project': 'project',
      'Report Object Type': 'reportObjectType',
    ]
    orderIndex = '20'
    required = '1'
    type = 'select'
  }

  formalParameter 'tagName', {
    description = 'The tag for which DSL will be exported.'
    expansionDeferred = '0'
    label = 'Tag'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

    def options = new FormalParameterOptionsResult()
    def result = getTags()
    result.each{

      options.add(it.name,it.name)
    }

    return options'''
    orderIndex = '21'
    renderCondition = ' ${objectType} == \'tag\''
    required = '0'
    type = 'select'
    validationDsl = '''if (args.parameters[\'objectType\'] == \'tag\' && args.parameters[\'tagName\'] == \'\') {
      return "\'Tag\' parameter is required for tag object type"

    } else {
      // an empty or null response is construed as a validation success
      return null
    }'''
  }

  formalParameter 'userName', {
    expansionDeferred = '0'
    label = 'User'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

    def options = new FormalParameterOptionsResult()
    def result = getUsers()
    result.each{

      options.add(it.name,it.name)
    }

    return options'''
    orderIndex = '22'
    renderCondition = ' ${objectType} == \'user\''
    required = '0'
    type = 'select'
    validationDsl = '''if (args.parameters[\'objectType\'] == \'user\' && args.parameters[\'userName\'] == \'\') {
      return "\'User\' parameter is required for user object type"

    } else {
      // an empty or null response is construed as a validation success
      return null
    }'''
  }

  formalParameter 'groupName', {
    description = 'The group for which DSL will be exported.'
    expansionDeferred = '0'
    label = 'Group'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

    def options = new FormalParameterOptionsResult()
    def result = getGroups()
    result.each{

      options.add(it.name,it.name)
    }

    return options'''
    orderIndex = '23'
    renderCondition = '${objectType} == \'group\''
    required = '0'
    type = 'select'
    validationDsl = '''if (args.parameters[\'objectType\'] == \'group\' && args.parameters[\'groupName\'] == \'\') {
      return "\'Group\' parameter value is required for " + args.parameters[\'objectType\'] + " object type"

    } else {
      // an empty or null response is construed as a validation success
      return null
    }'''
  }

  formalParameter 'projName', {
    description = 'The project for which DSL will be exported.'
    expansionDeferred = '0'
    label = 'Project'
    orderIndex = '24'
    renderCondition = ' ${objectType} == \'project\''
    required = '0'
    type = 'project'
    validationDsl = '''if (args.parameters[\'objectType\'] == \'project\' && args.parameters[\'projName\'] == \'\') {
      // return an appropriate error message in case the validation failed
      return "\'project\' parameter is required for project object type"

    } else {
      // an empty or null response is construed as a validation success
      return null
    }'''
  }

  formalParameter 'personaCategoryName', {
    description = 'The persona category for which DSL will be exported.'
    expansionDeferred = '0'
    label = 'Persona Category'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

    def options = new FormalParameterOptionsResult()
    def result = getPersonaCategories()
    result.each{

      options.add(it.name,it.name)
    }

    return options'''
    orderIndex = '25'
    renderCondition = '${objectType} == \'personaCategory\''
    required = '0'
    type = 'select'
    validationDsl = '''if (args.parameters[\'objectType\'] == \'personaCategory\' && args.parameters[\'personaCategoryName\'] == \'\') {
      return "\'Persona category\' parameter is required for personaCategory object type"

    } else {
      // an empty or null response is construed as a validation success
      return null
    }'''
  }

  formalParameter 'personaPageName', {
    description = 'The persona page for which DSL will be exported.'
    expansionDeferred = '0'
    label = 'Persona Page'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

    def options = new FormalParameterOptionsResult()
    def result = getPersonaPages()
    result.each{

      options.add(it.name,it.name)
    }

    return options'''
    orderIndex = '26'
    renderCondition = '${objectType} == \'personaPage\''
    required = '0'
    type = 'select'
    validationDsl = '''if (args.parameters[\'objectType\'] == \'personaPage\' && args.parameters[\'personaPageName\'] == \'\') {
      return "\'Persona page\' parameter is required for personaPage object type"

    } else {
      // an empty or null response is construed as a validation success
      return null
    }'''
  }

  formalParameter 'personaName', {
    description = 'The persona for which DSL will be exported.'
    expansionDeferred = '0'
    label = 'Persona'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

    def options = new FormalParameterOptionsResult()
    def result = getPersonas()
    result.each{

      options.add(it.name,it.name)
    }

    return options'''
    orderIndex = '27'
    renderCondition = ' ${objectType} == \'persona\''
    required = '0'
    type = 'select'
    validationDsl = '''if (args.parameters[\'objectType\'] == \'persona\' && args.parameters[\'personaName\'] == \'\') {
      return "\'Persona\' parameter is required for persona object type"

    } else {
      // an empty or null response is construed as a validation success
      return null
    }'''
  }

  formalParameter 'resourcePoolName', {
    description = 'The resource pool for which DSL will be exported.'
    expansionDeferred = '0'
    label = 'Resource Pool'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

    def options = new FormalParameterOptionsResult()
    def result = getResourcePools()
    result.each{

      options.add(it.name,it.name)
    }

    return options'''
    orderIndex = '28'
    renderCondition = ' ${objectType} == \'resourcePool\''
    required = '0'
    type = 'select'
    validationDsl = '''if (args.parameters[\'objectType\'] == \'resourcePool\' && args.parameters[\'resourcePoolName\'] == \'\') {
      return "\'Resource pool\' parameter is required for resourcePool object type"

    } else {
      // an empty or null response is construed as a validation success
      return null
    }'''
  }

  formalParameter 'resName', {
    description = 'The resource for which DSL will be exported.'
    expansionDeferred = '0'
    label = 'Resource'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

    def options = new FormalParameterOptionsResult()
    def result = getResources()
    result.each{

      options.add(it.name,it.name)
    }

    return options'''
    orderIndex = '29'
    renderCondition = ' ${objectType} == \'resource\''
    required = '0'
    type = 'select'
    validationDsl = '''if (args.parameters[\'objectType\'] == \'resource\' && args.parameters[\'resName\'] == \'\') {
      return "\'Resource\' parameter is required for resource object type"

    } else {
      // an empty or null response is construed as a validation success
      return null
    }'''
  }

  formalParameter 'serviceAccountName', {
    description = 'The service account for which DSL will be exported.'
    expansionDeferred = '0'
    label = 'Service Account'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

    def options = new FormalParameterOptionsResult()
    def result = getServiceAccounts()
    result.each{

      options.add(it.name,it.name)
    }

    return options'''
    orderIndex = '30'
    renderCondition = ' ${objectType} == \'serviceAccount\''
    required = '0'
    type = 'select'
    validationDsl = '''if (args.parameters[\'objectType\'] == \'serviceAccount\' && args.parameters[\'serviceAccountName\'] == \'\') {
      return "\'Service Account\' parameter is required for serviceAccount object type"

    } else {
      // an empty or null response is construed as a validation success
      return null
    }'''
  }

  formalParameter 'suppressNulls', defaultValue: 'true', {
    description = 'Select to exclude fields with null values in the exported DSL.'
    checkedValue = 'true'
    expansionDeferred = '0'
    label = 'Suppress Nulls'
    orderIndex = '31'
    required = '0'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'suppressDefaults', defaultValue: 'false', {
    description = 'Select to exclude fields with default values in the exported DSL.'
    checkedValue = 'true'
    expansionDeferred = '0'
    label = 'Suppress Defaults'
    orderIndex = '32'
    required = '0'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'suppressParent', defaultValue: 'false', {
    description = 'Select to exclude the object\'s parent references in the exported DSL.'
    checkedValue = 'true'
    expansionDeferred = '0'
    label = 'Suppress Parent'
    orderIndex = '33'
    required = '0'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'includeAcls', defaultValue: 'false', {
    description = 'Select to include ACLs in the exported DSL.'
    checkedValue = 'true'
    expansionDeferred = '0'
    label = 'Include ACLs'
    orderIndex = '34'
    required = '0'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'Options for Child Objects', {
    expansionDeferred = '0'
    orderIndex = '35'
    required = '0'
    type = 'header'
  }

  formalParameter 'includeAclsInDifferentFile', defaultValue: 'false', {
    description = 'Export ACLs to Separate DSL files'
    checkedValue = 'true'
    expansionDeferred = '0'
    label = 'Export ACLs to Separate DSL files'
    orderIndex = '36'
    renderCondition = '${includeAcls} == \'true\''
    required = '0'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'includeAllChildren', defaultValue: 'true', {
    description = 'Select to include all child objects.'
    checkedValue = 'true'
    expansionDeferred = '0'
    label = 'Include All Child Objects'
    orderIndex = '37'
    required = '0'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'includeChildren', {
    description = 'Comma-separated list of child object types to include, for example, <code>applications,pipelines</code>.'
    expansionDeferred = '0'
    label = 'Child Object Types to Include'
    orderIndex = '38'
    renderCondition = '${includeAllChildren} == \'false\''
    required = '0'
    type = 'textarea'
  }

  formalParameter 'includeChildrenInSameFile', defaultValue: 'false', {
    description = 'Select to include all child objects in a single DSL file.'
    checkedValue = 'true'
    expansionDeferred = '0'
    label = 'Include all Child Objects in a Single DSL File'
    orderIndex = '39'
    required = '0'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'childrenInDifferentFile', {
    description = '''Comma-separated list of patterns for child object types to export to separate DSL files, for example, <code>pipelines,procedures.*,applications.applicationTiers.components</code>.
'''
    expansionDeferred = '0'
    label = 'Child Object Types to Export to Separate DSL files'
    orderIndex = '40'
    renderCondition = '${includeChildrenInSameFile} == \'false\''
    required = '0'
    type = 'textarea'
  }

  formalParameter 'reportObjectTypeName', {
    description = 'The report object type for which DSL will be exported.'
    expansionDeferred = '0'
    label = 'Report Object Type'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

    def options = new FormalParameterOptionsResult()
    def result = getReportObjectTypes()
    result.each{

      options.add(it.name,it.name)
    }

    return options'''
    orderIndex = '41'
    renderCondition = ' ${objectType} == \'reportObjectType\''
    required = '0'
    type = 'select'
    validationDsl = '''if (args.parameters[\'objectType\'] == \'reportObjectType\' && args.parameters[\'reportObjectTypeName\'] == \'\') {
      return "\'Report object type\' parameter is required for reportObjectType object type"

    } else {
      // an empty or null response is construed as a validation success
      return null
    }'''
  }

  acl {
    inheriting = '1'
  }
}
