import matplotlib.pylab as p
import numpy as np
import scipy as sc
import scipy.integrate as integrate
import sys

# r = 1.0
# a = 0.1 
# z = 1.5
# e = 0.75
# K = 50  # Carrying capacity



def dCR_dt(pops, t=0):

    R = pops[0]
    C = pops[1]
    dRdt = r * R * (1 - R/K) - a * R * C 
    dCdt = -z * C + e * a * R * C
    
    return np.array([dRdt, dCdt])



# y = np.array([5, 20, 18, 19, 18, 7, 4]) # The y values; can also use a python list here
# p.plot(y)
# p.savefig('../results/plot.png', dpi=300, bbox_inches='tight')
# p.show()


def main():
    R0 = 10
    C0 = 5 
    RC0 = np.array([R0, C0])
    global r, a, z, e, K
    if len(sys.argv) == 6:
        r = float(sys.argv[1])
        a = float(sys.argv[2])
        z = float(sys.argv[3])
        e = float(sys.argv[4])
        K = float(sys.argv[5])
    else:
        print("Incorrect usage. Please provide 5 parameters: r, a, z, e, K.\n Usage: python LV2.py r a z e K")
        sys.exit(1)

    #t = np.linspace(0, 60, 4000)
    t = np.linspace(0, 15, 1000)

    sc.stats.norm.rvs(size = 10)
    pops, infodict = integrate.odeint(dCR_dt, RC0, t, full_output=True)


    f1 = p.figure()

    p.plot(t, pops[:,0], 'g-', label='Resource density') # Plot
    p.plot(t, pops[:,1]  , 'b-', label='Consumer density')
    p.grid()
    p.legend(loc='best')
    p.xlabel('Time')
    p.ylabel('Population density')
    p.title(f'Consumer-Resource population dynamics\nr={r}, a={a}, z={z}, e={e}, K={K}')


    f1.savefig('../results/LV2_model.pdf')
    f2 = p.figure()
    # x for resource, y for consumer
    p.plot(pops[:,0], pops[:,1], 'r-')
    p.xlabel('Resource density')
    p.ylabel('Consumer density')
    p.grid()
    p.title('Consumer-Resource population dynamics')

    #p.show()
    f2.savefig('../results/LV2_RC.pdf')

    

    
if __name__ == "__main__":
    main()