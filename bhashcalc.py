#Importaciones
import hashlib as hl
import pyperclip
import time
import os

#Variables
cpy = pyperclip.copy
pst = pyperclip.paste
ver = "bhashcalc v0.1b"

def cl():
    os.system('cls')

def menu():
    print("[1] SHA512")
    print("[2] SHA256")
    print("[3] MD5")
    print("[0] Salir")   

def S256():
    T = input("Ingrese el texto a hashear: ")
    H = hl.sha256(str(T).encode('utf-8'))
    H2 = H.hexdigest()
    cpy(H2)
    print (T, "en SHA256 es: ", H2 )
    print("Presione cualquier tecla para continuar")
    os.system('pause>nul')

def S512():
    T = input("Ingrese el texto a hashear: ")
    H = hl.sha512(str(T).encode('utf-8'))
    H2 = H.hexdigest()
    cpy(H2)
    print (T, "en SHA512 es: ", H2 )
    print("Presione cualquier tecla para continuar")
    os.system('pause>nul')
    
def MD55():
    T = input("Ingrese el texto a hashear: ")
    H = hl.md5(str(T).encode('utf-8'))
    H2 = H.hexdigest()
    cpy(H2)
    print (T, "en MD5 es: ", H2 )
    print("Presione cualquier tecla para continuar")
    os.system('pause>nul')

#Código
print("Bienvenido a", ver)
time.sleep(1)
menu()
opc = int(input("Ingrese su opción: "))
while opc != 0:
    if opc == 1:
        cl()
        print("Seleccionó", "[" ,opc, "]" , "SHA512")
        S512()

    elif opc == 2:
        cl()
        print("Seleccionó", "[" ,opc, "]" , "SHA256")
        S256()

    elif opc == 3:
        cl()
        print("Seleccionó", "[" ,opc, "]" , "MD5")
        MD55()

    else:
        print("Opción inválida!")

    cl()
    menu()
    opc = int(input("Ingrese su opción: "))

print("Gracias por usar", ver)
time.sleep(2)
cl()