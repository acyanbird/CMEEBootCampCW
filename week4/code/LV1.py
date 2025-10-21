"""
Lotka-Volterra model of consumer-resource population dynamics
Display two plots:
"""
import matplotlib.pylab as p
import numpy as np
import scipy as sc
import scipy.integrate as integrate



r = 1.0
a = 0.1 
z = 1.5
e = 0.75
t = np.linspace(0, 15, 1000)

R0 = 10
C0 = 5 
RC0 = np.array([R0, C0])


def dCR_dt(pops, t=0):

    R = pops[0]
    C = pops[1]
    dRdt = r * R - a * R * C 
    dCdt = -z * C + e * a * R * C
    
    return np.array([dRdt, dCdt])

pops, infodict = integrate.odeint(dCR_dt, RC0, t, full_output=True)


# y = np.array([5, 20, 18, 19, 18, 7, 4]) # The y values; can also use a python list here
# p.plot(y)
# p.savefig('../results/plot.png', dpi=300, bbox_inches='tight')
# p.show()

t = np.linspace(0, 15, 1000)
sc.stats.norm.rvs(size = 10)

f1 = p.figure()

p.plot(t, pops[:,0], 'g-', label='Resource density') # Plot
p.plot(t, pops[:,1]  , 'b-', label='Consumer density')
p.grid()
p.legend(loc='best')
p.xlabel('Time')
p.ylabel('Population density')
p.title('Consumer-Resource population dynamics')

f1.savefig('../results/LV1_model.pdf')

p.close() # Close the figure window

f2 = p.figure()
# x for resource, y for consumer
p.plot(pops[:,0], pops[:,1], 'r-')
p.xlabel('Resource density')
p.ylabel('Consumer density')
p.grid()
p.title('Consumer-Resource population dynamics')

#p.show()
f2.savefig('../results/LV1_RC.pdf')
