n = int(input())
k = int(input())
arr =  [ i for i in raw_input().split(" ")]

def find(n,k,arr):
  for i in set(arr):
    res =  int(count(arr,i))
    if res > int(n/k):
      print(str(i) +"is repeated"+str(res))

def count(arr,i):
  cnt = 0
  for j in arr:
    if j == i:
      cnt+=1
  return cnt

find(n,k,arr)
