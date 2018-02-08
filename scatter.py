import numpy as np
import matplotlib.pyplot as plt

# generate synthetic data
n = 10
x1 = np.linspace(0, 1, n)
x2 = np.linspace(0, 1, n)
x3 = np.linspace(0, 1, n)

y1 = x1 + 0.5 * np.random.randn(n)
y2 = x2 + 0.5 * np.random.randn(n)
y3 = x3 + 0.5 * np.random.randn(n)


# basic plot
plt.figure(figsize=(6, 4))
plt.scatter(x1, y1, label='Scenario 1')
plt.scatter(x2, y2, label='Scenario 2')
plt.scatter(x3, y3, label='Scenario 3')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.savefig('scatter_bad.pdf', bbox_inches='tight')
plt.close()
#plt.show()

# better plot
plt.figure(figsize=(6, 4))
plt.scatter(x1, y1, label='Scenario 1', marker='o', s=50, facecolor='r')
plt.scatter(x2, y2, label='Scenario 2', marker='s', s=50, facecolor='w', edgecolor='k')
plt.scatter(x3, y3, label='Scenario 3', marker='^', s=50, facecolor='0.7', edgecolor='k')
plt.xlabel('x')
plt.ylabel('y')
plt.legend()
plt.savefig('scatter_better.pdf', bbox_inches='tight')
plt.close()
#plt.show()
