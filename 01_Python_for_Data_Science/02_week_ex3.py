"""
Exercise 3
Your goal is to convert temperatures between the scales °Celsius and °Fahrenheit.
The centigrade scale, which is also called the Celsius scale, was developed by Swedish astronomer Andres Celsius.
In this scale, water freezes at 0 degrees and boils at 100 degrees.
The Fahrenheit scale was developed by the German physicist Daniel Gabriel Fahrenheit. In the Fahrenheit scale,
water freezes at 32 degrees and boils at 212 degrees.
The following equation describes the relation of the two temperature scales:
TC = (5/9) ∗ (TF − 32)
where TC is the temperature in °Celsius and TF is the temperature in °Fahrenheit.
Write two programs that will allow you to convert temperatures
• from Celsius to Fahrenheit and
• from Fahrenheit to Celsius
Think about how you can combine the two programs in one program using an additional input specifying the
direction, e.g. ’F’ and ’45’ for Fahrenheit to Celsius.
"""

while True:
    temperature = input("Enter the temperature: \t")
    if temperature:
        temperature = float(temperature)
        temp_deg = "degree" if temperature==1.0 or temperature==-1.0 else "degrees"
        break
    else: 
        print("Wrong temperature. ", end="")

while True:
    scale = input("\nTemperature scale system: \n1. Fahrenheit\n2. Celsius\n")
    if scale in ("1", "2"):
        scale_name = "Fahrenheit" if scale=="1" else "Celsius"
        scale_name_calc = "Fahrenheit" if scale=="2" else "Celsius"

        temperature_calc = (5/9) * (temperature - 32) if scale == "1" else ((9/5)*temperature) + 32
        temp_deg_calc = "degree" if temperature_calc==1.0 or temperature_calc==-1.0 else "degrees"
        break
    else: 
        print("Wrong scale. ", end="")

print(f"\n\t\t\t{temperature} {temp_deg} in {scale_name} is {round(temperature_calc, 3)} {temp_deg_calc} in {scale_name_calc}")
