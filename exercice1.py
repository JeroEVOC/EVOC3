#fonction pour faire la multiplication selon les arguments proposés
arg1=int(input("1er chiffre entier : "))
arg2=int(input("2nd chiffre entier : "))
def multiplierpar(arg1,arg2):
  resultat=arg1*arg2
  print(resultat)
  print("le resultat de la multiplication de ", arg1, "et de ", arg2, "est=", resultat)
multiplierpar(arg1,arg2)


#fonction pour sortir la table de multiplication selon l'argument proposé
def multiplie(chiffreChoisi):
 
  if(chiffreChoisi==1):
    TableMultiDe1=["1*0=0","1*1=1","1*2=2","1*3=3","1*4=4","1*5=5","1*6=6","1*7=7","1*8=8","1*9=9","1*10=10"]
    print("Vous avez choisi 1. Voici sa table de multiplication")
    for element in TableMultiDe1:
     print(element)

  elif(chiffreChoisi==2):
    TableMultiDe2=["2*0=0","2*1=2","2*2=4","2*3=6","2*4=8","2*5=10","2*6=12","2*7=14","2*8=16","2*9=18","2*10=20"]
    print("Vous avez choisi 2. Voici sa table de multiplication")
    for element in TableMultiDe2:
     print(element)

  elif(chiffreChoisi==3):
    TableMultiDe3=["3*0=0","3*1=3","3*2=6","3*3=9","3*4=12","3*5=15","3*6=18","3*7=21","3*8=24","3*9=27","3*10=30"]
    print("Vous avez choisi 3. Voici sa table de multiplication")
    for element in TableMultiDe3:
     print(element)

  elif(chiffreChoisi==4):
    TableMultiDe4=["4*0=0","4*1=4","4*2=8","4*3=12","4*4=16","4*5=20","4*6=24","4*7=28","4*8=32","4*9=36","4*10=40"]
    print("Vous avez choisi 4. Voici sa table de multiplication")
    for element in TableMultiDe4:
     print(element)

  elif(chiffreChoisi==5):
    TableMultiDe5=["5*0=0","5*1=5","5*2=10","5*3=15","5*4=20","5*5=25","5*6=30","5*7=35","5*8=40","5*9=45","5*10=50"]
    print("Vous avez choisi 5. Voici sa table de multiplication")
    for element in TableMultiDe5:
     print(element)

  elif(chiffreChoisi==6):
    TableMultiDe6=["6*0=0","6*1=6","6*2=12","6*3=18","6*4=24","6*5=30","6*6=36","6*7=42","6*8=48","6*9=54","6*10=60"]
    print("Vous avez choisi 6. Voici sa table de multiplication")
    for element in TableMultiDe6:
     print(element)

  elif(chiffreChoisi==7):
    TableMultiDe7=["7*0=0","7*1=7","7*2=14","7*3=21","7*4=28","7*5=35","7*6=42","7*7=49","7*8=56","7*9=63","7*10=70"]
    print("Vous avez choisi 7. Voici sa table de multiplication")
    for element in TableMultiDe7:
     print(element)

  elif(chiffreChoisi==8):
    TableMultiDe8=["8*0=0","8*1=8","8*2=16","8*3=24","8*4=32","8*5=40","8*6=48","8*7=56","8*8=64","8*9=72","8*10=80"]
    print("Vous avez choisi 8. Voici sa table de multiplication")
    for element in TableMultiDe8:
     print(element)

  elif(chiffreChoisi==9):
    TableMultiDe9=["9*0=0","9*1=9","9*2=18","9*3=27","9*4=36","9*5=45","9*6=54","9*7=63","9*8=72","9*9=81","9*10=90"]
    print("Vous avez choisi 9. Voici sa table de multiplication")
    for element in TableMultiDe9:
     print(element)

  elif(chiffreChoisi==10) :
    TableMultiDe10=["10*0=0","10*1=10","10*2=20","10*3=30","10*4=40","10*5=50","10*6=60","10*7=70","10*8=80","10*9=90","10*10=100"]
    print("Vous avez choisi 10. Voici sa table de multiplication")
    for element in TableMultiDe10:
     print(element)
  elif(chiffreChoisi<=0 or chiffreChoisi >10):
    print("Erreur")

    
print("Choisissez un chiffre entre 0 et 10")
ch=int(input("chiffre : "))
multiplie(ch)
