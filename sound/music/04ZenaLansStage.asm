SunsetMagenta_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SunsetMagenta_Voices
	smpsHeaderChan      $05, $03
	smpsHeaderTempo     $01, $03

	smpsHeaderDAC       SunsetMagenta_DAC
	smpsHeaderFM        SunsetMagenta_FM1,	$00, $0D
	smpsHeaderFM        SunsetMagenta_FM2,	$00, $1A
	smpsHeaderFM        SunsetMagenta_FM3,	$00, $21
	smpsHeaderFM        SunsetMagenta_FM4,	$00, $1A
	smpsHeaderPSG       SunsetMagenta_PSG1,	$DC, $08, $00, $00
	smpsHeaderPSG       SunsetMagenta_PSG2,	$DC, $0B, $00, $00
	smpsHeaderPSG       SunsetMagenta_PSG3,	$00, $09, $00, $00

; FM1 Data
SunsetMagenta_FM1:
	smpsSetvoice        $00
	smpsAlterNote       $00
	dc.b	nRst, $12, nRst, $06

SunsetMagenta_Jump03:
	dc.b	nA1, $06, nA1, nA2, nA1, nA1, nA2, nA1, nA1, nRst, nA1, nA2
	dc.b	nA1, nA1, nA2, nA1, nBb1, nRst, nBb1, nBb2, nBb1, nBb1, nBb2, nBb1
	dc.b	nBb1, nRst, nBb1, nBb2, nBb1, nBb1, nBb2, nBb1, nEb1, nRst, nEb1, nEb2
	dc.b	nEb1, nEb1, nEb2, nEb1, nAb1, nRst, nAb1, nAb2, nAb1, nAb1, nAb2, nAb1
	dc.b	nCs1, nRst, nCs1, nCs2, nCs1, nCs1, nCs2, nCs1, nCs1, nRst, nCs1, nCs2
	dc.b	nCs1, nCs1, nCs2, nCs1, nC2, nRst, nC2, nC3, nC2, nC2, nC3, nC2
	dc.b	nG1, nRst, nG1, nG2, nG1, nG1, nG2, nG1, nBb1, nRst, nBb1, nBb2
	dc.b	nBb1, nBb1, nBb2, nBb1, nBb1, nRst, nBb1, nBb2, nBb1, nBb1, nBb2, nBb1
	dc.b	nF1, nRst, nF1, nF2, nF1, nF1, nF2, nF1, nA1, nRst, nA1, nA2
	dc.b	nA1, nA1, nA2, nA1, nEb2, nRst, nEb2, nEb3, nEb2, nEb2, nEb3, nEb2
	dc.b	nAb1, nRst, nAb1, nAb2, nAb1, nAb2, nAb1, nAb2, nE1, nRst, nE1, nE2
	dc.b	nE1, nE1, nE2, nE1, nEb1, nRst, nEb1, nEb2, nEb1, nEb1, nEb2, nEb1
	dc.b	nE1, nRst, nE1, nE2, nE1, nE1, nE2, nE1, nEb1, nRst, nEb1, nEb2
	dc.b	nEb1, nEb1, nEb2, nEb1, nD1, nRst, nD1, nD2, nD1, nD1, nD2, nD1
	dc.b	nD1, nRst, nD1, nD2, nD1, nD1, nD2, nD1, nCs1, nRst, nCs1, nCs2
	dc.b	nCs1, nCs1, nCs2, nCs1, nCs1, nRst, nCs1, nCs2, nCs1, nCs1, nCs2, nCs1
	dc.b	nE1, nRst, nE1, nE2, nE1, nE1, nE2, nE1, nEb1, nRst, nEb1, nEb2
	dc.b	nEb1, nEb1, nEb2, nEb1, nE1, nRst, nE1, nE2, nE1, nE1, nE2, nE1
	dc.b	nEb1, nRst, nEb1, nEb2, nEb1, nEb1, nEb2, nEb1, nD1, nRst, nD1, nD2
	dc.b	nD1, nD1, nD2, nD1, nF1, nRst, nF1, nF2, nF1, nF1, nF2, nF1
	dc.b	nBb1, nRst, nBb1, nBb2, nBb1, nBb1, nBb2, nBb1, nBb1, nRst, nBb1, nBb2
	dc.b	nBb1, nBb1, nBb2, nBb1, nRst, nCs2, $12, nC2, $06, nRst, nRst, nB1
	dc.b	$12, nBb1, $06, nRst, nAb1, nAb2, nAb1, nG2, nAb1, nFs2, nF2, nD2
	dc.b	$12, nCs2, $06, nRst, nRst, nC2, $12, nB1, $06, nRst, nAb1, nAb2
	dc.b	nAb1, nA2, nAb1, nAb2, nEb1, smpsNoAttack, nEb1, nEb1, nEb2, nEb1, nEb1, nEb2
	dc.b	nEb1, nBb1, smpsNoAttack, nBb1, nBb1, nBb2, nBb1, nBb1, nBb2, nBb1, nCs1, smpsNoAttack
	dc.b	nCs1, nCs1, nCs2, nCs1, nCs1, nCs2, nCs1, nCs1, smpsNoAttack, nCs1, nCs1, nCs2
	dc.b	nCs1, nCs1, nCs2, nCs1, nAb1, smpsNoAttack, nAb1, nAb1, nAb2, nAb1, nAb1, nAb2
	dc.b	nAb1, nG1, smpsNoAttack, nG1, nG1, nG2, nG1, nG1, nG2, nG1, nC2, smpsNoAttack
	dc.b	nC2, nC2, nC3, nC2, nC2, nC3, nC2, nC2, smpsNoAttack, nC2, nC2, nC3
	dc.b	nC2, nC2, nC3, nC2, nEb1, smpsNoAttack, nEb1, nEb1, nEb2, nEb1, nEb1, nEb2
	dc.b	nEb1, nBb1, smpsNoAttack, nBb1, nBb1, nBb2, nBb1, nBb1, nBb2, nBb1, nCs1, smpsNoAttack
	dc.b	nCs1, nCs1, nCs2, nCs1, nCs1, nCs2, nCs1, nCs1, smpsNoAttack, nCs1, nCs1, nCs2
	dc.b	nCs1, nCs2, nCs1, nCs2, nAb1, smpsNoAttack, nAb1, nAb1, nAb2, nAb1, nAb1, nAb2
	dc.b	nAb1, nBb1, smpsNoAttack, nBb1, nBb1, nBb2, nBb1, nBb1, nBb2, nBb1, nC2, smpsNoAttack
	dc.b	nC2, nC2, nC3, nC2, nC2, nC3, nC2, nC2, smpsNoAttack, nC2, nC2, nC3
	dc.b	nC2, nC2, nC3, nC3, nEb1, smpsNoAttack, nEb1, nEb1, nEb2, nEb1, nEb1, nEb2
	dc.b	nEb1, nBb1, smpsNoAttack, nBb1, nBb1, nBb2, nBb1, nBb1, nBb2, nBb1, nCs1, smpsNoAttack
	dc.b	nCs1, nCs1, nCs2, nCs1, nCs1, nCs2, nCs1, nCs1, smpsNoAttack, nCs1, nCs1, nCs2
	dc.b	nCs1, nCs1, nCs2, nCs1, nAb1, smpsNoAttack, nAb1, nAb1, nAb2, nAb1, nAb1, nAb2
	dc.b	nAb1, nG1, smpsNoAttack, nG1, nG1, nG2, nG1, nG1, nG2, nG1, nC2, smpsNoAttack
	dc.b	nC2, nC2, nC3, nC2, nC2, nC3, nC2, nC2, smpsNoAttack, nC2, nC2, nC3
	dc.b	nC2, nC2, nC3, nC2, nEb1, smpsNoAttack, nEb1, nEb1, nEb2, nEb1, nEb1, nEb2
	dc.b	nEb1, nBb1, smpsNoAttack, nBb1, nBb1, nBb2, nBb1, nBb1, nBb2, nBb1, nCs2, smpsNoAttack
	dc.b	nCs1, nCs1, nCs2, nCs1, nCs1, nCs2, nCs1, nCs1, smpsNoAttack, nCs1, nCs1, nCs2
	dc.b	nCs1, nCs1, nCs2, nCs1, nAb1, smpsNoAttack, nAb1, nAb1, nAb2, nAb1, nAb1, nAb2
	dc.b	nAb1, nBb1, smpsNoAttack, nBb1, nBb1, nBb2, nBb1, nBb1, nBb2, nBb1, nCs2, smpsNoAttack
	dc.b	nCs2, nCs2, nCs3, nCs2, nCs2, nCs3, nCs2, nB1, smpsNoAttack, nB1, nB1, nB2
	dc.b	nB1, nB1, nB2, nB1, nB1, smpsNoAttack, nB1, nB1, nB2, nB1, nB1, nB2
	dc.b	nB1, nRst, nRst, $30
	smpsJump            SunsetMagenta_Jump03

