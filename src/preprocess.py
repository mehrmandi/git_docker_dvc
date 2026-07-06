import numpy as np
import pandas as pd
from sklearn.preprocessing import StandardScaler


X_train = pd.read_csv('temp_data/X_train.csv')
X_test = pd.read_csv('temp_data/X_test.csv')

scaler = StandardScaler()
X_train = scaler.fit_transform(X_train) 
X_test = scaler.transform(X_test)

np.savetxt('temp_data/X_train_pre.csv', X_train, delimiter=',')
np.savetxt('temp_data/X_test_pre.csv', X_test, delimiter=',')
