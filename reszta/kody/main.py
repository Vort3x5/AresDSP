samples = []
with open("signalSample.txt") as f:
    for line in f:
        val = float(line.strip())
        fixed = int(val * (2**11))  # 12-bit fixed-point
        samples.append(fixed & 0xFFF)  # mask to 12-bit

with open("samples.mif", "w") as f:
    f.write("WIDTH=12;\n")
    f.write("DEPTH=4096;\n")
    f.write("ADDRESS_RADIX=UNS;\n")
    f.write("DATA_RADIX=UNS;\n")
    f.write("CONTENT BEGIN\n")
    for i, val in enumerate(samples):
        f.write(f"{i} : {val};\n")
    f.write("END;\n")
