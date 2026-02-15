def reformat_fft_output(input_path, output_path):
    with open(input_path, 'r') as infile:
        content = infile.read()

    # Zamiana separatorów (spacji, tabulatorów, \n) na pojedynczą spację
    import re
    numbers = re.findall(r'-?\d+', content)

    with open(output_path, 'w') as outfile:
        for number in numbers:
            outfile.write(f"{number}\n")

# Przykładowe użycie
input_file = "fft_output.txt"
output_file = "formatted_fft_output.txt"
reformat_fft_output(input_file, output_file)
