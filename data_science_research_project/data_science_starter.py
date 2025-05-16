# Data Science Project Scaffold (Python version)

import pandas as pd
import matplotlib.pyplot as plt

# Load dataset (replace 'your_data.csv' with your file)
df = pd.read_csv('your_data.csv')

# ----------------------------
# STEP 1: Explore the Dataset
# ----------------------------
print("First 5 rows of data:")
print(df.head())

print("\nColumns:")
print(df.columns)

# ----------------------------
# STEP 2: Ask a Question
# ----------------------------
# TODO: Replace with your actual driving question
question = "What does the dataset say about ______?"
print("\nQuestion:", question)

# ----------------------------
# STEP 3: Filter or Transform
# ----------------------------
# Example: filtering by a condition
# filtered = df[df['ColumnName'] == 'Value']
# TODO: Create a new filtered dataframe based on your inquiry

# ----------------------------
# STEP 4: Visualize
# ----------------------------
# Example: bar chart of counts by category
# df['CategoryColumn'].value_counts().plot(kind='bar')
# plt.title("Distribution of ______")
# plt.show()

# ----------------------------
# STEP 5: Reflect
# ----------------------------
# TODO: Write a short paragraph explaining what you found.
# What surprised you? What’s missing? What could you do next?
