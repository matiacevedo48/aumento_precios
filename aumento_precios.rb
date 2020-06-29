
def augment(array,aumento)
    new_array = []
    array.each do |precio|
        new_array.push((precio * (aumento/100)) + precio)
    end
    cantidad = new_array.count  # esto es para que no devuelva un float terminado en ".0"
    cantidad.times do |i|
        new_array[i] = new_array[i].to_i
    end
    return new_array
end


variable = ARGV[0]
aumento = ARGV[1].to_f
array = variable.split(',')
cantidad = array.count
cantidad.times do |i|  # esto es para convertir el string en arreglo para trabajarlo en el método
    array[i] = array[i].to_i
end
resultado = augment(array,aumento)
resultado = resultado.join(',')
print resultado