; FM4 Data
SunsetMagenta_FM4:
	smpsPan             panCenter, $00
	dc.b	nRst, $18

SunsetMagenta_Jump02:
	smpsSetvoice        $02
	dc.b	nC3, $30, smpsNoAttack, nC3, $18, nRst, $06, nC3, nRst, nD3, smpsNoAttack, nD3
	dc.b	$30, smpsNoAttack, nD3, nEb3, $30, smpsNoAttack, nEb3, $18, nRst, $06, nEb3, nRst
	dc.b	nCs3, $30, smpsNoAttack, nCs3, smpsNoAttack, nCs3, $06, nC3, $30, smpsNoAttack, nC3, $18
	dc.b	nRst, $06, nC3, nRst, nBb2, smpsNoAttack, nBb2, $30, smpsNoAttack, nBb2, nF3, $2A
	dc.b	nA3, $30, nEb3, nEb3, nRst, $06
	smpsSetvoice        $05
	dc.b	nE3, $2A, nEb3, $36, nE3, $30, nEb3, $2A, nD3, $30, nD3, nCs3
	dc.b	nCs3, $36, nE3, $2A, nEb3, $36, nE3, $30, nEb3, $2A, nD3, $30
	dc.b	nF3, nBb2, $66
	smpsSetvoice        $07
	dc.b	nAb4, $12, nG4, $06, nRst, nRst, nFs4, $12, nF4, $06, nRst, nRst
	dc.b	nRst, $24, nB4, $12, nBb4, $06, nRst, nRst, nA4, $12, nAb4, $06
	dc.b	nRst, nRst, nRst, $24
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	smpsCall            SunsetMagenta_Call05
	smpsCall            SunsetMagenta_Call06
	smpsPan             panCenter, $00
	smpsSetvoice        $05
	dc.b	nEb3, $06, smpsNoAttack, nEb3, $2A, nBb2, $36, nCs3, $48, nRst, $06, nCs3
	dc.b	nRst, nAb3, $06, smpsNoAttack, nAb3, $2A, nG3, $30, nF3, $30, nC3, $36
	dc.b	nEb3, $2A, nBb2, $36, nCs3, $48, nRst, $06, nCs3, nRst, nAb3, $06
	dc.b	smpsNoAttack, nAb3, $2A, nBb3, $30, nBb3, nB3, smpsNoAttack, $06, smpsNoAttack, $30, nRst
	dc.b	$30
	smpsJump            SunsetMagenta_Jump02

