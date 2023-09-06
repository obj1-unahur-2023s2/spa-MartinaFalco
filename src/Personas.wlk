object olivia{
	var gradoDeConsentracion = 6 //1)Creo la variable
	
	method gradoDeConsentracion(){return gradoDeConsentracion} //2) Getter
	method recibirMasaje() {gradoDeConsentracion = gradoDeConsentracion + 3} //3) Setter
	method discutir(){gradoDeConsentracion = gradoDeConsentracion - 1} 
	method tomarBanioDeVapor(){}
}



object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000 
	method peso() = peso
	method tieneSed()= tieneSed
	method esFeliz() = esFeliz
	
	method recibirMasaje(){esFeliz = true}
	method tomarBanioDeVapor(){peso = peso - 500  tieneSed = true}
	method tomarAgua(){tieneSed = false}
	method comerFideos(){peso = peso + 250 tieneSed = true}
	method correr(){peso -= 300}
	method verNoticiero(){esFeliz = false}
	method estaPerfecto(){return peso.between(55000,77000) and esFeliz and not tieneSed} //Getter(Consulta)(Booleano)
	method mediodiaEncasa(){self.comerFideos() self.tomarAgua() self.verNoticiero()}
	
}

object ramiro {
	var nivelDeContractura = 10
	var tieneLaPielGrasosa = false
	method nivelDeContractura() = nivelDeContractura
	method tieneLaPielGrasosa() = tieneLaPielGrasosa
	
	method recibirMasaje(){nivelDeContractura = 0.max(nivelDeContractura - 2)} 
	method tomarBanioDeVapor(){tieneLaPielGrasosa = false}
	method comerBigMac(){tieneLaPielGrasosa = true}
	method bajarLaFosa(){tieneLaPielGrasosa = true nivelDeContractura += 1}
	method diaDeTrabajo(){self.bajarLaFosa() self.comerBigMac() self.bajarLaFosa()}
}