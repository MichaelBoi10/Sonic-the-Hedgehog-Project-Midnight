CasinoMidnight_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     CasinoMidnight_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $02

	smpsHeaderDAC       CasinoMidnight_DAC
	smpsHeaderFM        CasinoMidnight_FM1,	$00, $00
	smpsHeaderFM        CasinoMidnight_FM2,	$00, $12
	smpsHeaderFM        CasinoMidnight_FM3,	$00, $0A
	smpsHeaderFM        CasinoMidnight_FM4,	$00, $15
	smpsHeaderFM        CasinoMidnight_FM5,	$00, $15
	smpsHeaderFM        CasinoMidnight_FM6,	$00, $15
	smpsHeaderPSG       CasinoMidnight_PSG1,	$DC, $00, $00, $00
	smpsHeaderPSG       CasinoMidnight_PSG2,	$DC, $00, $00, $00
	smpsHeaderPSG       CasinoMidnight_PSG3,	$DC, $00, $00, sTone_04

; FM2 Data
CasinoMidnight_FM2:
	smpsSetvoice        $08
	smpsPan             panLeft, $00
	dc.b	nF5, $29, nRst, $01, nE5, $03, nRst
	smpsLoop            $00, $03, CasinoMidnight_FM2
	dc.b	nD5, $2A, nRst, $06
	smpsPan             panCenter, $00

CasinoMidnight_Jump02:
	smpsSetvoice        $01
	smpsCall            CasinoMidnight_Call03
	dc.b	nA4, $12, nG4, nA4, $0C
	smpsModSet          $14, $01, $0C, $05
	dc.b	nB4, $0B, smpsNoAttack, nBb4, $09, smpsNoAttack, nB4, $1B, nRst, $01
	smpsModSet          $01, $01, $00, $00
	smpsCall            CasinoMidnight_Call03
	dc.b	nA4, $12, nG4, nF4, $0C
	smpsModSet          $14, $01, $0C, $05
	dc.b	nG4, $0B, smpsNoAttack, nFs4, $09, smpsNoAttack, nG4, $1B, nRst, $01
	smpsModSet          $01, $01, $00, $00
	smpsSetvoice        $04
	smpsCall            CasinoMidnight_Call04
	dc.b	nC5, $06, smpsNoAttack, nC5, $03, nRst, nB4, nRst, nC5, nRst, nB4, nRst
	dc.b	nC5, nRst, nB4, nRst, nC5, nRst, nD5, nRst, nF5, $11, nRst, $01
	dc.b	nE5, $18, smpsNoAttack, $06, smpsNoAttack, $30, nRst, $30, nRst, $30
	smpsCall            CasinoMidnight_Call04
	dc.b	nG5, $0C, nC6, $03, nRst, nB5, nRst, nC6, nRst, nD6, $09, nE6
	dc.b	$06, nRst, $03, nB5, $06, smpsNoAttack, $30, smpsNoAttack, $30, nRst, $30
	smpsAlterPitch      $D8
	smpsAlterVol        $F8
	smpsSetvoice        $06
	smpsModSet          $01, $03, $0F, $8F
	dc.b	nG4, $30, smpsNoAttack, $30
	smpsModSet          $01, $01, $00, $00
	smpsSetvoice        $05
	dc.b	smpsNoAttack, nA5, $30, smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $30
	smpsSetvoice        $06
	smpsModSet          $01, $02, $FC, $C5
	dc.b	smpsNoAttack, nA5, $30, smpsNoAttack, $30
	smpsModSet          $01, $01, $00, $00
	smpsAlterPitch      $28
	smpsAlterVol        $08
	smpsSetvoice        $01
	smpsCall            CasinoMidnight_Call03
	dc.b	nA4, $12, nG4, nA4, $0C
	smpsModSet          $14, $01, $0C, $05
	dc.b	nB4, $0B, smpsNoAttack, nBb4, $09, smpsNoAttack, nB4, $1B, nRst, $01
	smpsModSet          $01, $01, $00, $00
	smpsCall            CasinoMidnight_Call03
	dc.b	nA4, $12, nG4, nF4, $0C
	smpsModSet          $14, $01, $0C, $05
	dc.b	nG4, $0B, smpsNoAttack, nFs4, $09, smpsNoAttack, nG4, $1B, nRst, $01
	smpsModSet          $01, $01, $00, $00
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsCall            CasinoMidnight_Call05
	dc.b	nD5, $03, nRst, $18, nRst, $03
	smpsCall            CasinoMidnight_Call05
	dc.b	nD5, $03, nRst, $18, nRst, $03
	smpsAlterVol        $06
	smpsJump            CasinoMidnight_Jump02

CasinoMidnight_Call03:
	dc.b	nG4, $12, nA4, nF4, $0C, nG4, $12, nC5, nB4, $0C
	smpsReturn

CasinoMidnight_Call04:
	dc.b	nG5, $03, nRst, $09, nA5, $03, nRst, $09, nE5, nF5, $03, nRst
	dc.b	$06, nG5, $09, nRst, $03, nC6, nRst, nB5, $09, nG5, $06, nRst
	dc.b	$03, nF5, nRst, nE5, nRst, nF5, nRst, nG5, nRst, $09, nF5, $03
	dc.b	nRst, $09, nE5, nC5, $03, nRst, $06
	smpsReturn

CasinoMidnight_Call05:
	smpsAlterVol        $FC
	dc.b	nF5, $03, nRst, $09
	smpsAlterVol        $04
	dc.b	nF5, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	nE5, $08, nRst, $01
	smpsAlterVol        $06
	dc.b	nF5, $03, nRst, $06
	smpsAlterVol        $FA
	dc.b	nF5, $08, nRst, $01
	smpsAlterVol        $06
	dc.b	nRst, $03, nF5, $03, nRst, $03, nE5, $08, nRst, $01, nF5, $08
	dc.b	nRst, $01, nD5, $05, nRst, $01
	smpsAlterVol        $FA
	dc.b	nE5, $05, nRst, $01
	smpsAlterVol        $06
	dc.b	nD5, $05, nRst, $01, nF5, $03, nRst, $09
	smpsAlterVol        $FA
	dc.b	nF5, $03, nRst, $06
	smpsAlterVol        $06
	dc.b	nF5, $03, nE5, $06
	smpsAlterVol        $FA
	dc.b	nF5, $03, nRst, $09, nG5, $0B, nRst, $01
	smpsAlterVol        $06
	dc.b	nF5, $03, nRst, $03, nE5, $03, nRst, $03
	smpsReturn

