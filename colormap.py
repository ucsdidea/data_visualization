import numpy as np
import matplotlib.pyplot as plt

# generate synthetic data
x = np.random.randn(1000)
y = np.random.randn(1000) + 5.0

# basic plot
plt.figure(figsize=(6, 4))
plt.hist2d(x, y, bins=40, cmap='jet')
plt.xlabel('x')
plt.ylabel('y')
plt.colorbar()
plt.savefig('colormap_bad.pdf', bbox_inches='tight')
plt.close()
#plt.show()

# better plot
plt.figure(figsize=(6, 4))
plt.hist2d(x, y, bins=40, cmap='viridis')
plt.xlabel('x')
plt.ylabel('y')
plt.colorbar()
plt.savefig('colormap_better.pdf', bbox_inches='tight')
plt.close()
#plt.show()
