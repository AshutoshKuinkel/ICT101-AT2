; Our logic for preceding TASK I:
      MOV R0, #0x35FF00 
      MOV R1, #0x100
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
; The following are instructions for TASK II
;of PART C. The following logic is explained in-
;line with comments rather than with a preface and
;a note on approach.
;R3 - our loop counter
      MOV R3, #1
;R2 - store MEM ADDRESS for inverse colours:
      MOV R2, #0x130
;R4 - store MEM ADDRESS of original colours:
      MOV R4, #0x100
;R5 - store BASE comparision colour:
      MOV R5, #0xFFFFFF
loop:
      CMP R3, #8        ; run 8 times for 8 table rows
      BGT end
      LDR R7, [R4]      ; load original colours into R7
      SUB R6, R5, R7    ; get inverse w/formula
      STR R6, [R2]      ; store in appropriate MEM address.
      ADD R4, R4, #4
      ADD R2, R2, #4
      ADD R3, R3, #1
      B loop
end:
      HALT