; FM3 Data
CasinoMidnight_FM3:
	smpsSetvoice        $0A
	dc.b	nD5, $03, $03, $03, $03
	smpsAlterVol        $FA
	dc.b	nD5, $03
	smpsAlterVol        $06
	dc.b	nD5, $03, $03, $03
	smpsLoop            $00, $08, CasinoMidnight_FM3

CasinoMidnight_Jump01:
	smpsSetvoice        $00

CasinoMidnight_Loop23:
	smpsCall            CasinoMidnight_Call08
	smpsLoop            $00, $08, CasinoMidnight_Loop23
	smpsCall            CasinoMidnight_Call09
	smpsCall            CasinoMidnight_Call0A
	smpsCall            CasinoMidnight_Call09
	smpsCall            CasinoMidnight_Call0B

CasinoMidnight_Loop24:
	smpsCall            CasinoMidnight_Call0C
	smpsLoop            $00, $03, CasinoMidnight_Loop24
	smpsCall            CasinoMidnight_Call0D
	smpsCall            CasinoMidnight_Call09
	smpsCall            CasinoMidnight_Call0A
	smpsCall            CasinoMidnight_Call09
	smpsCall            CasinoMidnight_Call0B

CasinoMidnight_Loop25:
	smpsCall            CasinoMidnight_Call0C
	smpsLoop            $00, $03, CasinoMidnight_Loop25
	dc.b	nRst, $30

CasinoMidnight_Loop26:
	smpsCall            CasinoMidnight_Call09
	smpsCall            CasinoMidnight_Call0A
	smpsLoop            $00, $03, CasinoMidnight_Loop26
	smpsCall            CasinoMidnight_Call09
	dc.b	nF2, $06, nRst, $18, nRst, $12

CasinoMidnight_Loop27:
	smpsCall            CasinoMidnight_Call08
	smpsLoop            $00, $08, CasinoMidnight_Loop27

CasinoMidnight_Loop28:
	smpsCall            CasinoMidnight_Call0E
	smpsLoop            $00, $03, CasinoMidnight_Loop28
	dc.b	nG2, $06, nG2, nD3, $03, nG3, nRst, nF3, nRst, nCs3, nRst, nBb2
	dc.b	$01, nCs3, $02, nC3, $06, nBb2

CasinoMidnight_Loop29:
	smpsCall            CasinoMidnight_Call0E
	smpsLoop            $00, $03, CasinoMidnight_Loop29
	dc.b	nG2, $06, nRst, $18, nRst, $12
	smpsJump            CasinoMidnight_Jump01

CasinoMidnight_Call08:
	dc.b	nF2, $03, nG2, nRst, nF2, nG2, nRst, nF2, nG2, nRst, nF2, nG2
	dc.b	nRst, nF2, $06, nRst
	smpsReturn

CasinoMidnight_Call09:
	dc.b	nF2, $06, nC3, $03, nRst, nC3, $06, nB2, $03, nC3, $06, nB2
	dc.b	$03, nC3, nB2, nC3, $06, nD3
	smpsReturn

CasinoMidnight_Call0A:
	dc.b	nF2, $06, nC3, $03, nRst, nC3, $06, nB2, $03, nC3, $06, nB2
	dc.b	$03, nC3, nB2, nC3, nB2, nG2, $06
	smpsReturn

CasinoMidnight_Call0B:
	dc.b	nF2, $06, nC3, $03, nRst, nC3, $06, nB2, $03, nC3, $06, nB2
	dc.b	$03, nC3, nB2, nC3, nB2, nA2, $06
	smpsReturn

CasinoMidnight_Call0C:
	dc.b	nG2, $06, nC3, $03, nRst, nC3, $06, nB2, $03, nC3, $06, nB2
	dc.b	$03, nC3, nB2, nC3, nD3, nE3, $06
	smpsReturn

CasinoMidnight_Call0D:
	dc.b	nG2, $06, nC3, $03, nRst, nC3, $06, nB2, $03, nC3, $06, nB2
	dc.b	$03, nC3, nB2, nC3, nB2, nG2, $06
	smpsReturn

CasinoMidnight_Call0E:
	dc.b	nG2, $06, $03, nBb2, $06, $03, nC3, $09, $03, nCs3, $06, nC3
	dc.b	nBb2
	smpsReturn

; FM4 Data
CasinoMidnight_FM4:
	smpsSetvoice        $08
	smpsAlterNote       $FC

CasinoMidnight_Loop17:
	dc.b	nG4, $2A, nRst, $06
	smpsLoop            $00, $04, CasinoMidnight_Loop17
	smpsAlterVol        $FC

CasinoMidnight_Loop18:
	dc.b	nF5, $29, nRst, $01, nE5, $03, nRst
	smpsLoop            $00, $03, CasinoMidnight_Loop18
	dc.b	nD5, $29, nRst, $01, nE5, $03, nRst

CasinoMidnight_Loop19:
	dc.b	nF5, $29, nRst, $01, nE5, $03, nRst
	smpsLoop            $00, $03, CasinoMidnight_Loop19
	dc.b	nD5, $29, nRst, $01, nB4, $03, nRst

CasinoMidnight_Loop1A:
	dc.b	nC5, $03, nRst, $18, nRst, $0F, nB4, $03, nRst
	smpsLoop            $00, $03, CasinoMidnight_Loop1A
	dc.b	nC5, $03, nRst, $18, nRst, $0F, nC5, $03, nRst, nB4, $0C, smpsNoAttack
	dc.b	$24, smpsNoAttack, $2F, nRst, $01, nA4, $11, nRst, $01
	smpsAlterNote       $00
	dc.b	nB4, $12

