; Preface:
; The purpose of this program is to determine
; whether a number is even or odd and output
; the appropriate message as outlined in the
; task requirements for PART B of the assign-
; ment.
; Note that when dealing with binary numbers,
; to determine if a value is odd or even, we
; simply look @ the LSB (least signifcant bit)
; which is the end value at the very right pos-
; ition. If the LSB is 1, we conclude our value
; is odd and therefore a LSB value of 0 indica-
; -tes an even value.
      MOV R0, #12
      PUSH {R0}
      AND R0, R0, #1
      CMP R0, #1
      BEQ oddNum
 ;if not odd, has to be even (else case):
      B evenNum
oddNum:
      POP {R0}
      STR R0, .WriteSignedNum
      MOV R1, #oddMessage
      STR R1, .WriteString
      HALT
oddMessage:
      .ASCIZ "is an odd number."
evenNum:
      POP {R0}
      STR R0, .WriteSignedNum
      MOV R1, #evenMessage
      STR R1, .WriteString
      HALT
evenMessage:
       .ASCIZ "is an even number."
