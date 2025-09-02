object tom {
    var energia=50
    method energia()=energia
    method comerUnRaton(unRaton){
        energia=energia +12 + unRaton.peso() 
    }
    method consume(metros)= (metros/2)
    method correr(metros){
      energia = energia - self.consume(metros)
    }
    method velocidadMaxima(){
        return 5 + energia/10
    }
    method puedeCazar(metros){
      return energia <= self.consume(metros)  
    }
    method cazarRaton(unRaton,distancia){
      if(self.puedeCazar(distancia)){
         self.comerUnRaton(unRaton)
      }
    }
}

object jerry {
  var edad=2
  method peso(){
    return edad*20
  }
  method edad()=edad
  method cumplirAños(){
    edad=edad +1
  }
}  

object nibbles {
  var edad=1
  method peso()=35
  method edad()=edad
  method cumplirAño(){
    edad+=1
  }
}

// Inventar otro ratón
object pepe {
  var edad=2
  method peso()=39
  method edad()=edad
  method cumplirAño(){
    edad+=1
  }
}