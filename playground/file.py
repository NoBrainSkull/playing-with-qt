from functools import reduce

pattern = ["color", "icon", "label", "action"]

def read_file(file_path):
    file = open(file_path, "r")
    file_content = file.read()
    file.close()
    file_lines = file_content.split("\n")
    return reduce(build_entry, file_lines, [])

def build_entry(output, line):
    if not line or line.count(" ") < 3: return output

    entry = {}
    word = line.split(" ", 3)

    for i, p in enumerate(pattern): entry[p] = word[i]

    output.append(entry)
    return output
