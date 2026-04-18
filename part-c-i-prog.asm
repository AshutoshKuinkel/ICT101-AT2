; Preface:
; The purpose of this program is to create
; a colour table in memory starting from
; the memory address 0x100 and going up to
; address 0x11c. As an example our in memo-
; ry colour table would look something like
; 0x100 ->  35 FF 00
; 0X104 -> FF B5 64
; To acheive this goal we simply utilise 
; R0 to store the colour hex value & R1 to
; store the appropriate memory address. We
; then store the colour value from R0 into
; the memory address currently held in R1.
; This is then repeated until we reach the
; end of the table.
; SET R0 TO COLOUR TABLE VALUE 1:
      MOV R0, #0x35FF00
; SET R1 TO APPRROPRIATE MEM ADDRESS:
      MOV R1, #0x100
;STORE CONTENTS OF R0 INTO MEM ADDRESS FROM
; R1:
      STR R0, [R1]
      MOV R0, #0xFFB564
      ADD R1, R1, #4
      STR R0, [R1]
      MOV R0, #0xD54195
      ADD R1, R1, #4
      STR R0, [R1]
      MOV R0, #0x10AC27
      ADD R1, R1, #4
      STR R0, [R1]
      MOV R0, #0x717172
      ADD R1, R1, #4
      STR R0, [R1]
      MOV R0, #0x07CFA3
      ADD R1, R1, #4
      STR R0, [R1]
      MOV R0, #0x0717A1
      ADD R1, R1, #4
      STR R0, [R1]
      MOV R0, #0xA760DE
      ADD R1, R1, #4
      STR R0, [R1]
      HALT
