rom_start = 0x08000000
end_of_code = 0x0809B670
end_of_data = 0x087ff04B

addresses = set()

with open('asm/code.s') as code:
    for line in code.readlines():
        line = line.strip()
        if ".4byte 0x08" in line:
            address = int(line.split("0x0")[1], 16)
            if address >= end_of_code and address < end_of_data:
                addresses.add(address)

addresses_with_size = []
sorted_addresses = sorted(addresses)

def upper_addr(addr):
    return "0x" + hex(addr).split('0x')[1].upper()

def format_memory_addr(addr):
    return "0x0" + hex(addr).split("0x")[1].upper()

def to_var_name(addr):
    without_hex = addr.split("0x")[1]
    return f"gUnknown_{without_hex}"


for i in range(len(sorted_addresses)):
    address = sorted_addresses[i]
    if i + 1 < len(sorted_addresses):
        next_address = sorted_addresses[i + 1]
    else:
        next_address = end_of_data

    addresses_with_size.append((address, format_memory_addr(address), upper_addr(next_address - address)))

summed = 0

with open("data/new_data.s", "w") as data_file:
    data_file.write('	.section .rodata\n')
    data_file.write('\n')
    for raw_addr, addr, size in addresses_with_size:
        summed += int(size, 16)
        var = to_var_name(addr)
        data_file.write(f"""    .global {var}
{var}:
    .incbin "data/baserom_sa1.gba", 0x{f"{(raw_addr - rom_start):08x}".upper()}, {size}

""")

print(hex(summed))
with open("asm/new_code.s", "w") as new_rom:
    existing_code = "".join(open("asm/code.s").readlines())
    for _, addr, __ in addresses_with_size:
        var = to_var_name(addr)
        existing_code = existing_code.replace(addr, to_var_name(addr))
    
    new_rom.write(existing_code)
