import com.electriccloud.client.groovy.ElectricFlow
import com.electriccloud.client.groovy.models.*

ElectricFlow ef = new ElectricFlow()

String objName
String groupName = "$[/myJob/groupName]".strip()
String personaName = "$[/myJob/personaName]".strip()
String personaCategoryName = "$[/myJob/personaCategoryName]".strip()
String personaPageName = "$[/myJob/personaPageName]".strip()
String projName = "$[/myJob/projName]".strip()
String reportObjectTypeName = "$[/myJob/reportObjectTypeName]".strip()
String resName = "$[/myJob/resName]".strip()
String resourcePoolName = "$[/myJob/resourcePoolName]".strip()
String tagName = "$[/myJob/tagName]".strip()
String userName = "$[/myJob/userName]".strip()
String serviceAccountName = "$[/myJob/serviceAccountName]".strip()

String suppressNulls = "$[/myJob/suppressNulls]"
String suppressDefaults = "$[/myJob/suppressDefaults]"
String suppressParent = "$[/myJob/suppressParent]"
String includeAllChildren = "$[/myJob/includeAllChildren]"
String includeChildrenInSameFile = "$[/myJob/includeChildrenInSameFile]"
String includeAcls = "$[/myJob/includeAcls]"
String includeAclsInDifferentFile = "$[/myJob/includeAclsInDifferentFile]"

suppressNulls == 'true' ? ef.setProperty(propertyName: '/myJob/suppressNulls', value: '1') : ef.setProperty(propertyName: '/myJob/suppressNulls', value: '0')
suppressDefaults == 'true' ? ef.setProperty(propertyName: '/myJob/suppressDefaults', value: '1') : ef.setProperty(propertyName: '/myJob/suppressDefaults', value: '0')
suppressParent == 'true' ? ef.setProperty(propertyName: '/myJob/suppressParent', value: '1') : ef.setProperty(propertyName: '/myJob/suppressParent', value: '0')
includeAllChildren == 'true' ? ef.setProperty(propertyName: '/myJob/includeAllChildren', value: '1') : ef.setProperty(propertyName: '/myJob/includeAllChildren', value: '0')
includeChildrenInSameFile == 'true' ? ef.setProperty(propertyName: '/myJob/includeChildrenInSameFile', value: '1') : ef.setProperty(propertyName: '/myJob/includeChildrenInSameFile', value: '0')
includeAcls == 'true' ? ef.setProperty(propertyName: '/myJob/includeAcls', value: '1') : ef.setProperty(propertyName: '/myJob/includeAcls', value: '0')
includeAclsInDifferentFile == 'true' ? ef.setProperty(propertyName: '/myJob/includeAclsInDifferentFile', value: '1') : ef.setProperty(propertyName: '/myJob/includeAclsInDifferentFile', value: '0')

if (groupName != '') {
  objName = groupName
} else if (personaName != '') {
  objName = personaName
} else if (personaCategoryName != '') {
  objName = personaCategoryName
} else if (personaPageName != '') {
  objName = personaPageName
} else if (projName != '') {
  objName = projName
} else if (reportObjectTypeName != '') {
  objName = reportObjectTypeName
} else if (resName != '') {
  objName = resName
} else if (resourcePoolName != '') {
  objName = resourcePoolName
} else if (tagName != '') {
  objName = tagName
} else if (userName != '') {
  objName = userName
} else if (serviceAccountName != '') {
  objName = serviceAccountName
}

ef.setProperty(propertyName: "/myJob/objectName", value: objName)
