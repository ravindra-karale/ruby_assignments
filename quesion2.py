arr1 = [[1,0,1],[0,1,0],[1,1,0]]
arr2 = [[1,1,0],[0,1,1],[1,0,0]]

def check(arr1,arr2):
  res = []
  for i in range(0,len(arr1)):
    a = arr1[i] and arr2[i]
    res.append(a)

  orRes = []
  for i in range(0,len(arr1)):
    a = arr1[i] or arr2[i]
    orRes.append(a)


  finalRes = []
  for i in orRes:
    for j in i:
      finalRes.append(j)


  decimalNo = B2D(finalRes)


  if isprime(decimalNo):
    print(decimalNo,"is prime")
  print(decimalNo,"is not prime")

def B2D(arr):
  s = 0
  arr.reverse()
  for i in range(len(arr)):
    if arr[i] == 1:
      s+=(2**i)
  return s

def isprime(n):
  if n>2:
    for i in range(2,n):
      if n%i == 0:
        return 0
    return 1
  return 0

check(arr1,arr2)
