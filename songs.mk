STD_REVERB = 0

$(MID_BUILDDIR)/%.o: $(MID_SUBDIR)/%.s
	@echo "$(AS) <flags> -I sound -o $@ $<"
	@$(PREPROC) $< "" | $(CPP) $(CPPFLAGS) - | $(AS) $(ASFLAGS) -o $@ -

$(MID_SUBDIR)/se_ring.s: %.s: %.mid
	$(MID2AGB) $< $@ -C $(MIDI_COMMENTS) -E -R$(STD_REVERB) -G4 -P20 -V100

    # Voicegroup (-G) 003 in SA2!
$(MID_SUBDIR)/se_ring_copy.s: %.s: %.mid
	$(MID2AGB) $< $@ -C $(MIDI_COMMENTS) -E -R$(STD_REVERB) -G4 -P20 -V100