CasinoMidnight_Loop1B:
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $03
	smpsLoop            $00, $06, CasinoMidnight_Loop1B
	dc.b	nRst, $12
	smpsAlterVol        $EE
	smpsAlterNote       $FC
	dc.b	nB4, $03, nRst

CasinoMidnight_Loop1C:
	dc.b	nC5, $03, nRst, $18, nRst, $0F, nB4, $03, nRst
	smpsLoop            $00, $03, CasinoMidnight_Loop1C
	dc.b	nC5, $03, nRst, $18, nRst, $0F, nC5, $03, nRst, nB4, $0C, smpsNoAttack
	dc.b	$24, smpsNoAttack, $2F, nRst, $01, nA4, $11, nRst, $01
	smpsAlterNote       $00
	dc.b	nB4, $12

CasinoMidnight_Loop1D:
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $03
	smpsLoop            $00, $06, CasinoMidnight_Loop1D
	dc.b	nRst, $18
	smpsAlterVol        $EE
	smpsAlterVol        $04
	smpsSetvoice        $07
	smpsNoteFill        $02
	smpsCall            CasinoMidnight_Call06
	dc.b	nBb3, $03, nRst, $09, nBb3, $03
	smpsNoteFill        $00
	smpsAlterVol        $FA
	dc.b	nBb3, $06
	smpsAlterVol        $06
	smpsNoteFill        $02
	smpsCall            CasinoMidnight_Call06
	dc.b	nBb3, $03, nG4, $03, nRst, $0F
	smpsCall            CasinoMidnight_Call06
	dc.b	nBb3, $03, nG3, $03, nRst, $0F
	smpsCall            CasinoMidnight_Call06
	smpsAlterVol        $FA
	dc.b	nEb4, $03, nRst, $03
	smpsAlterVol        $06
	dc.b	nEb4, $03, nRst, $03, nF4, $03
	smpsNoteFill        $00
	smpsAlterVol        $FA
	dc.b	nG4, $03, nRst, $03
	smpsAlterVol        $06
	smpsNoteFill        $02
	smpsCall            CasinoMidnight_Call06
	dc.b	nBb3, $03, nRst, $09, nBb3, $03
	smpsNoteFill        $00
	smpsAlterVol        $FA
	dc.b	nBb3, $06
	smpsAlterVol        $06
	smpsNoteFill        $02
	smpsCall            CasinoMidnight_Call06
	dc.b	nBb3, $03, nG4, nRst, $0F
	smpsCall            CasinoMidnight_Call06
	dc.b	nBb3, $03, nG3, nRst, $0F, nA3, $03, nF4, nC4, nBb4, nAb4, nEb4
	dc.b	nF4, nC4
	smpsAlterVol        $FC
	smpsNoteFill        $03
	dc.b	nEb4, $04, nF4, nAb4, nBb4, nC5, nEb5
	smpsAlterVol        $04
	smpsNoteFill        $02
	smpsAlterPitch      $05

CasinoMidnight_Loop1F:
	smpsCall            CasinoMidnight_Call07
	smpsAlterVol        $FD
	dc.b	nC5, $03

CasinoMidnight_Loop1E:
	smpsAlterVol        $04
	dc.b	nC5, $03
	smpsLoop            $00, $05, CasinoMidnight_Loop1E
	smpsAlterVol        $EC
	smpsAlterVol        $03
	smpsLoop            $01, $07, CasinoMidnight_Loop1F
	smpsCall            CasinoMidnight_Call07
	smpsAlterVol        $FD
	dc.b	nC5, nRst, $03
	smpsAlterVol        $03
	smpsAlterPitch      $FB
	smpsAlterVol        $FC
	smpsAlterNote       $FC
	smpsSetvoice        $08
	dc.b	nRst, $06, nD5, $06
	smpsNoteFill        $00

CasinoMidnight_Loop20:
	smpsModSet          $05, $01, $E4, $55
	dc.b	nG5, $0B, nRst, $01
	smpsAlterVol        $0A
	smpsLoop            $00, $08, CasinoMidnight_Loop20
	smpsAlterVol        $B0
	smpsAlterVol        $04
	smpsAlterNote       $00
	smpsModSet          $01, $01, $00, $00

CasinoMidnight_Loop21:
	dc.b	nRst, $30
	smpsLoop            $00, $05, CasinoMidnight_Loop21
	dc.b	nRst, $18
	smpsSetvoice        $03

CasinoMidnight_Loop22:
	dc.b	nG5, $01, nF5, $02, nE5, $01, nD5, $02
	smpsAlterVol        $06
	smpsLoop            $00, $03, CasinoMidnight_Loop22
	dc.b	nG5, $01, nF5, $02, nE5, $02, nRst, $01
	smpsAlterVol        $EE
	smpsSetvoice        $08
	smpsAlterVol        $FC
	smpsAlterNote       $FC
	smpsJump            CasinoMidnight_Loop18

CasinoMidnight_Call06:
	dc.b	nA3, $03, nF4, nC4, nBb4, nAb4, nEb4, nF4, nC4, nEb4
	smpsReturn

CasinoMidnight_Call07:
	smpsAlterVol        $FE
	dc.b	nC5, $03
	smpsAlterVol        $02
	dc.b	nC5, nC5, nC5
	smpsAlterVol        $FD
	dc.b	nC5, nRst, $03
	smpsAlterVol        $01
	dc.b	nC5, $03
	smpsAlterVol        $02
	dc.b	nC5, nC5, nC5
	smpsReturn

; FM5 Data
CasinoMidnight_FM5:
	smpsSetvoice        $08
	smpsPan             panRight, $00
	smpsAlterVol        $FC
	smpsAlterNote       $03

CasinoMidnight_Loop0B:
	dc.b	nC5, $29, nRst, $01, nE5, $03, nRst
	smpsLoop            $00, $03, CasinoMidnight_Loop0B
	dc.b	nC5, $2A, nRst, $06

CasinoMidnight_Loop0C:
	dc.b	nC5, $29, nRst, $01, nE5, $03, nRst
	smpsLoop            $00, $03, CasinoMidnight_Loop0C
	dc.b	nC5, $29, nRst, $01, nE5, $03, nRst

