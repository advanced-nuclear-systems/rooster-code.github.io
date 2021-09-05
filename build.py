import os

#read template
f = open('template', mode = 'r')
t0 = f.read()
f.close()

#read template-r
f = open('template-r', mode = 'r')
tr = f.read()
f.close()

#split
t1 = t0.split('INSERTHERE')

for f_name in os.listdir('.'):
    if f_name.endswith('.i'):
        fname = f_name[0:f_name.find('.')]
        #read fname.i
        f = open(fname+'.i', mode = 'r')
        i0 = f.read()
        f.close()
        #write fname.html
        f = open(fname+'.html', mode = 'w')
        if fname[0:7] == 'rooster':
            f.write(t1[0] + tr + i0 + t1[1])
        else:
            f.write(t1[0] + i0 + t1[1])
        f.close()
