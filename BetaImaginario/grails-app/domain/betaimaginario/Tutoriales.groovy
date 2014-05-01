package betaimaginario

class Tutoriales {
  String name
  String description
  String url
  
  String toString(){
	  "$name, $url"
	  }
    static constraints = {
		
		name()
		description(maxSize:5000)
		url()
    }
}
