-- La función `map()` en Lua
-- adopta, como argumentos, una función `f` y una lista
function map(f, lista)
  -- Crear una nueva lista para los valores resultantes
  local _lista = {}
  -- Iterar con índice a través de los elementos de la lista
  for index, valor in ipairs(lista) do
    -- Aplicar la función `f()` al valor actual de la lista
    -- y guardar el valor de retorno en la nueva lista, con el mismo índice 
    _lista[index] = f(valor)
  end
  -- Devolver lista nueva
  return _lista
end
-- Lista de números
números = {3, 4, 5}
-- Función que se aplica a todos los elementos de la lista 
function cuadrado(número)
  return número * número
end
-- Generar los cuadrados mediante la función `map()`
cuadrados = map(cuadrado, números) -- `{9, 16, 25}`
-- Mostrar números al cuadrado
for _, número in ipairs(cuadrados) do
  print(número)
end