SunsetMagenta_Call05:
	smpsAlterNote       $00
	dc.b	nEb3, $30, nBb2, nCs3, $48, nRst, $06, nCs3, nRst, nC4, $30, nBb3
	dc.b	$30, nF3, smpsNoAttack, nC3, smpsNoAttack, $06
	smpsReturn

SunsetMagenta_Call06:
	dc.b	nEb3, $30, nBb2, nCs3, $48, nRst, $06, nCs3, nRst, nAb3, $30, nBb3
	dc.b	nF3, smpsNoAttack, nC3
	smpsReturn

; FM2 Data
SunsetMagenta_FM2:
	smpsAlterNote       $02
	smpsModSet          $0C, $01, $03, $08
	dc.b	nRst, $18

SunsetMagenta_Jump01:
	smpsSetvoice        $04
	smpsCall            SunsetMagenta_Call00
	dc.b	nRst, $12
	smpsSetvoice        $05
	dc.b	nG3, $2A, nG3, $36, nG3, $30, nG3, $2A, nFs3, $30, nF3, nF3
	dc.b	nE3, $36, nG3, $2A, nG3, $36, nG3, $30, nG3, $2A, nFs3, $30
	dc.b	nA3, nD3, $66
	smpsSetvoice        $07
	smpsPan             panRight, $00
	dc.b	nCs5, $12, nC5, $06, nRst, nRst, nB4, $12, nBb4, $06, nRst, nRst
	dc.b	nRst, $24, nE5, $12, nEb5, $06, nRst, nRst, nD5, $12, nCs5, $06
	dc.b	nRst, nRst, nRst, $24
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	smpsPan             panRight, $00
	smpsCall            SunsetMagenta_Call05
	smpsCall            SunsetMagenta_Call06
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nEb4, $06, smpsNoAttack
	smpsModSet          $0C, $01, $02, $08
	smpsCall            SunsetMagenta_Call03
	smpsCall            SunsetMagenta_Call04
	dc.b	smpsNoAttack, $30, nRst, $30
	smpsJump            SunsetMagenta_Jump01