CasinoMidnight_Loop0D:
	dc.b	nC5, $29, nRst, $01, nE5, $03, nRst
	smpsLoop            $00, $03, CasinoMidnight_Loop0D
	dc.b	nC5, $29, nRst, $01, nE4, $03, nRst

CasinoMidnight_Loop0E:
	dc.b	nF4, $03, nRst, $18, nRst, $0F, nE4, $03, nRst
	smpsLoop            $00, $03, CasinoMidnight_Loop0E
	dc.b	nF4, $03, nRst, $18, nRst, $0F, nF4, $03, nRst, nE4, $0C, smpsNoAttack
	dc.b	$24, smpsNoAttack, $2F, nRst, $01, nD4, $11, nRst, $01
	smpsAlterNote       $00
	dc.b	nE4, $12

CasinoMidnight_Loop0F:
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $03
	smpsLoop            $00, $06, CasinoMidnight_Loop0F
	dc.b	nRst, $12
	smpsAlterVol        $EE
	smpsAlterNote       $03
	dc.b	nE4, $03, nRst

CasinoMidnight_Loop10:
	dc.b	nF4, $03, nRst, $18, nRst, $0F, nE4, $03, nRst
	smpsLoop            $00, $03, CasinoMidnight_Loop10
	dc.b	nF4, $03, nRst, $18, nRst, $0F, nF4, $03, nRst, nE4, $0C, smpsNoAttack
	dc.b	$24, smpsNoAttack, $2F, nRst, $01, nD4, $11, nRst, $01
	smpsAlterNote       $00
	dc.b	nE4, $12

CasinoMidnight_Loop11:
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $03
	smpsLoop            $00, $06, CasinoMidnight_Loop11
	dc.b	nRst, $18
	smpsAlterVol        $EE
	smpsAlterVol        $04
	dc.b	nRst, $07
	smpsAlterVol        $10
	smpsSetvoice        $07
	smpsNoteFill        $02
	smpsCall            CasinoMidnight_Call06
	dc.b	nBb3, $03, nRst, $09, nBb3, $03
	smpsNoteFill        $00
	smpsAlterVol        $FA
	dc.b	nBb3, $06
	smpsAlterVol        $06
	smpsNoteFill        $02
	smpsCall            CasinoMidnight_Call06
	dc.b	nBb3, $03, nG4, $03, nRst, $0F
	smpsCall            CasinoMidnight_Call06
	dc.b	nBb3, $03, nG3, $03, nRst, $0F
	smpsCall            CasinoMidnight_Call06
	smpsAlterVol        $FA
	dc.b	nEb4, $03, nRst, $03
	smpsAlterVol        $06
	dc.b	nEb4, $03, nRst, $03, nF4, $03
	smpsNoteFill        $00
	smpsAlterVol        $FA
	dc.b	nG4, $03
	smpsAlterVol        $06
	smpsNoteFill        $02
	smpsCall            CasinoMidnight_Call06
	dc.b	nBb3, $03, nRst, $09, nBb3, $03
	smpsNoteFill        $00
	smpsAlterVol        $FA
	dc.b	nBb3, $06
	smpsAlterVol        $06
	smpsNoteFill        $02
	smpsCall            CasinoMidnight_Call06
	dc.b	nBb3, $03, nG4, nRst, $0F
	smpsCall            CasinoMidnight_Call06
	dc.b	nBb3, $03, nG3, nRst, $0F, nA3, $03, nF4, nC4, nBb4, nAb4, nEb4
	dc.b	nF4, $02
	smpsAlterVol        $F0
	smpsNoteFill        $03
	dc.b	nBb3, $04, nC4, nEb4, nF4, nG4, nBb4
	smpsNoteFill        $02

CasinoMidnight_Loop13:
	smpsCall            CasinoMidnight_Call07
	smpsAlterVol        $FD
	dc.b	nC5, $03

CasinoMidnight_Loop12:
	smpsAlterVol        $04
	dc.b	nC5, $03
	smpsLoop            $00, $05, CasinoMidnight_Loop12
	smpsAlterVol        $EC
	smpsAlterVol        $03
	smpsLoop            $01, $07, CasinoMidnight_Loop13
	smpsCall            CasinoMidnight_Call07
	smpsAlterVol        $FD
	dc.b	nC5, nRst, $03
	smpsAlterVol        $03
	smpsAlterVol        $FC
	smpsAlterNote       $03
	smpsSetvoice        $08
	dc.b	nRst, $06, nC5, $06
	smpsNoteFill        $00

CasinoMidnight_Loop14:
	smpsModSet          $04, $01, $E4, $55
	dc.b	nD5, $0B, nRst, $01
	smpsAlterVol        $0A
	smpsLoop            $00, $08, CasinoMidnight_Loop14
	smpsAlterVol        $B0
	smpsAlterVol        $04
	smpsAlterNote       $00
	smpsModSet          $01, $01, $00, $00

CasinoMidnight_Loop15:
	dc.b	nRst, $30
	smpsLoop            $00, $05, CasinoMidnight_Loop15
	dc.b	nRst, $18
	smpsSetvoice        $03
	dc.b	nRst, $09
	smpsAlterVol        $10

CasinoMidnight_Loop16:
	dc.b	nG5, $02, nF5, $01, nE5, $02, nD5, $01
	smpsAlterVol        $06
	smpsLoop            $00, $02, CasinoMidnight_Loop16
	smpsAlterVol        $06
	dc.b	nG5, $02, nF5, $01
	smpsAlterVol        $EE
	smpsAlterVol        $F0
	smpsSetvoice        $08
	smpsPan             panRight, $00
	smpsAlterVol        $FC
	smpsAlterNote       $03
	smpsJump            CasinoMidnight_Loop0C

; FM6 Data
CasinoMidnight_FM6:
	dc.b	nRst, $07
	smpsAlterVol        $04

