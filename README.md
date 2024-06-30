# Sonic Advance (Europe)

This is a work in progress matching decompilation of Sonic Advance

It so far builds the following ROM:
* [**sa1.gba**](https://datomatic.no-intro.org/index.php?page=show_record&s=23&n=0330) `sha1: 	eb00f101af23d728075ac2117e27ecd8a4b4c3e9` (Europe) (En,Ja,Fr,De,Es)


### How do disassemble a ROM

1. Load in Ghidra and analyse
1. Copy out CSV functions list
1. Run script to convert to a config file for gbadisasm
1. Run disassembler with first pass
1. Run a script to read over the assembly and find the areas which are not marked
1. Feed these addresses into the config file and disassemble
1. Keep repeating until no missing functions in the assembly
