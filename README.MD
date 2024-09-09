# Bastian's Personal Projects
## bhashcalc

Una herramienta escrita en python con el motivo de poder 'hashear' texto y copiarlo automáticamente al portapapeles, de tal manera:

- Ejecutas la herramienta
- Ingresas el texto que quieres hashear (sólo texto de moemento)
- Selecciona un algoritmo de hasheo MD5, SHA256, SHA512
- Espera el resultado y cuando acabe, automáticamente la frase de hash será copiada al portapapeles

Todavía le faltan algunas cosas por agregar como soporte para archivos y más algoritmos de hash, pero de momento funciona perfectamente.

Cualquier duda/problema/sugerencia es bienvenida.

Se requiere instalar conda y poetry para la gestión interna de dependencias

1) `conda create -n bhashcalc python`<br>
2) `conda activate bhashcalc`<br>
3) `pip install poetry`