SunsetMagenta_Call00:
	dc.b	nRst, $0C, nE4, $06, nG4, nB4, $04, nRst, $02, nG5, $0C, nF5
	dc.b	nE5, nD5, nG4, $12, nA4, nBb4, nF5, smpsNoAttack, nF5, smpsNoAttack, nF5, nRst
	dc.b	$06, nA4, $12, nBb4, nF5, nC5, $06, nEb5, nAb4, nRst, nC5, nF4
	dc.b	$0C, nG4, $12, nAb4, nCs5, $2A, nC5, $12, nRst, $0C, nE4, $06
	dc.b	nG4, nC5, $04, nRst, $02, nG5, $0C, nF5, nE5, nD5, nG4, $12
	dc.b	nA4, nBb4, nF5, smpsNoAttack, nF5, smpsNoAttack, nF5, nRst, $06, nA5, $12, nC5
	dc.b	nA5, $0C, nA5, $12, nD5, nA5, $0C, nA5, $12, nBb5, $24, smpsNoAttack
	dc.b	$18
	smpsReturn

SunsetMagenta_Call03:
	dc.b	nEb4, $0C, nCs5, $02, smpsNoAttack, nD5, $0A, nBb4, $12, nF5, $24, nEb5
	dc.b	$06, nD5, nC5, smpsNoAttack, nC5, $24, nRst, $06, nFs5, $02, smpsNoAttack, nG5
	dc.b	$0A, nF5, $0C, nC5, $06, nRst, nD5, nRst, nC5, smpsNoAttack, nC5, $1E
	dc.b	nC5, $03, smpsNoAttack, nD5, $03, nC5, $06, nBb4, $24, nAb4, $06, nG4
	dc.b	nF4, smpsNoAttack, nF4, $1E, nF4, $03, smpsNoAttack, nG4, $03, nF4, $06, nE4
	dc.b	$18, nC4, $18, nEb4, $06, smpsNoAttack
	smpsReturn

SunsetMagenta_Call04:
	dc.b	nEb4, $0C, nCs5, $02, smpsNoAttack, nD5, $0A, nBb4, $12, nF5, $24, nEb5
	dc.b	$06, nD5, nC5, smpsNoAttack, nC5, $24, nRst, $06, nA5, $02, smpsNoAttack, nBb5
	dc.b	$0A, nAb5, $0C, nEb5, $06, nRst, nF5, nRst, nC5, smpsNoAttack, nC5, $1E
	dc.b	nCs5, $02, smpsNoAttack, nD5, $04, nC5, $06, nD5, $24, nC5, $06, nD5
	dc.b	nE5, $02, smpsNoAttack, nF5, $04, smpsNoAttack, nF5, $1E, nEb5, $06, nF5, nA5
	dc.b	$03, smpsNoAttack, nBb5, $03, smpsNoAttack, $30
	smpsReturn

; FM3 Data
SunsetMagenta_FM3:
	smpsAlterNote       $FE
	smpsModSet          $0C, $01, $03, $08
	dc.b	nRst, $18

