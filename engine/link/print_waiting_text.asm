PrintWaitingText_orig: ; Name changed so color hack can hijack this
	hlcoord 3, 10
	ld b, 1
	ld c, 13
	ld a, [wIsInBattle]
	and a
	jr z, .trade
; battle
	call TextBoxBorder
	jr .border_done
.trade
	call CableClub_TextBoxBorder
.border_done
	hlcoord 4, 11
	ld de, WaitingText
	call PlaceString
	ld c, 50
	jp DelayFrames

WaitingText:
	db "BITTE WARTEN!@"
