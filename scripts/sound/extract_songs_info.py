from io import BufferedReader
import struct

song_nums_to_names = {
    # "song0001": "mus_intro",
    # "song0002": "mus_title_fanfare",
    # "song0106": "se_select",
    # "song0107": "se_return",
    # "song0108": "se_menu_cursor_move"
}

song_volumes = {
    'song0001': 120,
    'song0002': 115,
    'song0003': 120,
    'song0004': 108,
    'song0005': 110,
    # Not writing initial volume on track 7
    'song0006': 105,
    'song0007': 108,
    'song0008': 108,
    'song0009': 61,
    'song0010': 115,
    'song0011': 111,
    'song0012': 110,
    'song0013': 127,
    'song0014': 110,
    'song0015': 110,
    'song0016': 110,
    'song0017': 110,
    'song0018': 110,
    'song0019': 105,
    'song0020': 110,
    'song0021': 110,
    'song0022': 110,
    'song0023': 110,
    'song0024': 110,
    'song0025': 110,
    'song0026': 110,
    'song0027': 90,
    'song0028': 115,
    'song0029': 115,
    'song0030': 115,
    'song0031': 115,
    'song0032': 115,
    'song0033': 103,
    'song0034': 117,
    'song0035': 110,
    # Not writing initial volume on track 9
    'song0036': 100,
    'song0037': 120,
    'song0038': 120,
    'song0039': 127,
    'song0040': 127,
    'song0041': 115,
    'song0042': 115,
    'song0043': 115,
    'song0044': 120,
    'song0045': 85,
    'song0046': 92,
    'song0047': 100,
    'song0048': 103,
    'song0049': 118,
    'song0050': 105,
    'song0051': 110,
    'song0052': 105,
    'song0053': 105,
    'song0054': 105,
    'song0102': 100,
    'song0103': 120,
    'song0104': 120,
    'song0105': 120,
    'song0106': 90,
    'song0107': 90,
    'song0108': 90,
    'song0109': 110,
    'song0110': 75,
    'song0111': 120,
    'song0112': 120,
    'song0113': 75,
    'song0114': 100,
    'song0115': 75,
    'song0116': 75,
    'song0117': 100,
    'song0118': 127,
    'song0119': 127,
    'song0120': 127,
    'song0121': 107,
    'song0122': 127,
    'song0123': 127,
    'song0124': 107,
    'song0125': 100,
    'song0126': 110,
    'song0127': 120,
    'song0128': 120,
    'song0129': 120,
    'song0130': 120,
    'song0131': 120,
    'song0132': 110,
    'song0133': 105,
    'song0134': 110,
    'song0135': 120,
    'song0136': 110,
    'song0137': 107,
    'song0138': 127,
    'song0139': 70,
    'song0140': 90,
    'song0141': 120,
    'song0142': 110,
    'song0143': 120,
    'song0144': 120,
    'song0145': 120,
    'song0146': 64,
    'song0147': 120,
    'song0148': 120,
    'song0149': 120,
    'song0150': 120,
    'song0151': 120,
    'song0152': 120,
    'song0153': 120,
    'song0154': 86,
    'song0155': 74,
    'song0156': 120,
    'song0157': 120,
    'song0158': 120,
    'song0159': 120,
    'song0160': 120,
    'song0161': 120,
    'song0162': 114,
    'song0163': 120,
    'song0164': 120,
    'song0166': 89,
    'song0167': 127,
    'song0168': 100,
    'song0169': 90,
    'song0170': 120,
    'song0171': 90,
    'song0172': 90,
    'song0173': 90,
    'song0174': 90,
    'song0175': 88,
    'song0176': 88,
    'song0177': 90,
    'song0178': 55,
    'song0179': 90,
    'song0180': 90,
    'song0181': 90,
    'song0182': 90,
    'song0183': 90,
    'song0184': 90,
    'song0185': 88,
    'song0188': 90,
    'song0189': 90,
    'song0190': 90,
    'song0191': 90,
    'song0192': 90,
    'song0193': 90,
    'song0194': 90,
    'song0195': 90,
    'song0196': 90,
    'song0198': 90,
    'song0199': 90,
    'song0200': 90,
    'song0201': 90,
    'song0202': 100,
    'song0203': 88,
    'song0204': 90,
    'song0205': 90,
    'song0206': 85,
    'song0207': 85,
    'song0208': 85,
    'song0209': 90,
    'song0210': 90,
    'song0211': 90,
    'song0212': 72,
    'song0213': 72,
    'song0214': 72,
    'song0215': 120,
    'song0216': 120,
    'song0217': 120,
    'song0218': 120,
    'song0219': 120,
    'song0220': 120,
    'song0221': 120,
    'song0222': 120,
    'song0223': 120,
    'song0224': 120,
    'song0301': 77,
    'song0302': 77,
    'song0303': 77,
    'song0304': 105,
    'song0305': 110,
    'song0306': 110,
    'song0307': 120,
}

