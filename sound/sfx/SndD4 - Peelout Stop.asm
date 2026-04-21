SonicCD_AB_Header:
	smpsHeaderStartSong	2, 1
	smpsHeaderVoice		SonicCD_AA_Voices
	smpsHeaderTempoSFX	$01
	smpsHeaderChanSFX	$01
	smpsHeaderSFXChannel	cFM5, SonicCD_AB_FM5, $00, $00

SonicCD_AB_FM5:
	smpsStop
	smpsStop	; Unused
	