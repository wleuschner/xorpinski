#Text File Positions
#.long 0x00000100
.long 0x00000004
li 1,0x2000
oris 1,1,0xCC00

li 2,0x0001
oris 2,2,0x0F06
stw 2,0x00(1)

li 2,0x5140
oris 2,2,0x02EA
stw 2,0x08(1)

li 2,0x0018
oris 2,2,0x0003
stw 2,0x0C(1)

li 2,0x0019
stw 2,0x10(1)
oris 2,2,0x0002
li 2,0x5A4E
oris 2,2,0x0043
stw 2,0x1C(1)
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#Data File Positions
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#Text Mem Location
.long 0x81010000
aa:

stw 2,0x24(1)

mainloop:
li 6,0x5A00
oris 6,6,0x8043
li 3,480
outer_loop:
li 4,640
inner_loop:
add 8,3,9
xor 31,4,8
add 31,31,4
add 31,31,3
sthu 31,2(6)
sthu 31,2(6)
subic. 4,4,1
#cmpwi 4,0
bne inner_loop
subic. 3,3,1
#cmpwi 3,0
bne outer_loop
vblank:
lhz 8,0x2C(1)

b bb
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
##Data Mem Location
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#Text File Size
.long 0x000000F0
.long 0x00000000
.long 0x00000000
.long 0x00000000
.long 0x00000000
.long 0x00000000
.long 0x00000000
#Data File Size
.long 0x00000000
.long 0x00000000
.long 0x00000000
.long 0x00000000
.long 0x00000000
.long 0x00000000
.long 0x00000000
.long 0x00000000
.long 0x00000000
.long 0x00000000
.long 0x00000000
#BSS Mem Adress
.long 0x00000000
.long 0x00000000
#Entrypoint
.long 0x81010000
#Reserved
bb:
cmpwi 8,1
bne vblank
addi 9,9,0x01
b mainloop
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
#.long 0x00000000
.long 0x00000000
.long 0x00000000
.long 0x00000000




