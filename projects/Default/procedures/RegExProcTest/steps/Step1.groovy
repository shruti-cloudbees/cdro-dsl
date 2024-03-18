import com.electriccloud.client.groovy.ElectricFlow
import com.electriccloud.client.groovy.models.*
  
ElectricFlow ef = new ElectricFlow()
println "Hello"

ef.setProperty(propertyName: "/myJob/checkGoNoGO", value: "False")

