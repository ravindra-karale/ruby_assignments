def tower(n):
  s='S'
  a='A'
  d='D'
  if n%2 == 0:
    tmp = d
    d = a
    a = tmp

  nom = (2**n)-1
  print("no_of_moves:",nom)
  for i in range(1,nom+1):
    if i%3 == 1:
      print("movement from "+s+" to "+ d)
    if i%3 == 2:
      print("movement from "+s+" to "+ a)
    if i%3 == 0:
      print("movement from "+a+" to "+ d)

tower(int(input()))