tone_to_vg = {
    '86DB8AC': "voicegroup000",
    '86DBCFC': "voicegroup001",
    '86DBEAC': "voicegroup002",
    '86DC128': "voicegroup003",
    '86DC29C': "voicegroup004",
    '86DC488': "voicegroup005",
    '86DCA88': "voicegroup006",
    '86DD088': "voicegroup007",
}

play_table_addr = 0x086dd760
num_players = 4
song_table_addr = play_table_addr + (num_players * 12)
num_songs = 307

def addr_to_offset(addr):
    if (addr > 0x08000000):
        return addr -  0x08000000
    return addr

def read_u8(rom: BufferedReader):
    return struct.unpack('B', rom.read(1))[0]

def read_u16(rom: BufferedReader):
    return struct.unpack('H', rom.read(2))[0]

def read_u32(rom: BufferedReader):
    return struct.unpack('I', rom.read(4))[0]


def peek_bytes(rom: BufferedReader, num):
    offset = rom.tell()

    peek = []
    for i in range(num):
        peek.append(read_u8(rom))

    rom.seek(offset)
    return peek


def extract_song_compiler_config(data: BufferedReader, name: str):
    block_count = read_u8(data)
    priority = read_u8(data)
    reverb = read_u8(data)
    tone_addr = read_u32(data)
    
    vg = tone_to_vg[hex(tone_addr).split('0x')[1].upper()]
    vg_id = int(vg.replace('voicegroup', ''))

    vol = song_volumes[name]
    real_name = song_nums_to_names[name] if name in song_nums_to_names else name

    return f"""
$(MID_SUBDIR)/{real_name}.s: %.s: %.mid
	$(MID) $< $@ -E -R{"$(STD_REVERB)" if reverb == 128 else reverb} -G{vg_id} {f"-P{priority}" if priority else ""} -V{vol}
    """

def extract_from_song_table(rom: BufferedReader):
    song_addr_to_name = {}
    song_files = []

    with open("new_songs.inc", "w") as f_song_table:
        with open('new_songs.mk', "w") as f_songs_config:
            f_song_table.write("\t.align 2\n")
            f_song_table.write("\t.global gSongTable\n")
            song_table_addr = hex(rom.tell() + 0x08000000).split("0x")[1]
            f_song_table.write(f"gSongTable:\t@ 0x0{song_table_addr.upper()}\n")

            for song_num in range(num_songs):
                song_addr = read_u32(rom)
                ms = read_u16(rom)
                me = read_u16(rom)


                if song_addr not in song_addr_to_name:
                    song_name = f"song{song_num:04d}"
                    song_addr_to_name[song_addr] = song_name

                    curr_offset = rom.tell()

                    rom.seek(addr_to_offset(song_addr))
                    track_count = read_u8(rom)

                    if track_count != 0:
                        f_songs_config.write(extract_song_compiler_config(rom, song_name))
                        song_files.append(f"build/sa2/sound/songs/midi/{song_name}.o(.rodata);")
                    else:
                        song_addr_to_name[song_addr] = "dummy_song_header"

                    rom.seek(curr_offset)
                
                f_song_table.write(f"\tsong {song_addr_to_name[song_addr]}, {ms}, {me}\n")

            if "dummy_song_header" in list(song_addr_to_name.values()):
                f_song_table.write("\n\t.align 2\n")
                f_song_table.write("dummy_song_header:\n")
                f_song_table.write("\t.byte 0, 0, 0, 0\n")
        
    print(song_addr_to_name)
    print("\n".join(song_files))

with open('baserom_sa1.gba', 'rb') as rom:
    rom.seek(addr_to_offset(song_table_addr))
    extract_from_song_table(rom)
