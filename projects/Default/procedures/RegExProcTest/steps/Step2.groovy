import com.electriccloud.client.groovy.ElectricFlow
import com.electriccloud.client.groovy.models.*
  
ElectricFlow ef = new ElectricFlow()
println "Hello"

def date = new java.text.SimpleDateFormat('yyyy-MM-dd').format(new Date())

def runtimeName = new ActualParameter(
  "actualParameterName": "runtimeName",
  "value": "$[/myJob/runtimeName]"
)

if ("$[/myJob/checkGoNoGO]" == "True") {
	ef.setProperty(propertyName: "/projects/Default/flowRuntimes/$[/myJob/runtimeName]/checkGoNoGO", value:"True")
    if ("$[/myJob/scheduleName]") {
    	ef.deleteSchedule(projectName:"Default", scheduleName:"checkGoNoGO_$[/myJob/runtimeName]")
    }
}

else {
    if (!"$[/myJob/scheduleName]") {
    
    ef.createSchedule(projectName:"Default", scheduleName:"checkGoNoGO_$[/myJob/runtimeName]", actualParameters: [runtimeName], beginDate: date, endDate: "", interval:"2", intervalUnits: "minutes", procedureName: "FedExProcTest" )
    
    }
  		ef.setProperty(propertyName: "/projects/Default/flowRuntimes/$[/myJob/runtimeName]/checkGoNoGO", value: "False")

  	}


