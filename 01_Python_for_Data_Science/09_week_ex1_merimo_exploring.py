import marimo

__generated_with = "0.25.2"
app = marimo.App()


@app.cell
def _():
    import marimo as mo
    import numpy as np
    import pandas as pd
    import seaborn as sns
    import matplotlib.pyplot as plt

    return mo, pd, sns


@app.cell(hide_code=True)
def _(mo):
    mo.md(r"""
    Follow the instructions and explore jupyter / marimo notebook functionalities:
    * Create a new jupyter/marimo notebook in PyCharm/VS Studio Code.
    * Import numpy and pandas and load the airquality.csv file into a dataframe.
    """)
    return


@app.cell
def _(pd):
    file_path = ".\\airquality.csv"
    df = pd.read_csv(file_path, sep=',')
    df.head()
    return (df,)


@app.cell(hide_code=True)
def _(mo):
    mo.md(r"""
    *  Calculate various statistics (mean, etc.) of the temperature values. Report them as text in the jupyter notebook.
    """)
    return


@app.cell
def _(df):
    print(df.shape)
    print(df.dtypes)
    return


@app.cell
def _(df):
    df.info()
    return


@app.cell
def _(df):
    print(df.describe())
    return


@app.cell(hide_code=True)
def _(mo):
    mo.md(r"""
    *  Find an outlier (one) and correct it by averaging the values before and after the outlier. Make a note to the report.
    """)
    return


@app.cell
def _(df):
    mean_value = df['Temp'].mean()
    std_value = df['Temp'].std()

    for idx, val in enumerate(df['Temp']):
        if val > mean_value + 3*std_value or val < mean_value - 3*std_value:
            print(f"outliner value: {val=}")
            outlier_new_temp_mean = df['Temp'].iloc[[idx-1, idx+1]].mean()
            print(f"New outliner value: {outlier_new_temp_mean}")
            print(f"Orinall data: {df.iloc[idx]}")
            row_index = df.iloc[[idx]].index.start
            df.loc[row_index, 'Temp'] = outlier_new_temp_mean
            print(f"\nConfirmation that the value has been change: {df.iloc[idx]}")

    return


@app.cell(hide_code=True)
def _(mo):
    mo.md(r"""
    *  Plot the temperature series with matplotlib or seaborn and add it to the report.
    """)
    return


@app.cell
def _(df, sns):
    sns.histplot(df.Temp)
    return


@app.cell(hide_code=True)
def _(mo):
    mo.md(r"""
    *  Create a temperature converter function from °F to °C (formula: °F = °C × (9/5) + 32).
    * Convert all temperature values from °F to °C using map().
    """)
    return


@app.cell
def _(df):
    df['Temp_C'] = df.Temp.map(lambda x : (x - 32) * 5/9)
    df.head()
    return


@app.cell(hide_code=True)
def _(mo):
    mo.md(r"""
    *  Plot both temperature graphs in one figure and add it to the report.
    """)
    return


@app.cell
def _(df):
    df[['Temp', 'Temp_C']].plot()
    return


@app.cell(hide_code=True)
def _(mo):
    mo.md(r"""
    *  Declare a class “AirQualityReport” comprising object variables that store the mean values of columns where reasonable.
    *  Add an object method to the class that calculates the max value of all object variables. The function should return a dictionary containing the original column name of the variable with the max value and the maximum value itself.
    """)
    return


@app.cell
def _(df):
    class AirQualityReport:

        def __init__(self, ozone, solar_R, wind, temp, temp_C):
            self.ozone = ozone
            self.solar_R = solar_R
            self.wind = wind
            self.temp = temp
            self.temp_C = temp_C
            self.mean_ozone = ozone.mean() 
            self.mean_solar_R = solar_R.mean() 
            self.mean_wind = wind.mean() 
            self.mean_temp = temp.mean() 
            self.mean_temp_C = temp_C.mean() 

        def min_max_value_dict(self):
            temp_dict = {}
            temp_dict['ozone'] = [self.ozone.min(), self.ozone.max()]
            temp_dict['solar_R'] = [self.solar_R.min(), self.solar_R.max()]
            temp_dict['wind'] = [self.wind.min(), self.wind.max()]
            temp_dict['temp'] = [self.temp.min(), self.temp.max()]
            temp_dict['temp_C'] = [self.temp_C.min(), self.temp_C.max()]
            return temp_dict

    new_df= df[['Ozone', 'Solar.R', 'Wind', 'Temp', 'Temp_C']]
    print(new_df.head())
    air_quality = AirQualityReport(*[new_df[col] for col in new_df.columns])
    air_quality.min_max_value_dict()

    
    return


if __name__ == "__main__":
    app.run()
