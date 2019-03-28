parent_of(warren,X)
  parent(warren,X)
    X=jerry
      parent(warren,jerry)
        true, X = jerry.
  sibling(X,Z),parent(warren,Z)
    sister(X,Z),parent(warren,Z)
      X=ann,Z=maryalice
        parent(warren,maryalice)
          false.
      X=kather,Z=jerry
        parent(warren,jerry)
          true, X = kather.
    brother(X,Z),parent(warren,Z)
      X=jerry,Z=stuart
        parent(warren,stuart)
          false.
      X=jerry,Z=kather
        parent(warren,kather)
          false.
      X=peter,Z=warren
        parent(warren,warren)
          false.
    sister(Z,X),parent(warren,Z)
      X=maryalice,Z=ann
        parent(warren,ann)
          false.
      X=jerry,Z=kather
        parent(warren,kather)
          false.
    brother(Z,X),parent(warren,Z)
      X=stuart,Z=jerry
        parent(warren,jerry)
          true, X = stuart.
      X=kather,Z=jerry
        parent(warren,jerry)
          true, X = kather.
      X=warren,Z=peter
        parent(warren,peter)
          false.
