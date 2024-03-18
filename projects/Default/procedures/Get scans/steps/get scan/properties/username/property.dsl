import java.io.File

def propertyContent = new File(propsDir, 'username.txt').text
username = """$propertyContent"""