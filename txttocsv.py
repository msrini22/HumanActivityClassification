import csv
from csv import reader

def txttocsvgroundtruth (filename):
	with open(filename, 'r+') as in_file:
		stripped = (line.strip() for line in in_file)
		lines = (line.split(",") for line in stripped if line)
		with open('groundtruth.csv', 'w+',newline ='') as out_file:
			writer = csv.writer(out_file)
			writer.writerows(lines)
			

def txttocsvmyo (filename):
	with open(filename, 'r+') as in_file:
		stripped = (line.strip() for line in in_file)
		lines = (line.split(",") for line in stripped if line)
		with open('myo.csv', 'w+',newline ='') as out_file:
			writer = csv.writer(out_file)
			writer.writerows(lines)

lines = ''
filenamegroundtruth = input("Enter Groundtruth Filename to convert to csv : ")
txttocsvgroundtruth(filenamegroundtruth)
filenamemyo = input("Enter Myo Filename to convert to csv : ")
txttocsvmyo(filenamemyo)

startindex =[]
endindex = []

with open('groundtruth.csv', 'r') as in_file:
	with open('myo.csv', 'r') as out_file:
		out = out_file.read()
		out = out.split('\n')
		for idx,row in enumerate(reader(in_file)):
			startindex.append(int(int(row[0]) * (5/3)))
			endindex.append(int(int(row[1]) * (5/3)))
		
		for i in range(len(startindex)):
			for k in range(startindex[i], endindex[i]):
				out[k] += ',1'
			if i + 1 < len(startindex):
				for k in range(endindex[i], startindex[i+1]):
					out[k] += ',0'

		
		print ("Start Indexes ")
		print (startindex)
		print ("End Indexes ")
		print (endindex)

with open('myo.csv', 'w') as out_file:
	out_file.write('\n'.join(out))

		
		