CasinoMidnight_Loop0A:
	smpsSetvoice        $08
	smpsPan             panRight, $00
	dc.b	nF5, $29, nRst, $01, nE5, $03, nRst
	smpsLoop            $00, $03, CasinoMidnight_Loop0A
	dc.b	nD5, $2A, nRst, $04
	smpsPan             panLeft, $00

CasinoMidnight_Jump00:
	smpsSetvoice        $01
	smpsModSet          $04, $01, $1A, $02
	smpsCall            CasinoMidnight_Call03
	dc.b	nA4, $12, nG4, nA4, $0C
	smpsModSet          $14, $01, $0C, $05
	dc.b	nB4, $0B, smpsNoAttack, nBb4, $09, smpsNoAttack, nB4, $1B, nRst, $01
	smpsModSet          $04, $01, $1A, $02
	smpsCall            CasinoMidnight_Call03
	dc.b	nA4, $12, nG4, nF4, $0C
	smpsModSet          $14, $01, $0C, $05
	dc.b	nG4, $0B, smpsNoAttack, nFs4, $09, smpsNoAttack, nG4, $1B, nRst, $01
	smpsModSet          $01, $01, $00, $00
	smpsSetvoice        $04
	smpsCall            CasinoMidnight_Call04
	dc.b	nC5, $06, smpsNoAttack, nC5, $03, nRst, nB4, nRst, nC5, nRst, nB4, nRst
	dc.b	nC5, nRst, nB4, nRst, nC5, nRst, nD5, nRst, nF5, $11, nRst, $01
	dc.b	nE5, $18, smpsNoAttack, $06, smpsNoAttack, $30, nRst, $30, nRst, $30
	smpsCall            CasinoMidnight_Call04
	dc.b	nG5, $0C, nC6, $03, nRst, nB5, nRst, nC6, nRst, nD6, $09, nE6
	dc.b	$06, nRst, $03, nB5, $06, smpsNoAttack, $30, smpsNoAttack, $30, nRst, $30
	smpsAlterPitch      $D8
	smpsAlterVol        $F8
	smpsSetvoice        $06
	smpsModSet          $01, $03, $0F, $8F
	dc.b	nG4, $30, smpsNoAttack, $30
	smpsModSet          $01, $01, $00, $00
	smpsSetvoice        $05
	dc.b	smpsNoAttack, nA5, $30, smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $30
	smpsSetvoice        $06
	smpsModSet          $01, $02, $FC, $C5
	dc.b	smpsNoAttack, nA5, $30, smpsNoAttack, $30
	smpsModSet          $01, $01, $00, $00
	smpsAlterPitch      $28
	smpsAlterVol        $08
	smpsSetvoice        $01
	smpsModSet          $04, $01, $1A, $02
	smpsCall            CasinoMidnight_Call03
	dc.b	nA4, $12, nG4, nA4, $0C
	smpsModSet          $14, $01, $0C, $05
	dc.b	nB4, $0B, smpsNoAttack, nBb4, $09, smpsNoAttack, nB4, $1B, nRst, $01
	smpsModSet          $04, $01, $1A, $02
	smpsCall            CasinoMidnight_Call03
	dc.b	nA4, $12, nG4, nF4, $0C
	smpsModSet          $14, $01, $0C, $05
	dc.b	nG4, $0B, smpsNoAttack, nFs4, $09, smpsNoAttack, nG4, $1B, nRst, $01
	smpsModSet          $01, $01, $00, $00
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsCall            CasinoMidnight_Call05
	dc.b	nD5, $03, nRst, $18, nRst, $03
	smpsCall            CasinoMidnight_Call05
	dc.b	nD5, $03, nRst, $18, nRst, $03
	smpsAlterVol        $06
	smpsNoteFill        $00
	smpsJump            CasinoMidnight_Jump00

; PSG1 Data
CasinoMidnight_PSG1:
	dc.b	nRst, $30, nRst, nRst, nRst

CasinoMidnight_Loop37:
	smpsPSGvoice        sTone_14
	dc.b	nRst, $30, nRst, $0F
	smpsCall            CasinoMidnight_Call0F

CasinoMidnight_Loop36:
	dc.b	nC6, $02, nF6, $01, nE6, $02, nC6, $01, nF6, $02, nE6, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0A, CasinoMidnight_Loop36
	dc.b	nRst, $03
	smpsPSGAlterVol     $F6
	smpsLoop            $01, $02, CasinoMidnight_Loop37
	smpsPSGAlterVol     $03
	smpsPSGAlterVol     $FE
	smpsPSGvoice        sTone_15
	smpsModSet          $30, $01, $01, $04
	dc.b	nE5, $30, smpsNoAttack, $30, smpsNoAttack, $30
	smpsPSGvoice        sTone_17
	smpsModSet          $01, $01, $01, $04
	dc.b	nE5, $30
	smpsPSGvoice        sTone_15
	smpsModSet          $30, $01, $01, $04
	dc.b	nD5, $30, smpsNoAttack, $30, smpsNoAttack, $30
	smpsPSGvoice        sTone_17
	smpsModSet          $01, $01, $01, $04
	dc.b	nD5, $30
	smpsPSGvoice        sTone_15
	smpsModSet          $30, $01, $01, $04
	dc.b	nE5, $30, smpsNoAttack, $30, smpsNoAttack, $30
	smpsPSGvoice        sTone_17
	smpsModSet          $01, $01, $01, $04
	dc.b	nE5, $30
	smpsPSGvoice        sTone_15
	smpsModSet          $30, $01, $01, $04
	dc.b	nD5, $30, smpsNoAttack, $30
	smpsPSGvoice        sTone_17
	smpsModSet          $01, $01, $01, $04
	dc.b	nD5, $30, nRst, $30
	smpsModSet          $01, $01, $00, $00
	smpsPSGAlterVol     $02
	smpsPSGAlterVol     $FD

CasinoMidnight_Loop38:
	dc.b	nRst, $30
	smpsLoop            $00, $08, CasinoMidnight_Loop38

CasinoMidnight_Loop3A:
	smpsPSGvoice        sTone_14
	dc.b	nRst, $30, nRst, $0F
	smpsCall            CasinoMidnight_Call0F

