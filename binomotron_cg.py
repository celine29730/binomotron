
#connection à la base de donnée
import mysql.connector 

bdd=mysql.connector.connect(
  user='root',
  password= 'root',
  host= 'localhost',
  port=8081,
  database= 'binomotron'
  )
 
 
mycursor=bdd.cursor()

print(bdd.is_connected())

#requête allant chercher le nom et le prénom de la table étudiant.
query='select nom,prenom from etudiant'
mycursor.execute(query)

print(mycursor)

resultat=mycursor.fetchall()
print(resultat)

mycursor.execute('select id_etudiant,nom from etudiant')
resultat=mycursor.fetchall()
print(resultat)


import random


liste= [x for x in range(1,20)]
print(liste)

tailleGpe=int(input("entrez la taille du groupe :"))
print (tailleGpe)

taille_liste=len(liste)

random.shuffle(liste)
print(liste)

liste_groupe=[]
groupe=[]
i=0

while i<taille_liste:
  if len(groupe)<tailleGpe:
     groupe.append(liste[i])
     i=i+1
  else:    
       liste_groupe.append(groupe)
       groupe=[]

liste_groupe.append(groupe)
print(groupe)
print(liste_groupe)








