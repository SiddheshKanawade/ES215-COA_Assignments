
import random
import timeit

global n
n = 128

def randomMatPrint(n, mat): 
    #print array
    for i in range(n):
        for j in range(n):     
            print (mat[i][j],
                   end = " ")       
        #new line
        print()


def multiply(n, mat1, mat2):
 
    res = [[0 for x in range(n)]
              for y in range (n)]
     
    for i in range(n):
        for j in range(n):
            res[i][j] = 0
    
    for j in range(n):
        for i in range(n):
            for k in range(n):           
                res[i][j] += (mat1[i][k] *
                              mat2[k][j])
            
    for i in range(n):
        for j in range(n):     
            print (res[i][j],
                   end = " ")       
        print()


if __name__ == "__main__":

    # we dont have double in python, hence using float 
    mat1 = [[float(random.randint(0,15) + random.random()) for x in range(n)]
              for y in range (n)]

    mat2 = [[float(random.randint(0,15) + random.random()) for x in range(n)]
              for y in range (n)]

    randomMatPrint(n, mat1)
    print()
    randomMatPrint(n, mat2)
    print()


    # multiply(n, mat1, mat2)

    # the function is executed below driving code
    t = timeit.timeit(lambda: multiply(n, mat1, mat2), number = 1)

    print("Time in sec = ",t)
