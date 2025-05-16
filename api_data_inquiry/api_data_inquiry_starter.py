# API Data Inquiry Starter (Python + Jupyter)
# For use in Jupyter Notebook environments

import requests
import pandas as pd
import json

# -------------------------------------------
# Step 1: Pose Your Question
# -------------------------------------------
# Example: What types of objects are most common in the Met Museum collection?
question = "What does the Met API reveal about art categories and access?"

# -------------------------------------------
# Step 2: Define API Call
# -------------------------------------------
# Example: Met Museum API search endpoint
base_url = "https://collectionapi.metmuseum.org/public/collection/v1/"
search_url = base_url + "search"
object_url = base_url + "objects/"

# Search by keyword (you can change the query)
params = {
    "q": "egypt",
    "hasImages": True
}

response = requests.get(search_url, params=params)
data = response.json()
object_ids = data["objectIDs"][:10]  # limit to 10 results for testing

# -------------------------------------------
# Step 3: Fetch Sample Objects
# -------------------------------------------
objects = []

for obj_id in object_ids:
    obj = requests.get(object_url + str(obj_id)).json()
    objects.append(obj)

# -------------------------------------------
# Step 4: Convert to DataFrame and Explore
# -------------------------------------------
df = pd.DataFrame(objects)

# Preview a few relevant fields
print(df[["objectID", "title", "artistDisplayName", "objectName", "department"]].head())

# -------------------------------------------
# Step 5: Reflect + Extend
# -------------------------------------------
# TODO:
# - Ask your own question
# - Modify query or filter your data
# - Visualize or explain patterns
# - Add markdown cells to narrate your process
