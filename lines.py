import numpy as np
import matplotlib.pyplot as plt

# generate synthetic data
t = np.linspace(0, 8 * np.pi, 1000)
x1 = np.sin(0.1 * t)
x2 = np.cos(0.1 * t)
x3 = np.sin(0.2 * t)
x4 = np.cos(0.2 * t)
x5 = np.sin(0.3 * t)
x6 = np.cos(0.3 * t)

# basic plot
plt.figure(figsize=(6, 4))
plt.plot(t, x1)
plt.plot(t, x2)
plt.plot(t, x3)
plt.plot(t, x4)
plt.plot(t, x5)
plt.plot(t, x6)
plt.autoscale(enable=True, axis='both', tight=True)
plt.savefig('lines_bad.pdf', bbox_inches='tight')
plt.close()
#plt.show()

# better plot
dark_blue = '#00557F'
light_blue = '#00AAFF'

plt.figure(figsize=(6, 4))
plt.plot(t, x1, c='0.0', ls='-')
plt.plot(t, x2, c='0.0', ls='--')
plt.plot(t, x3, c=dark_blue, ls='-')
plt.plot(t, x4, c=dark_blue, ls='--')
plt.plot(t, x5, c=light_blue, ls='-')
plt.plot(t, x6, c=light_blue, ls='--')
plt.autoscale(enable=True, axis='both', tight=True)
plt.savefig('lines_better.pdf', bbox_inches='tight')
plt.close()
#plt.show()
