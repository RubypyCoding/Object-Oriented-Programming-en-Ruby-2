## Estados y Comportamientos

Los estados son datos, variables, propiedades, atributos (ej. color, marca, etc.) o constantes. Los comportamientos o métodos de una clase se refieren a las acciones que son capaces de hacer los objetos (mover, subir, cantar, etc.). 


#### Método initialize

El método initialize es el `método constructor` de cada objeto que la clase crea. Puede recibir parámetros que estarán relacionados al comportamiento o estados de la clase.

```Ruby
class Car
  #método constructor 
  def initialize
  end
end
```

#### Variables de instancia y métodos de instancia

Del ejemplo anterior vamos a crear dos objetos `Car` (`audi`, `minicooper`). Los dos pueden contener información diferente como `brand` y `color` .  

```Ruby
class Car
  def initialize(brand, color)
  end
end

#instancias de Car
audi = Car.new("audi", "black")
minicooper = Car.new("minicooper", "red")
```

Las `variables de instancia` sirve para darle seguimiento a `brand` y `color`.

```Ruby
class Car
  def initialize(brand, color)
    #variable de instancia 1
    @brand = brand
    #variable de instancia 2
    @color = color
  end
end

#instancias de Car
audi = Car.new("audi", "black")
minicooper = Car.new("minicooper", "red")
```

A pesar de que estos objetos son diferentes a través de `brand` y `color` tienen comportamientos idénticos, podrán acelerar, frenar y desarrollar otros comportamientos de un `car`. 

```Ruby
class Car
  def initialize(brand, color)
    #variable de instancia 1
    @brand = brand
    #variable de instancia 2
    @color = color
  end
  
  #comportamiento 1
  def acelerar
    p "Acelerando"
  end

  #comportamiento 2
  def frenar
    p "Frenando"
  end

  #otros comportamientos...

end

#instancias de Car
audi = Car.new("audi", "black")
minicooper = Car.new("minicooper", "red")
```

Los comportamientos o métodos definidos en una clase se llaman `métodos de instancia`. Los métodos de instancia definidos en una clase pueden ser utilizados por objetos o instancias de esa clase.

```Ruby
class Car
  def initialize(brand, color)
    #variable de instancia 1
    @brand = brand
    #variable de instancia 2
    @color = color
  end
  
  #comportamiento 1
  def acelerar
    p "Acelerando"
  end

  #comportamiento 2
  def frenar
    p "Frenando"
  end

  #otros comportamientos...

end

#instancias de Car
audi = Car.new("audi", "black")
minicooper = Car.new("minicooper", "red")
#método de instancia 'acelerar'
audi.acelerar
minicooper.acelerar
#método de instancia 'frenar'
audi.frenar
minicooper.frenar
```

Las `variables de instancia` permiten hacer un seguimiento del estado y los `métodos de instancia` muestran el comportamiento de los objetos.


## Métodos de clase

Los métodos de clase son definidos con la palabra reservada `self`. 

```Ruby
class Car
  def initialize(brand, color)
    #variable de instancia 1
    @brand = brand
    #variable de instancia 2
    @color = color
  end
  
  #método de clase
  def self.incrementar_velocidad
     p "Incrementando velocidad"
  end

end
```

Los `métodos de clase` solamente pueden ser llamados usando la clase donde fueron definidos.

```Ruby
class Car
  def initialize(brand, color)
    #variable de instancia 1
    @brand = brand
    #variable de instancia 2
    @color = color
  end
  
  #método de clase
  def self.incrementar_velocidad
     p "Incrementando velocidad"
  end

end

##instancias de Car
audi = Car.new("audi", "black")
minicooper = Car.new("minicooper", "red")
#método de clase
Car.incrementar_velocidad
```

## Variables de clase

Las variables de clase son variables cuyos valores son los mismos para la clase y para todas sus instancias. Para definir una variable de clase se utiliza `@@`. 

Un ejemplo de variable de clase y método de clase es el siguiente:

```Ruby
#Clase 'Car' con variable de clase y un método de clase para ver esta variable


class Car
  #variable de clase
  @@number_of_cars = 0
  
  #método constructor
  def initialize
    @@number_of_cars += 1
  end
  
  #método de clase
  def self.number_of_cars
    @@number_of_cars
  end

end

#obteniendo el número de carros a través del método de clase
p Car.number_of_cars
#=>0

#creando instancia 'car1'
car1 = Car.new

#obteniendo el número de carros a través del método de clase
p Car.number_of_cars
#=>1

#creando instancia 'car2'
car2 = Car.new
#creando instancia 'car3'
car3 = Car.new
#creando instancia 'car4'
car4 = Car.new

#obteniendo el número de carros a través del método de clase
p Car.number_of_cars
#=>4

```

## Ejercicio - Clase Bird

Crea una clase `Bird` que permita crear objetos `Bird` con diferentes nombres y que le permita al pájaro realizar las siguientes acciones: `who_am_i?`, `fly` y `jump`. También es posible conocer el nombre del pájaro.

Desarrolla el código basado en las pruebas `specs` correspondientes.

```ruby
#Bird class

...

```

```Ruby
#Ejemplo de objeto y salida

bird_3 = Bird.new("Zulu")

p bird_3.jump
#=> "Saltando..."

p bird_3.fly(20)
#=> "Volando 20 mts..."

p bird_3.fly(10)
#=> "Volando 30 mts..."

p Bird.who_am_i?
#=> "Soy un pájaro"
```

```ruby
#Test Driven Development - TDD
$ rspec
```