SunsetMagenta_Jump00:
	smpsSetvoice        $04
	dc.b	nRst, $0B
	smpsCall            SunsetMagenta_Call00
	dc.b	nRst, $07
	smpsSetvoice        $08
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nCs5, $03
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nFs5, $03
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nB5, $03
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nCs6, $03
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nB5, $03
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nAb5, $03
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nE5, $03
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsAlterVol        $F6
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nA4, $03
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nD5, $03
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nBb4, $03
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsAlterVol        $FF
	smpsPan             panCenter, $00
	dc.b	nD5, $03
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nF5, $03
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nBb5, $03
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsAlterVol        $FF
	smpsPan             panCenter, $00
	dc.b	nA5, $03
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nF5, $03
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nD5, $03
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsAlterVol        $FF
	smpsPan             panCenter, $00
	dc.b	nF5, $03
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nA5, $03
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nBb5, $03
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsAlterVol        $FF
	smpsPan             panCenter, $00
	dc.b	nD6, $03
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nF6, $03
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nA6, $03
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsAlterVol        $04
	smpsPan             panCenter, $00
	smpsSetvoice        $07
	smpsPan             panLeft, $00
	dc.b	nF4, $12, nE4, $06, nRst, nRst, nEb4, $12, nD4, $06, nRst, nRst
	dc.b	nRst, $24, nAb4, $12, nG4, $06, nRst, nRst, nFs4, $12, nF4, $06
	dc.b	nRst, nRst, nRst, $1E
	smpsPan             panCenter, $00
	smpsSetvoice        $06
	dc.b	nEb4, $06, smpsNoAttack
	smpsCall            SunsetMagenta_Call01
	smpsCall            SunsetMagenta_Call02
	dc.b	nEb4, $06, smpsNoAttack
	smpsCall            SunsetMagenta_Call01
	smpsCall            SunsetMagenta_Call02
	dc.b	nRst, $08
	smpsSetvoice        $01
	dc.b	nEb4, $06, smpsNoAttack
	smpsPan             panRight, $00
	smpsModSet          $0C, $01, $02, $08
	smpsCall            SunsetMagenta_Call03
	smpsCall            SunsetMagenta_Call04
	dc.b	smpsNoAttack, $30, nRst, $28
	smpsPan             panCenter, $00
	smpsJump            SunsetMagenta_Jump00

SunsetMagenta_Call01:
	dc.b	nEb4, $06, nG5, $03, nEb4, nAb5, nEb4, nBb5, nEb4, nC6, nEb4, nBb5
	dc.b	nEb4, nAb5, nEb4, nF4, $06, smpsNoAttack, nF4, nG5, $03, nF4, nA5, nF4
	dc.b	nBb5, nF4, nC6, nF4, nBb5, nF4, nA5, nF4, nF4, $06, smpsNoAttack, nF4
	dc.b	nG5, $03, nF4, nAb5, nF4, nBb5, nF4, nC6, nF4, nBb5, nF4, nAb5
	dc.b	nF4, nG5, nF4, nAb5, nF4, nBb5, nF4, nC6, nF4, nBb5, nF4, nAb5
	dc.b	nF4, nG5, nF4, nAb5, nF4, nAb4, $06, smpsNoAttack, nAb4, nG5, $03, nAb4
	dc.b	nAb5, nAb4, nBb5, nAb4, nC6, nAb4, nBb5, nAb4, nAb5, nAb4, nG4, $06
	dc.b	smpsNoAttack, nG4, nG5, $03, nG4, nAb5, nG4, nBb5, nG4
	smpsReturn

SunsetMagenta_Call02:
	dc.b	nC6, nG4, nBb5, nG4, nAb5, nG4, nC5, $06, smpsNoAttack, nC5, nG5, $03
	dc.b	nC5, nAb5, nC5, nBb5, nC5, nC6, nC5, nBb5, nC5, nAb5, nC5, nG4
	dc.b	$06, smpsNoAttack, nG4, nG5, $03, nG4, nAb5, nG4, nBb5, nG4, nC6, nG4
	dc.b	nBb5, nG4, nAb5, nG4
	smpsReturn

; PSG1 Data
SunsetMagenta_PSG1:
	dc.b	nRst, $18