CasinoMidnight_Loop39:
	dc.b	nC6, $02, nF6, $01, nE6, $02, nC6, $01, nF6, $02, nE6, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0A, CasinoMidnight_Loop39
	dc.b	nRst, $03
	smpsPSGAlterVol     $F6
	smpsLoop            $01, $02, CasinoMidnight_Loop3A

CasinoMidnight_Loop3B:
	dc.b	nRst, $30
	smpsLoop            $00, $08, CasinoMidnight_Loop3B
	smpsJump            CasinoMidnight_Loop37

CasinoMidnight_Call0F:
	dc.b	nC6, $02, nG5, $01, nC6, $02, nG5, $01, nC5, $02, nG5, $01
	dc.b	nC5, $02, nG4, $01, nC5, $02, nG4, $01, nC4, $02, nG4, $01
	dc.b	nC4, $02, nG3, $01, nC4, $02, nG3, $01, nC4, $02, nG4, $01
	dc.b	nC5, $02, nG4, $01, nC5, $02, nG4, $01, nC5, $02, nG5, $01
	smpsReturn

; PSG2 Data
CasinoMidnight_PSG2:
	dc.b	nRst, $30, nRst, nRst, nRst

CasinoMidnight_Jump04:
	dc.b	nRst, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	smpsPSGvoice        sTone_14
	dc.b	nRst, $30, nRst, $0F
	smpsCall            CasinoMidnight_Call0F

CasinoMidnight_Loop30:
	dc.b	nC6, $02, nF6, $01, nE6, $02, nC6, $01, nF6, $02, nE6, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0A, CasinoMidnight_Loop30
	dc.b	nRst, $03
	smpsPSGAlterVol     $F6
	dc.b	nRst, $30, nRst, $0F
	smpsCall            CasinoMidnight_Call0F

CasinoMidnight_Loop31:
	dc.b	nC6, $02, nF6, $01, nE6, $02, nC6, $01, nF6, $02, nE6, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $09, CasinoMidnight_Loop31
	dc.b	nC6, $02, nF6, $01
	smpsPSGAlterVol     $F7
	smpsPSGAlterVol     $FE
	smpsPSGAlterVol     $03
	smpsPSGAlterVol     $FE
	smpsPSGvoice        sTone_15
	smpsModSet          $36, $01, $01, $05
	dc.b	nA4, $30, smpsNoAttack, $30, smpsNoAttack, $30
	smpsPSGvoice        sTone_17
	smpsModSet          $01, $01, $01, $05
	dc.b	nA4, $30
	smpsPSGvoice        sTone_15
	smpsModSet          $36, $01, $01, $05
	dc.b	nG4, $30, smpsNoAttack, $30, smpsNoAttack, $30
	smpsPSGvoice        sTone_17
	smpsModSet          $01, $01, $01, $05
	dc.b	nG4, $30
	smpsPSGvoice        sTone_15
	smpsModSet          $36, $01, $01, $05
	dc.b	nA4, $30, smpsNoAttack, $30, smpsNoAttack, $30
	smpsPSGvoice        sTone_17
	smpsModSet          $01, $01, $01, $05
	dc.b	nA4, $30
	smpsPSGvoice        sTone_15
	smpsModSet          $36, $01, $01, $05
	dc.b	nG4, $30, smpsNoAttack, $30
	smpsPSGvoice        sTone_17
	smpsModSet          $01, $01, $01, $05
	dc.b	nG4, $30, nRst, $30
	smpsModSet          $01, $01, $00, $00
	smpsPSGAlterVol     $02
	smpsPSGAlterVol     $FD
	dc.b	nRst, $09
	smpsPSGAlterVol     $02

CasinoMidnight_Loop32:
	dc.b	nRst, $30
	smpsLoop            $00, $08, CasinoMidnight_Loop32
	smpsPSGvoice        sTone_14
	dc.b	nRst, $30, nRst, $0F
	smpsCall            CasinoMidnight_Call0F

CasinoMidnight_Loop33:
	dc.b	nC6, $02, nF6, $01, nE6, $02, nC6, $01, nF6, $02, nE6, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0A, CasinoMidnight_Loop33
	dc.b	nRst, $03
	smpsPSGAlterVol     $F6
	dc.b	nRst, $30, nRst, $0F
	smpsCall            CasinoMidnight_Call0F

CasinoMidnight_Loop34:
	dc.b	nC6, $02, nF6, $01, nE6, $02, nC6, $01, nF6, $02, nE6, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $09, CasinoMidnight_Loop34
	dc.b	nC6, $02, nF6, $01
	smpsPSGAlterVol     $F7
	smpsPSGAlterVol     $FE

CasinoMidnight_Loop35:
	dc.b	nRst, $30
	smpsLoop            $00, $08, CasinoMidnight_Loop35
	smpsJump            CasinoMidnight_Jump04

; PSG3 Data
CasinoMidnight_PSG3:
	dc.b	nRst, $30, nRst, nRst, nRst

CasinoMidnight_Jump03:
	dc.b	nRst, $0B
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	smpsPSGvoice        sTone_14
	smpsPan             panRight, $00
	dc.b	nRst, $30, nRst, $0F
	smpsCall            CasinoMidnight_Call0F

CasinoMidnight_Loop2A:
	dc.b	nC6, $02, nF6, $01, nE6, $02, nC6, $01, nF6, $02, nE6, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0A, CasinoMidnight_Loop2A
	dc.b	nRst, $03
	smpsPSGAlterVol     $F6
	dc.b	nRst, $30, nRst, $0F
	smpsCall            CasinoMidnight_Call0F

