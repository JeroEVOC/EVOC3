n=int(input("Entrez le nombre de lignes :"))
def triangle(n):
    print("Vous avez entrez ", n)
    for i in range (1,n+1,1):
         print(i*"*")
triangle(n)