SunsetMagenta_Jump04:
	smpsNoteFill        $03
	dc.b	nRst, $30, nRst, nRst, nRst, $06, nBb5, nA6, nBb5, nA6, nBb5, nA6
	dc.b	nBb5, nRst, $30, nRst, nRst, nRst, nRst, $30, nRst, nRst, nRst, $06
	dc.b	nBb5, nBb6, nBb5, nBb6, nBb5, nBb6, nBb5, nRst, $30, nRst, nRst, $2A
	dc.b	nAb5, $06, nFs6, nBb5, nAb6, nCs6, nBb6, nEb6, nCs6
	smpsNoteFill        $00
	dc.b	nE4, $06, smpsNoAttack
	smpsModSet          $0C, $01, $01, $03
	smpsPSGvoice        sTone_15
	smpsPSGAlterVol     $FC
	dc.b	nE4, $0C, nCs5, $02, smpsNoAttack, nD5, $0A, nB4, $12, nE5, $02, smpsNoAttack
	dc.b	nF5, $22, nEb5, $06, nD5, nD5, smpsNoAttack, nD5, $24, nRst, $06, nFs5
	dc.b	$02, smpsNoAttack, nG5, $0A, nF5, $0C, nBb4, $06, nRst, nC5, nRst, nD5
	dc.b	smpsNoAttack, nD5, $1E, nD5, $03, smpsNoAttack, nEb5, nD5, $06, nD5, $24, nD5
	dc.b	$03, smpsNoAttack, nEb5, nRst, $06, nCs5, smpsNoAttack, nCs5, $1E, nCs5, $03, smpsNoAttack
	dc.b	nEb5, nD5, $06, nCs5, $30, nRst, $06, nE4, $0C, nCs5, $02, smpsNoAttack
	dc.b	nD5, $0A, nB4, $12, nE5, $02, smpsNoAttack, nF5, $22, nEb5, $06, nD5
	dc.b	nD5, smpsNoAttack, nD5, $24, nRst, $06, nB5, $02, smpsNoAttack, nC6, $0A, nBb5
	dc.b	$0C, nBb4, $06, nRst, nC5, nRst, nD5, smpsNoAttack, nD5, $1E, nD5, $03
	dc.b	smpsNoAttack, nEb5, nD5, $06, nF5, $24, nG5, $06, nRst, nA5, $30, smpsNoAttack
	dc.b	nA5, $30, nRst, $06
	smpsPSGAlterVol     $03
	dc.b	nCs5, $12, nC5, $06, nRst, nRst, nB4, $12, nBb4, $06, nRst, nRst
	dc.b	nRst, $24, nE5, $12, nEb5, $06, nRst, nRst, nD5, $12, nCs5, $06
	dc.b	nRst, nRst, nRst, $1E
	smpsPSGAlterVol     $FD
	dc.b	nEb4, $06, smpsNoAttack
	smpsModSet          $0C, $01, $01, $05
	smpsCall            SunsetMagenta_Call03
	smpsCall            SunsetMagenta_Call07
	smpsPSGvoice        $00
	smpsPSGAlterVol     $06
	smpsCall            SunsetMagenta_Call01
	smpsCall            SunsetMagenta_Call02
	dc.b	nEb4, $06, smpsNoAttack
	smpsCall            SunsetMagenta_Call01
	dc.b	nC6, nG4, nBb5, nG4, nAb5, nG4, nF4, $06, smpsNoAttack, nF4, nG5, $03
	dc.b	nF4, nAb5, nF4, nBb5, nF4, nC6, nF4, nBb5, nF4, nAb5, nF4, nEb4
	dc.b	$06, smpsNoAttack, nEb4, nG5, $03, nEb4, nAb5, nEb4, nBb5, nEb4, nC6, nEb4
	dc.b	nBb5, nEb4, nAb5, nEb4, nEb4, $06, smpsNoAttack, nEb4, nG5, $03, nEb4, nAb5
	dc.b	nEb4, nBb5, nEb4
	smpsPSGAlterVol     $FF
	dc.b	nC6, nEb4, nBb5, nEb4, nAb5, nEb4, nG5, nEb4, nAb5, nEb4, nBb5, nEb4
	dc.b	nC6, nEb4, nBb5, nEb4
	smpsPSGAlterVol     $FF
	dc.b	nAb5, nEb4, nG5, nEb4, nAb5, nEb4, nBb5, nEb4
	smpsJump            SunsetMagenta_Jump04

SunsetMagenta_Call07:
	dc.b	nEb4, $0C, nCs5, $02, smpsNoAttack, nD5, $0A, nBb4, $12, nF5, $24, nEb5
	dc.b	$06, nD5, nC5, smpsNoAttack, nC5, $24, nRst, $06, nA5, $02, smpsNoAttack, nBb5
	dc.b	$0A, nAb5, $0C, nEb5, $06, nRst, nF5, nRst, nC5, smpsNoAttack, nC5, $1E
	dc.b	nC5, $03, smpsNoAttack, nD5, $03, nC5, $06, nBb4, $24, nAb4, $06, nG4
	dc.b	nF4, smpsNoAttack, nF4, $06, nE4, nC4, nB4, $02, smpsNoAttack, nC5, $2E, smpsNoAttack
	dc.b	$18, nRst, $06
	smpsReturn

