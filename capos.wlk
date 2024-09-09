object rolando {

    var property mochila = #{} //Se hace var solamente para el test, sino puede ser const.
    // Es una const ya que la referencia apunta siempre a la misma mochila. Lo que varia al agregar un artefacto es que se le
    // agrega una referencia a la mochila.
    var property capacidad = 2
    var property hogar = castillo
    const historial = [] 

    method encontrar(artefacto) {
        if (mochila.size() < capacidad) {
            mochila.add(artefacto) // .add agrega a la coleccion (que en este caso es la mochila) lo que pasemos por parametro.
        }
        historial.add(artefacto)
    }

    method mochila() {
        return mochila
    }

    method tieneArtefactos() {
        return not mochila.isEmpty()
    }

    method irAlHogar() {
        hogar.almacenar(mochila)
        mochila.clear() // .clear borra lo que hay en la coleccion.
    }

    method posesiones() {
        return mochila + hogar.cofre()
    }

    method posee(artefacto) {
        return self.posesiones().contains(artefacto) //.contains te indica si lo que pasaste como parametro esta en una coleccion.
    }

    method historial() {
        return historial
    }

    method artefactoEnHistorial(indice) {
        return historial.get(indice) // .get te devuelve el elemento de la coleccion que este posicionado en la posicion mandada por parametro, que vendria a ser el indice en este caso.
      
    }
}


object castillo {
    var property cofre = #{}

    method almacenar(artefactos) {
        cofre.addAll(artefactos) // addAll le pasa todos los elementos de la coleccion que pasamos por parametro.
    }
}
// Elementos 
object espada {

}

object libro {

}

object collar {

}

object armadura {

}

