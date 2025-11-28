extends Node  
class_name PrintMessage  
## [b]PrintMessage[/b] — Componente para imprimir mensajes en consola.  
##  
## Permite definir un mensaje por defecto desde el editor, recibir mensajes desde otros scripts  
## y emitir una señal cuando se imprime un mensaje.  

## Mensaje por defecto que se imprimirá si no se envía otro mensaje.  
@export var text_to_print: String = ""  

## Si es true, imprime automáticamente el mensaje definido en text_to_print  
## cuando el nodo entra al árbol (_ready()).  
@export var execute_on_ready: bool = false  

## Señal que se emite después de imprimir un mensaje.  
## Permite a otros nodos reaccionar a la impresión (por ejemplo, mostrar una animación o notificación).  
signal message_printed  

## Al inicializar el nodo (_ready), si execute_on_ready es true,  
## llama a [method PrintMessage.print_message] para imprimir automáticamente.  
func _ready():  
	if execute_on_ready:  
		print_message()  

## Imprime un mensaje en consola.  
## Parámetros:  
## - [param msg]: texto a imprimir. Si está vacío, se usa [member PrintMessage.text_to_print].  
## Emite la señal: [signal PrintMessage.message_printed] cuando termina.  
func print_message(msg := ""):  
	var final_text = msg if msg != "" else text_to_print  
	if final_text != "":  
		print(final_text)  
		message_printed.emit()  