; PSG2 Data
SunsetMagenta_PSG2:
	smpsAlterNote       $01
	dc.b	nRst, $18, nRst, $08
	smpsJump            SunsetMagenta_Jump04

; PSG3 Data
SunsetMagenta_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $18

SunsetMagenta_Loop02:
	smpsPSGvoice        sTone_01
	dc.b	nB6, $06, nB6, nB6, nB6, nB6, nB6, nB6
	smpsPSGvoice        sTone_16
	dc.b	nB6
	smpsPSGvoice        sTone_01
	dc.b	nB6, $06, nB6, nB6, nB6, nB6
	smpsPSGvoice        sTone_16
	dc.b	nB6
	smpsPSGvoice        sTone_01
	dc.b	nB6
	smpsPSGvoice        sTone_16
	dc.b	nB6
	smpsLoop            $00, $10, SunsetMagenta_Loop02
	smpsPSGvoice        sTone_01
	dc.b	nB6, nB6, nB6
	smpsPSGvoice        sTone_16
	dc.b	nB6, smpsNoAttack, nB6
	smpsPSGvoice        sTone_16
	dc.b	nB6, nRst
	smpsPSGvoice        sTone_01
	dc.b	nB6, nRst, nB6, nRst
	smpsPSGvoice        sTone_16
	dc.b	nB6, smpsNoAttack, nB6
	smpsPSGvoice        sTone_01
	dc.b	nB6
	smpsPSGvoice        sTone_16
	dc.b	nB6
	smpsPSGvoice        sTone_01
	dc.b	nB6
	smpsPSGvoice        sTone_16
	dc.b	nB6
	smpsPSGvoice        sTone_01
	dc.b	nB6
	smpsPSGvoice        sTone_01
	dc.b	nB6, nB6, nB6
	smpsPSGvoice        sTone_16
	dc.b	nB6, smpsNoAttack, nB6
	smpsPSGvoice        sTone_16
	dc.b	nB6
	smpsPSGvoice        sTone_01
	dc.b	nB6, nB6, nB6
	smpsPSGvoice        sTone_16
	dc.b	nB6, smpsNoAttack, nB6
	smpsPSGvoice        sTone_16
	dc.b	nB6, nRst
	smpsPSGvoice        sTone_01
	dc.b	nB6, nB6, nB6, nB6
	smpsPSGvoice        sTone_16
	dc.b	nB6, smpsNoAttack

SunsetMagenta_Loop03:
	dc.b	nB6, $06
	smpsPSGvoice        sTone_01
	dc.b	nB6, nB6, nB6, nB6, nB6, nB6, nB6
	smpsPSGvoice        sTone_01
	dc.b	nB6, $06, nB6, nB6, nB6, nB6, nB6, nB6
	smpsPSGvoice        sTone_16
	dc.b	nB6
	smpsPSGvoice        sTone_01
	smpsLoop            $00, $11, SunsetMagenta_Loop03
	smpsJump            SunsetMagenta_Loop02

; DAC Data
SunsetMagenta_DAC:
	dc.b	nRst, $18

SunsetMagenta_Loop00:
	dc.b	dKickS3, $06, nRst, dSnareS3, nRst, nRst, dKickS3, dSnareS3, nRst, nRst, dKickS3, dSnareS3
	dc.b	dKickS3, nRst, dKickS3, dSnareS3, nRst
	smpsLoop            $00, $10, SunsetMagenta_Loop00
	dc.b	dSnareS3, dKickS3, dKickS3, dSnareS3, nRst, dKickS3, dSnareS3, dKickS3, dKickS3, dSnareS3, nRst, dClap
	dc.b	dClap, $84, $84, $85, $85, dKickS3, dSnareS3, dKickS3, dKickS3, dSnareS3, dKickS3, dClap
	dc.b	dClap, $84, $84, $85, nRst, dSnareS3, nRst, dSnareS3, dSnareS3, dKickS3, dSnareS3, dKickS3
	dc.b	smpsNoAttack