CasinoMidnight_Loop2B:
	dc.b	nC6, $02, nF6, $01, nE6, $02, nC6, $01, nF6, $02, nE6, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, CasinoMidnight_Loop2B
	dc.b	nC6, $02, nF6, $01, nE6, $02, nC6, $01, nF6, $02, nE6, $02
	smpsPSGAlterVol     $F8
	smpsPSGAlterVol     $FD
	smpsPSGAlterVol     $03
	smpsPSGAlterVol     $FE
	smpsPSGvoice        sTone_15
	smpsModSet          $3C, $02, $01, $05
	dc.b	nF4, $30, smpsNoAttack, $30, smpsNoAttack, $30
	smpsPSGvoice        sTone_17
	smpsModSet          $01, $02, $01, $05
	dc.b	nF4, $30
	smpsPSGvoice        sTone_15
	smpsModSet          $3C, $02, $01, $05
	dc.b	nE4, $30, smpsNoAttack, $30, smpsNoAttack, $30
	smpsPSGvoice        sTone_17
	smpsModSet          $01, $02, $01, $05
	dc.b	nE4, $30
	smpsPSGvoice        sTone_15
	smpsModSet          $3C, $02, $01, $05
	dc.b	nF4, $30, smpsNoAttack, $30, smpsNoAttack, $30
	smpsPSGvoice        sTone_17
	smpsModSet          $01, $02, $01, $05
	dc.b	nF4, $30
	smpsPSGvoice        sTone_15
	smpsModSet          $3C, $02, $01, $05
	dc.b	nE4, $30, smpsNoAttack, $30
	smpsPSGvoice        sTone_17
	smpsModSet          $01, $02, $01, $05
	dc.b	nE4, $30, nRst, $30
	smpsModSet          $01, $01, $00, $00
	smpsPSGAlterVol     $02
	smpsPSGAlterVol     $FD

CasinoMidnight_Loop2C:
	dc.b	nRst, $30
	smpsLoop            $00, $08, CasinoMidnight_Loop2C
	dc.b	nRst, $0B
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	smpsPSGvoice        sTone_14
	smpsPan             panRight, $00
	dc.b	nRst, $30, nRst, $0F
	smpsCall            CasinoMidnight_Call0F

CasinoMidnight_Loop2D:
	dc.b	nC6, $02, nF6, $01, nE6, $02, nC6, $01, nF6, $02, nE6, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0A, CasinoMidnight_Loop2D
	dc.b	nRst, $03
	smpsPSGAlterVol     $F6
	dc.b	nRst, $30, nRst, $0F
	smpsCall            CasinoMidnight_Call0F

CasinoMidnight_Loop2E:
	dc.b	nC6, $02, nF6, $01, nE6, $02, nC6, $01, nF6, $02, nE6, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, CasinoMidnight_Loop2E
	dc.b	nC6, $02, nF6, $01, nE6, $02, nC6, $01, nF6, $02, nE6, $02
	smpsPSGAlterVol     $F8
	smpsPSGAlterVol     $FD

CasinoMidnight_Loop2F:
	dc.b	nRst, $30
	smpsLoop            $00, $08, CasinoMidnight_Loop2F
	smpsJump            CasinoMidnight_Jump03

; FM1 Data
CasinoMidnight_FM1:
	dc.b	nA1, $03, $03, $03, $03, nAb1, $03, nA1, $03, $03, $03
	smpsLoop            $00, $07, CasinoMidnight_FM1
	dc.b	nG0, $03, nG0, $03, nRst, nG0, $03, nG0, nG0, nG0, nG0

CasinoMidnight_Loop06:
	smpsCall            CasinoMidnight_Call02
	smpsLoop            $01, $3C, CasinoMidnight_Loop06
	dc.b	nAb1, $06, nRst, $18, nRst, $12

CasinoMidnight_Loop07:
	smpsCall            CasinoMidnight_Call02
	smpsLoop            $01, $1C, CasinoMidnight_Loop07
	dc.b	nAb1, $06, nRst, $18, nRst, $12

CasinoMidnight_Loop08:
	smpsCall            CasinoMidnight_Call02
	smpsLoop            $01, $1C, CasinoMidnight_Loop08
	dc.b	nAb1, $06, nRst, $18, nRst, $12

CasinoMidnight_Loop09:
	smpsCall            CasinoMidnight_Call02
	smpsLoop            $01, $3C, CasinoMidnight_Loop09
	dc.b	nAb1, $06, nRst, $18, nRst, $12
	smpsJump            CasinoMidnight_Loop06

CasinoMidnight_Call02:
	dc.b	nA1, $03, $03, nAb1, nA1
	smpsReturn

; DAC Data
CasinoMidnight_DAC:
	dc.b	nRst, $30, nRst, nRst, dKickS3, $0C, $0C, $0C, $0C

CasinoMidnight_Loop00:
	smpsCall            CasinoMidnight_Call00
	smpsLoop            $00, $08, CasinoMidnight_Loop00

CasinoMidnight_Loop01:
	smpsCall            CasinoMidnight_Call00
	smpsLoop            $00, $07, CasinoMidnight_Loop01
	dc.b	dKickS3, $06, nRst, $18, nRst, $12

CasinoMidnight_Loop02:
	smpsCall            CasinoMidnight_Call00
	smpsLoop            $00, $07, CasinoMidnight_Loop02
	dc.b	dKickS3, $06, nRst, $18, nRst, $12

CasinoMidnight_Loop03:
	smpsCall            CasinoMidnight_Call01
	smpsLoop            $00, $07, CasinoMidnight_Loop03
	dc.b	dKickS3, $06, nRst, $18, nRst, $12

CasinoMidnight_Loop04:
	smpsCall            CasinoMidnight_Call00
	smpsLoop            $00, $08, CasinoMidnight_Loop04

CasinoMidnight_Loop05:
	smpsCall            CasinoMidnight_Call00
	smpsLoop            $00, $07, CasinoMidnight_Loop05
	dc.b	dKickS3, $06, nRst, $18, nRst, $12
	smpsJump            CasinoMidnight_Loop00

CasinoMidnight_Call00:
	dc.b	dKickS3, $06, dKickS3, $87, $06, dKickS3, $03, dSnareS3, $03, dSnareS3, $06, dKickS3
	dc.b	$03, dKickS3, $87, $03, dKickS3, $06, dSnareS3, $03
	smpsReturn

CasinoMidnight_Call01:
	dc.b	dKickS3, $06, $87, $06, dKickS3, $03, dSnareS3, $06, $87, $03, dSnareS3, $06
	dc.b	dKickS3, $06, dSnareS3, $06, dKickS3, $03, $87, $03
	smpsReturn

