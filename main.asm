.set macro 		            #To include an external file
.include "menuInicial.asm"
.include "clearScreen.asm"

.data
.text
main:
jal colors		
jal background_def

menu() 		        #To call a function located in another file - associated with the .set macro

.set nomacro 		#Marks the end of the external file inclusion
colors:
addi $18, $0, 0x00A8FF  # Light Blue
addi $19, $0, 0x00FF00  # Green
addi $20, $0, 0x000000	# Black
addi $21, $0, 0x4169E1	# Blue
addi $22, $0, 0xFFFF00	# Yellow
addi $23, $0, 0xCFBA95 	# Score color
addi $24, $0, 0xDC143C  # Crimson
addi $25, $0, 0xFF007F  # Pink
addi $26, $0, 0xFFA500  # Orange
addi $27, $0, 0xFF6600  # Dark Orange
addi $28, $0, 0xFF0000  # Red Game Over
addi $30, $0, 0xFFFFFF  # White

jr $31

background_def:
addi $9, $0, 8192	# Background size
add $10, $0, $9		# Initial position
lui $10, 0x1001		# Set the first pixel
jr $31