SunsetMagenta_Loop01:
	dc.b	dKickS3, $06, nRst, dSnareS3, nRst, nRst, dKickS3, dSnareS3, nRst, nRst, dKickS3, dSnareS3
	dc.b	dKickS3, nRst, dKickS3, dSnareS3, nRst
	smpsLoop            $00, $10, SunsetMagenta_Loop01
	dc.b	dKickS3, $06, nRst, dSnareS3, nRst, nRst, dKickS3, dSnareS3, nRst, nRst, dSnareS3, dSnareS3
	dc.b	dSnareS3, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	smpsJump            SunsetMagenta_Loop00

SunsetMagenta_Voices:
;	Voice $00
;	$3D
;	$01, $01, $01, $01, 	$1F, $1F, $1F, $1F, 	$0D, $0A, $0A, $09
;	$00, $09, $09, $09, 	$1F, $4F, $2F, $3F, 	$1A, $94, $94, $94
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0A, $0A, $0D
	smpsVcDecayRate2    $09, $09, $09, $00
	smpsVcDecayLevel    $03, $02, $04, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $14, $14, $14, $1A

;	Voice $01
;	$3D
;	$01, $11, $11, $21, 	$13, $11, $11, $15, 	$06, $05, $04, $05
;	$06, $05, $06, $06, 	$6F, $8F, $5F, $7F, 	$1B, $85, $85, $85
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $01, $01, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $11, $11, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $05, $06
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $07, $05, $08, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $05, $05, $05, $1B

;	Voice $02
;	$04
;	$12, $52, $53, $13, 	$1F, $1D, $1F, $1D, 	$00, $00, $00, $00
;	$09, $03, $09, $03, 	$0F, $0F, $0F, $0F, 	$0C, $8C, $0C, $8C
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $05, $05, $01
	smpsVcCoarseFreq    $03, $03, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $03, $09, $03, $09
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0C, $0C, $0C, $0C

;	Voice $03
;	$04
;	$12, $54, $53, $16, 	$1F, $0E, $1F, $0E, 	$00, $00, $00, $00
;	$02, $03, $02, $03, 	$00, $07, $00, $07, 	$16, $92, $16, $92
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $05, $05, $01
	smpsVcCoarseFreq    $06, $03, $04, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $1F, $0E, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $03, $02, $03, $02
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $00, $07, $00
	smpsVcTotalLevel    $12, $16, $12, $16

;	Voice $04
;	$0A
;	$02, $01, $02, $21, 	$11, $12, $13, $15, 	$0A, $00, $00, $05
;	$04, $07, $08, $06, 	$6F, $0F, $0F, $7F, 	$13, $14, $24, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $13, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $00, $00, $0A
	smpsVcDecayRate2    $06, $08, $07, $04
	smpsVcDecayLevel    $07, $00, $00, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $24, $14, $13

;	Voice $05
;	$04
;	$12, $22, $23, $13, 	$1F, $1D, $1F, $1D, 	$00, $00, $00, $00
;	$09, $03, $09, $03, 	$0F, $0F, $0F, $0F, 	$0D, $88, $0D, $88
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $02, $02, $01
	smpsVcCoarseFreq    $03, $03, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $03, $09, $03, $09
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $08, $0D, $08, $0D

;	Voice $06
;	$3D
;	$01, $01, $01, $01, 	$13, $11, $11, $15, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$1B, $88, $88, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $11, $11, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $08, $08, $08, $1B

;	Voice $07
;	$3D
;	$01, $01, $01, $11, 	$13, $11, $11, $15, 	$06, $0B, $0B, $0B
;	$06, $05, $06, $06, 	$6F, $FF, $FF, $FF, 	$1B, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $11, $11, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $0B, $0B, $06
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $0F, $0F, $0F, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $1B

;	Voice $08
;	$3D
;	$02, $01, $01, $11, 	$1C, $18, $18, $1B, 	$06, $05, $04, $05
;	$06, $05, $06, $06, 	$6F, $8F, $5F, $7F, 	$18, $8C, $8C, $8C
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $18, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $05, $06
	smpsVcDecayRate2    $06, $06, $05, $06
	smpsVcDecayLevel    $07, $05, $08, $06
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0C, $0C, $0C, $18

