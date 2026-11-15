"""
Exercise 2
Analyse the twitch data using the modules pandas, numpy and matplotlib. Follow the instructions, use the given
hints, online documentation or cheat sheets to explore the packages.

"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

# – Read the twitch data into a dataframe, display the columns with df.columns
file_path = ".\\01_Python_for_Data_Science\\twitchdata-update.csv"
df = pd.read_csv(file_path)
print(df.columns)

# – Create a new dataframe only containing the columns column_selection 
column_selection = ['Channel', 'Watch time(Minutes)', 'Peak viewers', 'Language']
new_df = df[column_selection]

# – Rename columns: replace spaces with underscores, remove brackets including their contents
new_column_selection_name_dict = {}
for column in new_df.columns:
    new_column_selection_name_dict[column] = column.replace(" ", "_").replace("(Minutes)", '_minutes')
print(new_column_selection_name_dict)
new_df = new_df.rename(columns=new_column_selection_name_dict)

# – Use info() and describe() to figure out how many numeric columns you have and what the statistical
# stributions of the respective values roughly are
print("\ninfo()")
print(new_df.info())

print("\ndescribe ()")
print(new_df.describe())

# – How many and which channels are above the 99 percentile of Watch_time?
print()
per_99_val = np.percentile(new_df['Watch_time_minutes'], 99)
print(per_99_val)
outliers = new_df.Watch_time_minutes[new_df['Watch_time_minutes'] > per_99_val]
print(f"number of chanells over 99 percentile for 'Watch_time_minutes': \t{len(outliers)}")

# – What are the top 10 languages measured by sum of all Peak_viewers in that language?
groupped_lang_viers = new_df[['Language', 'Peak_viewers']].groupby('Language').count()
top_10 = groupped_lang_viers.sort_values(by=["Peak_viewers"], ascending=False)[:10].index
print("Top 10 languages:", "".join(lan + ", " for lan in top_10[:-1])+top_10[-1])

# – Visualize the obtained sum for Peak_viewers for the top 10 languages as a barplot using matplotlib
# – Drop English. For the remaining 9 languages, create a heatmap using seaborn.
# - Combine both plots in one matpltolibfigure using plt.subplots(1,2)

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

df_top_10 = groupped_lang_viers[:10].sort_values(by=["Peak_viewers"], ascending=False)
ax1.bar(df_top_10.index, df_top_10.Peak_viewers)


df_top_10_no_english = df_top_10[df_top_10.index != "English"]

sns.heatmap(
    df_top_10_no_english,
    ax=ax2,
    annot=True,
    cmap='viridis'
)
plt.show()
