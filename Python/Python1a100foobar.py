for i in range(1,100) :
    if (i % 3 == 0 and i % 5 == 0) :
        i = "foobar"
    elif i % 3 == 0 :
        i = "foo"
    elif i % 5 == 0 :
        i = "bar"
    print (str(i) + "\n")