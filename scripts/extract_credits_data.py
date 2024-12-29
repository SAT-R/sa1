rom_start = 0x08000000
#credits_start = 0x086815B4 # US ROM
#credits_end   = 0x08683F74 # US ROM
credits_start = 0x086886B8 # EU ROM
credits_end   = 0x0868B078 # EU ROM

num_entries = int((credits_end - credits_start) / 0x20)

escape_chars = ['\\', '\/', '"']

def get_entry_name(rom):
    # 25 is a fixed size
    # Empty entries contain 25 ' ' characters, others are filled with ' ' at the end.
    # Noticably lines that contain "" have two less ' ' and instead fill space using '\x000'.
    # Maybe it's a small bug in Dimps' / SEGA's conversion tool?
    entry_name = rom.read(25)

    result = "\""

    for char in entry_name:
        if char == 0:
            result += "\\x000"
        else:
            if str(f"{char:c}") in escape_chars:
                result += "\\"
            result += f"{char:c}"
    result += "\""

    return result

def convert_entries(rom, lines):
    i = 0
    while i < num_entries:
        length = rom.read(1)[0]
        unk1   = rom.read(1)[0]
        unk2   = rom.read(1)[0]
        lines.append("    ") # no linebreak!
        entry = ["{",
                 f" { str(length) },",
                 f" { str(unk1) },",
                 f" { str(unk2) },",
                 " ", get_entry_name(rom), ","
                 " {"
                 f" { str(rom.read(2)[1]) }," # skip C-String null-terminator
                 f" { str(rom.read(1)[0]) },"
                 f" { str(rom.read(1)[0]) }"
                 " } "
                 "},\n"]
        for line in entry:
            lines.append(line)
        i += 1

    return lines

with open("baserom.gba", "rb")       as rom,      \
     open("src/data/credits.c", "w") as credits_c:
    rom.seek(credits_start - rom_start)
    
    print("Printing ", num_entries, " entries")

    lines = []
    lines.append("#include \"game/credits.h\"\n")
    lines.append("\n")
    lines.append(f"#define NUM_ENTRIES {num_entries}\n")
    lines.append("\n")
    lines.append("const CreditsString sCreditsEntries[NUM_ENTRIES] = ")
    lines.append("{\n")
    lines = convert_entries(rom, lines)
    lines.append("};\n")

    credits_c.writelines(lines)
