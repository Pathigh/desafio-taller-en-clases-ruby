 class Carta
 	attr_reader :carta, :pinta

 	def initialize(carta, pinta)

		@carta = carta
 		@pinta = pinta
	
 	end

 	def imprimir
 		puts " #{@carta} de #{@pinta}"
   end
 end

 arreglo_carta = []
 carta = [1,2,3,4,5,6,7,8,9,10,11,12,13]
 pinta= ['Pica', 'Trebol','Corazon','Diamante', 'Comodin']


opcion = gets.chomp.to_i

opcion = 0

while opcion != 3
  puts "Menú"
  puts "1. jugar"
  puts "2. mostrar"
  puts "3. salir"
  

  opcion = gets.chomp.to_i

  case opcion
    when 1 
      puts 'Ingrese a Jugar '
      input = gets.chomp
       if input =='jugar'
 	     5.times do 
         arreglo_carta.push(Carta.new(carta.sample, pinta.sample))
         end
         puts 'Ya a jugado'
        else 
          puts 'Palabra no valida vuelva a ingresar'
 	    end
      
    when 2
      puts 'Ingrese a mostrar'
      input = gets.chomp

    if input == 'mostrar'
 		5.times do 
 		arreglo_carta.sample.imprimir
   		end

   else 
          puts 'Palabra no valida vuelva a ingresar'
   
   end

    when 3 
      puts "ha elegido salir"
    else
      puts "opción inválida"
  end
end
