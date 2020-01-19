# -*- coding: utf-8 -*-
"""
Created on Sat Jan 18 13:34:33 2020

@author: Shuya Fan
"""



myArray = [31,2,11,23,8,7,11,14,20]


sorted = myArray[:]  
index = list(range(0,len(sorted)))
rank = list(range(1,len(sorted)+1))


#   sorted and index,myArray is original
for j in range(1,len(sorted)-1):   
    for i in range(0,len(sorted)-j):    
        if sorted[i]>sorted[i+1]:
            trans = [sorted[i+1],index[i+1]]
            sorted[i+1] = sorted[i]
            sorted[i] = trans[0]
            index[i+1] = index[i]
            index[i] = trans[1]
        else:
            pass


#   rank
for i in range(0,len(myArray)):
    for j in range(0,len(sorted)):
        if myArray[i]==sorted[j]:
            rank[i] = j+1
            break
        else:
            continue
for i in range(0,len(rank)-1):
    for j in range(i+1,len(rank)):
        if rank[i]==rank[j]:
            rank[j] = rank[i]+1
        else:
            continue       

    