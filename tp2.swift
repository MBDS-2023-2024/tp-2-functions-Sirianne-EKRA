//Question 1

func afficherNombresPairsOuImpairs(_ x: Int, _ type: String) {
  print("Les \(x) premiers nombres \(type) :")

  var nombre = type == "pairs" ? 2 : 1

  for _ in 1...x {
      print(nombre)
      nombre += 2
  }
}

// Affichage des 10 premiers nombres pairs
afficherNombresPairsOuImpairs(10, "pairs")
// Affichage des 10 premiers nombres impairs
afficherNombresPairsOuImpairs(10, "impairs")


//Question 2

func fibonacci(_ x: Int) {
  var a = 0
  var b = 1

  print("Les \(x) premiers nombres de la suite de Fibonacci :")

  for _ in 0..<x {
      print(a)
      let temp = a + b
      a = b
      b = temp
  }
}

fibonacci(10)

//Question 3

func factoriel(_ x: Int = 10) -> Int {
  var resultat = 1
  for i in 1...x {
      resultat *= i
  }
  return resultat
}

print(factoriel())

//Question 4

func nombresPremiers(_ x: Int) {
  print("Les \(x) premiers nombres premiers :")

  var compteur = 0
  var nombre = 2

  while compteur < x {
      var estPremier = true

      if nombre < 2 {
          estPremier = false
      } else {
          for i in 2..<nombre {
              if nombre % i == 0 {
                  estPremier = false
                  break
              }
          }
      }

      if estPremier {
          print(nombre)
          compteur += 1
      }

      nombre += 1
  }
}

nombresPremiers(10)
