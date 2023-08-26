# Sonic Advance (Europe)

### How do disassemble a ROM

1. Load in Ghidra and analyse
1. Copy out CSV functions list
1. Run script to convert to a config file for gbadisasm
1. Run disassembler with first pass
1. Run a script to read over the assembly and find the areas which are not marked
1. Feed these addresses into the config file and disassemble
1. Keep repeating until no missing functions in the assembly
