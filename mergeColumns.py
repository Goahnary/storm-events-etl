import pandas as pd 

df = pd.read_csv("details.csv")

#code_file = open("stateAbbreviations.csv")
state_region_codes = [line.rstrip() for line in open('stateAbbreviations.csv')]
#state_region_codes = code_file.readlines()

print(len(state_region_codes))

df['STATE_REGION_CODE'] = state_region_codes

state_vs_code = df[["STATE", "STATE_REGION_CODE"]]
print(state_vs_code)

df.to_csv('modified.csv', index=False)