CasinoMidnight_Voices:
;	Voice $00
;	$3B
;	$01, $00, $00, $01, 	$1C, $1C, $1C, $1C, 	$10, $0C, $06, $07
;	$12, $0B, $07, $0C, 	$12, $0F, $1C, $19, 	$20, $30, $20, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1C, $1C, $1C, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $06, $0C, $10
	smpsVcDecayRate2    $0C, $07, $0B, $12
	smpsVcDecayLevel    $01, $01, $00, $01
	smpsVcReleaseRate   $09, $0C, $0F, $02
	smpsVcTotalLevel    $00, $20, $30, $20

;	Voice $01
;	$03
;	$71, $30, $71, $30, 	$5B, $73, $76, $35, 	$01, $01, $01, $03
;	$08, $08, $08, $0E, 	$0F, $1F, $1F, $9F, 	$25, $09, $14, $82
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $03, $07
	smpsVcCoarseFreq    $00, $01, $00, $01
	smpsVcRateScale     $00, $01, $01, $01
	smpsVcAttackRate    $35, $36, $33, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $01, $01, $01
	smpsVcDecayRate2    $0E, $08, $08, $08
	smpsVcDecayLevel    $09, $01, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $02, $14, $09, $25

;	Voice $02
;	$3D
;	$00, $11, $11, $11, 	$1F, $0B, $0A, $09, 	$01, $05, $06, $04
;	$01, $00, $00, $00, 	$02, $08, $0B, $0B, 	$1F, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $01, $00
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $09, $0A, $0B, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $06, $05, $01
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0B, $0B, $08, $02
	smpsVcTotalLevel    $00, $00, $00, $1F

;	Voice $03
;	$2D
;	$51, $61, $56, $64, 	$2F, $2F, $2F, $2F, 	$0F, $0F, $0F, $0F
;	$02, $02, $02, $02, 	$3F, $3A, $3B, $3B, 	$6B, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $05, $06, $05
	smpsVcCoarseFreq    $04, $06, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $2F, $2F, $2F, $2F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0F, $0F
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $03, $03, $03, $03
	smpsVcReleaseRate   $0B, $0B, $0A, $0F
	smpsVcTotalLevel    $00, $00, $00, $6B

;	Voice $04
;	$04
;	$37, $31, $21, $31, 	$9F, $5F, $5B, $9B, 	$06, $0B, $04, $04
;	$04, $08, $03, $03, 	$37, $27, $24, $26, 	$33, $89, $20, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $02, $03, $03
	smpsVcCoarseFreq    $01, $01, $01, $07
	smpsVcRateScale     $02, $01, $01, $02
	smpsVcAttackRate    $1B, $1B, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $04, $0B, $06
	smpsVcDecayRate2    $03, $03, $08, $04
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $06, $04, $07, $07
	smpsVcTotalLevel    $00, $20, $09, $33

;	Voice $05
;	$10
;	$0F, $01, $00, $05, 	$0A, $0A, $0A, $0A, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$60, $10, $46, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $05, $00, $01, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0A, $0A, $0A, $0A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $46, $10, $60

;	Voice $06
;	$10
;	$0F, $01, $00, $05, 	$1F, $19, $1F, $1A, 	$00, $00, $01, $01
;	$00, $06, $03, $03, 	$1F, $1F, $16, $1C, 	$60, $10, $46, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $05, $00, $01, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1F, $19, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $00, $00
	smpsVcDecayRate2    $03, $03, $06, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0C, $06, $0F, $0F
	smpsVcTotalLevel    $00, $46, $10, $60

;	Voice $07
;	$26
;	$3A, $53, $02, $00, 	$9F, $5F, $57, $3E, 	$0E, $0F, $0F, $0F
;	$00, $01, $01, $01, 	$D9, $87, $87, $57, 	$28, $86, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $05, $03
	smpsVcCoarseFreq    $00, $02, $03, $0A
	smpsVcRateScale     $00, $01, $01, $02
	smpsVcAttackRate    $3E, $17, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0F, $0E
	smpsVcDecayRate2    $01, $01, $01, $00
	smpsVcDecayLevel    $05, $08, $08, $0D
	smpsVcReleaseRate   $07, $07, $07, $09
	smpsVcTotalLevel    $00, $00, $06, $28

;	Voice $08
;	$3A
;	$01, $02, $01, $01, 	$50, $10, $0E, $52, 	$04, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$48, $08, $08, $09, 	$1C, $45, $30, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $01, $00, $00, $01
	smpsVcAttackRate    $12, $0E, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $04
	smpsVcReleaseRate   $09, $08, $08, $08
	smpsVcTotalLevel    $00, $30, $45, $1C

;	Voice $09
;	$33
;	$33, $71, $31, $01, 	$9D, $96, $95, $D3, 	$17, $0F, $03, $1D
;	$02, $00, $00, $01, 	$24, $02, $15, $25, 	$1B, $19, $1B, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $03
	smpsVcCoarseFreq    $01, $01, $01, $03
	smpsVcRateScale     $03, $02, $02, $02
	smpsVcAttackRate    $13, $15, $16, $1D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1D, $03, $0F, $17
	smpsVcDecayRate2    $01, $00, $00, $02
	smpsVcDecayLevel    $02, $01, $00, $02
	smpsVcReleaseRate   $05, $05, $02, $04
	smpsVcTotalLevel    $00, $1B, $19, $1B

;	Voice $0A
;	$38
;	$77, $46, $76, $0A, 	$1F, $1F, $1F, $1F, 	$1C, $12, $11, $14
;	$00, $02, $02, $0A, 	$1C, $8F, $0F, $AF, 	$0F, $0E, $0A, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $04, $07
	smpsVcCoarseFreq    $0A, $06, $06, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $14, $11, $12, $1C
	smpsVcDecayRate2    $0A, $02, $02, $00
	smpsVcDecayLevel    $0A, $00, $08, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0C
	smpsVcTotalLevel    $00, $0A, $0E, $0F

