import java.io.File

def propertyContent = new File(propsDir, 'count.txt').text
count = """$propertyContent"""